.class public final Lcom/google/googlex/glass/common/proto/Delete$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Delete.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Delete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/Delete$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private timelineItemId_:Ljava/lang/Object;

.field private userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            "Lcom/google/googlex/glass/common/proto/UserAction$Builder;",
            "Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 610
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    .line 371
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->maybeForceBuilderInitialization()V

    .line 372
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 610
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    .line 377
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->maybeForceBuilderInitialization()V

    .line 378
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Delete$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Delete$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->create()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1

    .prologue
    .line 385
    new-instance v0, Lcom/google/googlex/glass/common/proto/Delete$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUserActionIsMutable()V
    .locals 2

    .prologue
    .line 613
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    .line 615
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    .line 617
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Delete_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            "Lcom/google/googlex/glass/common/proto/UserAction$Builder;",
            "Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 911
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 917
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 911
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 383
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllUserAction(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Delete$Builder;"
        }
    .end annotation

    .prologue
    .line 789
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/UserAction;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 790
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->ensureUserActionIsMutable()V

    .line 791
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 793
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 797
    :goto_0
    return-object p0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(ILcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->ensureUserActionIsMutable()V

    .line 773
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 774
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 778
    :goto_0
    return-object p0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(ILcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 733
    if-nez p2, :cond_0

    .line 734
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 736
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->ensureUserActionIsMutable()V

    .line 737
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 738
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 742
    :goto_0
    return-object p0

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(Lcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->ensureUserActionIsMutable()V

    .line 755
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 760
    :goto_0
    return-object p0

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 712
    if-nez p1, :cond_0

    .line 713
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 715
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->ensureUserActionIsMutable()V

    .line 716
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 721
    :goto_0
    return-object p0

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserActionBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 2

    .prologue
    .line 881
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    return-object v0
.end method

.method public addUserActionBuilder(I)Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/Delete;
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v0

    .line 416
    .local v0, result:Lcom/google/googlex/glass/common/proto/Delete;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Delete;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 419
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->build()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Delete;
    .locals 5

    .prologue
    .line 423
    new-instance v1, Lcom/google/googlex/glass/common/proto/Delete;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Delete;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Delete$1;)V

    .line 424
    .local v1, result:Lcom/google/googlex/glass/common/proto/Delete;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    .line 425
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 426
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 427
    or-int/lit8 v2, v2, 0x1

    .line 429
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->timelineItemId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Delete;->timelineItemId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Delete;->access$502(Lcom/google/googlex/glass/common/proto/Delete;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_2

    .line 431
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 432
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    .line 433
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    .line 435
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Delete;->access$602(Lcom/google/googlex/glass/common/proto/Delete;Ljava/util/List;)Ljava/util/List;

    .line 439
    :goto_0
    #setter for: Lcom/google/googlex/glass/common/proto/Delete;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Delete;->access$702(Lcom/google/googlex/glass/common/proto/Delete;I)I

    .line 440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onBuilt()V

    .line 441
    return-object v1

    .line 437
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Delete;->access$602(Lcom/google/googlex/glass/common/proto/Delete;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1

    .prologue
    .line 389
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 390
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 391
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    .line 392
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    .line 394
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    .line 398
    :goto_0
    return-object p0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->clear()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->clear()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->clear()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->clear()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearTimelineItemId()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    .line 588
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Delete;->getTimelineItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 589
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 590
    return-object p0
.end method

.method public clearUserAction()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 808
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    .line 809
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    .line 810
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 814
    :goto_0
    return-object p0

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 2

    .prologue
    .line 402
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->create()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Delete;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->clone()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->clone()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->clone()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->clone()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->clone()Lcom/google/googlex/glass/common/proto/Delete$Builder;

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
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->clone()Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Delete_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getTimelineItemId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 533
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 534
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 539
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getTimelineItemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 551
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 552
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 553
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 556
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 559
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

.method public getUserAction(I)Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1
    .parameter "index"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    .line 661
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    goto :goto_0
.end method

.method public getUserActionBuilder(I)Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    return-object v0
.end method

.method public getUserActionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserActionCount()I
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 647
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getUserActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 633
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;

    .line 855
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;

    goto :goto_0
.end method

.method public getUserActionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 870
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasTimelineItemId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 522
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

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
    .line 364
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Delete_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Delete;

    const-class v2, Lcom/google/googlex/glass/common/proto/Delete$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Delete;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Delete;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 487
    :goto_0
    return-object p0

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Delete;->hasTimelineItemId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    .line 457
    #getter for: Lcom/google/googlex/glass/common/proto/Delete;->timelineItemId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Delete;->access$500(Lcom/google/googlex/glass/common/proto/Delete;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 458
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    .line 461
    #getter for: Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Delete;->access$600(Lcom/google/googlex/glass/common/proto/Delete;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    #getter for: Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Delete;->access$600(Lcom/google/googlex/glass/common/proto/Delete;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    .line 464
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    .line 469
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 486
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Delete;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 466
    :cond_3
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->ensureUserActionIsMutable()V

    .line 467
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Delete;->access$600(Lcom/google/googlex/glass/common/proto/Delete;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 472
    :cond_4
    #getter for: Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Delete;->access$600(Lcom/google/googlex/glass/common/proto/Delete;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 474
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 475
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 476
    #getter for: Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Delete;->access$600(Lcom/google/googlex/glass/common/proto/Delete;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    .line 477
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    .line 478
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Delete;->access$800()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 482
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/Delete;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Delete;->access$600(Lcom/google/googlex/glass/common/proto/Delete;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    const/4 v2, 0x0

    .line 500
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/Delete;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    if-eqz v2, :cond_0

    .line 506
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Delete;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

    .line 509
    :cond_0
    return-object p0

    .line 501
    :catch_0
    move-exception v1

    .line 502
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    move-object v2, v0

    .line 503
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 506
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Delete;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 445
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Delete;

    if-eqz v0, :cond_0

    .line 446
    check-cast p1, Lcom/google/googlex/glass/common/proto/Delete;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Delete;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object p0

    .line 449
    .end local p0
    :goto_0
    return-object p0

    .line 448
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
    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

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
    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

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
    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

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
    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Delete$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeUserAction(I)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 825
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->ensureUserActionIsMutable()V

    .line 826
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 827
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 831
    :goto_0
    return-object p0

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setTimelineItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 571
    if-nez p1, :cond_0

    .line 572
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 574
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    .line 575
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 576
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 577
    return-object p0
.end method

.method public setTimelineItemIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 601
    if-nez p1, :cond_0

    .line 602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 604
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->bitField0_:I

    .line 605
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 606
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 607
    return-object p0
.end method

.method public setUserAction(ILcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->ensureUserActionIsMutable()V

    .line 696
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 701
    :goto_0
    return-object p0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUserAction(ILcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/Delete$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 674
    if-nez p2, :cond_0

    .line 675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 677
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->ensureUserActionIsMutable()V

    .line 678
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Delete$Builder;->onChanged()V

    .line 683
    :goto_0
    return-object p0

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Delete$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
