.class public final Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "InsertReplaceOnConflict.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;",
            "Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

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
    .line 357
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 507
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 659
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    .line 358
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->maybeForceBuilderInitialization()V

    .line 359
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 507
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 659
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    .line 364
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->maybeForceBuilderInitialization()V

    .line 365
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->create()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1

    .prologue
    .line 373
    new-instance v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUserActionIsMutable()V
    .locals 2

    .prologue
    .line 662
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 663
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    .line 664
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 666
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getTimelineItemFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;",
            "Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 649
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

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
    .line 959
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 960
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 960
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 367
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->getTimelineItemFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 369
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 371
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllUserAction(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;"
        }
    .end annotation

    .prologue
    .line 838
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/UserAction;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 839
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->ensureUserActionIsMutable()V

    .line 840
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 842
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 846
    :goto_0
    return-object p0

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(ILcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->ensureUserActionIsMutable()V

    .line 822
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 823
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 827
    :goto_0
    return-object p0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(ILcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 782
    if-nez p2, :cond_0

    .line 783
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->ensureUserActionIsMutable()V

    .line 786
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 787
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 791
    :goto_0
    return-object p0

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(Lcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->ensureUserActionIsMutable()V

    .line 804
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 809
    :goto_0
    return-object p0

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 761
    if-nez p1, :cond_0

    .line 762
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 764
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->ensureUserActionIsMutable()V

    .line 765
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 770
    :goto_0
    return-object p0

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserActionBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 2

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 942
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v0

    .line 408
    .local v0, result:Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 411
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->build()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 5

    .prologue
    .line 415
    new-instance v1, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$1;)V

    .line 416
    .local v1, result:Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 417
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 418
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 419
    or-int/lit8 v2, v2, 0x1

    .line 421
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_2

    .line 422
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    #setter for: Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$502(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 426
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_3

    .line 427
    iget v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 428
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    .line 429
    iget v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 431
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$602(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;Ljava/util/List;)Ljava/util/List;

    .line 435
    :goto_1
    #setter for: Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$702(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;I)I

    .line 436
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onBuilt()V

    .line 437
    return-object v1

    .line 424
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineItem;

    #setter for: Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$502(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0

    .line 433
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$602(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1

    .prologue
    .line 377
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 378
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 379
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 383
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 384
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 385
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    .line 386
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 390
    :goto_1
    return-object p0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->clear()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->clear()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->clear()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->clear()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearTimelineItem()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 604
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 605
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 609
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 610
    return-object p0

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearUserAction()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 857
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    .line 858
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 859
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 863
    :goto_0
    return-object p0

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 2

    .prologue
    .line 394
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->create()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->clone()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->clone()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->clone()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->clone()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->clone()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

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
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->clone()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 531
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0
.end method

.method public getTimelineItemBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 621
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 622
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->getTimelineItemFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    return-object v0
.end method

.method public getTimelineItemOrBuilder()Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;

    .line 635
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0
.end method

.method public getUserAction(I)Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1
    .parameter "index"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    .line 710
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    goto :goto_0
.end method

.method public getUserActionBuilder(I)Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 954
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserActionCount()I
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 696
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 679
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;

    .line 904
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 916
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 919
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasTimelineItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 518
    iget v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

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
    .line 351
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    const-class v2, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

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

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 450
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 481
    :goto_0
    return-object p0

    .line 451
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->hasTimelineItem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    .line 454
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    .line 455
    #getter for: Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$600(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 457
    #getter for: Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$600(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    .line 458
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 463
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 480
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 460
    :cond_3
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->ensureUserActionIsMutable()V

    .line 461
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$600(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 466
    :cond_4
    #getter for: Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$600(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 467
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 468
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 469
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 470
    #getter for: Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$600(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    .line 471
    iget v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 472
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$800()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 476
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->access$600(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
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
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

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

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

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
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 441
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    if-eqz v0, :cond_0

    .line 442
    check-cast p1, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object p0

    .line 445
    .end local p0
    :goto_0
    return-object p0

    .line 444
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
    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

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
    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

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
    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

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
    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 581
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 583
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 588
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 592
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 593
    return-object p0

    .line 586
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public removeUserAction(I)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 874
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->ensureUserActionIsMutable()V

    .line 875
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 876
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 880
    :goto_0
    return-object p0

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 564
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 565
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 569
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 570
    return-object p0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 543
    if-nez p1, :cond_0

    .line 544
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 546
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 547
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 551
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->bitField0_:I

    .line 552
    return-object p0

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->timelineItemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setUserAction(ILcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 744
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->ensureUserActionIsMutable()V

    .line 745
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 750
    :goto_0
    return-object p0

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUserAction(ILcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 723
    if-nez p2, :cond_0

    .line 724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 726
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->ensureUserActionIsMutable()V

    .line 727
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 728
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->onChanged()V

    .line 732
    :goto_0
    return-object p0

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
