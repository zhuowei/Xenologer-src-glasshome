.class public final Lcom/google/googlex/glass/common/proto/Notification$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Notification.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/NotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/Notification$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/NotificationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private callbackUrl_:Ljava/lang/Object;

.field private collection_:Ljava/lang/Object;

.field private itemId_:Ljava/lang/Object;

.field private menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Builder;",
            "Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private menuAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

.field private source_:Ljava/lang/Object;

.field private timestamp_:J

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

.field private userId_:J

.field private userToken_:Ljava/lang/Object;

.field private verifyToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1411
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->source_:Ljava/lang/Object;

    .line 1511
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 1562
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1892
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 2222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 945
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->maybeForceBuilderInitialization()V

    .line 946
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 950
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1411
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->source_:Ljava/lang/Object;

    .line 1511
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 1562
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1892
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 2222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 951
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->maybeForceBuilderInitialization()V

    .line 952
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Notification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 927
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->create()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 960
    new-instance v0, Lcom/google/googlex/glass/common/proto/Notification$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMenuActionIsMutable()V
    .locals 2

    .prologue
    .line 1565
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1566
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1567
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1569
    :cond_0
    return-void
.end method

.method private ensureUserActionIsMutable()V
    .locals 2

    .prologue
    .line 1895
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 1896
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 1897
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1899
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 933
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Notification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMenuActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Builder;",
            "Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1881
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v3, 0x10

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1889
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1881
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 2210
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2211
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 2219
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2211
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 954
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getMenuActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 956
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 958
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllMenuAction(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Notification$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1751
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/MenuItem;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1752
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1753
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1755
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1759
    :goto_0
    return-object p0

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllUserAction(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Notification$Builder;"
        }
    .end annotation

    .prologue
    .line 2081
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/UserAction;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2082
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 2083
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2085
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2089
    :goto_0
    return-object p0

    .line 2087
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMenuAction(ILcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1733
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1734
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1735
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1739
    :goto_0
    return-object p0

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMenuAction(ILcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1692
    if-nez p2, :cond_0

    .line 1693
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1695
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1696
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1697
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1701
    :goto_0
    return-object p0

    .line 1699
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMenuAction(Lcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1714
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1715
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1716
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1720
    :goto_0
    return-object p0

    .line 1718
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMenuAction(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1670
    if-nez p1, :cond_0

    .line 1671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1673
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1674
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1675
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1679
    :goto_0
    return-object p0

    .line 1677
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMenuActionBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1849
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getMenuActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    return-object v0
.end method

.method public addMenuActionBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1862
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getMenuActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    return-object v0
.end method

.method public addUserAction(ILcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2063
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 2064
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2065
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2069
    :goto_0
    return-object p0

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(ILcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2022
    if-nez p2, :cond_0

    .line 2023
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2025
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 2026
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2027
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2031
    :goto_0
    return-object p0

    .line 2029
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(Lcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2044
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 2045
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2046
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2050
    :goto_0
    return-object p0

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2000
    if-nez p1, :cond_0

    .line 2001
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2003
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 2004
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2005
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2009
    :goto_0
    return-object p0

    .line 2007
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserActionBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 2

    .prologue
    .line 2179
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 2192
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/Notification;
    .locals 2

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    .line 1013
    .local v0, result:Lcom/google/googlex/glass/common/proto/Notification;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1014
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1016
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->build()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->build()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Notification;
    .locals 5

    .prologue
    .line 1020
    new-instance v1, Lcom/google/googlex/glass/common/proto/Notification;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Notification;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Notification$1;)V

    .line 1021
    .local v1, result:Lcom/google/googlex/glass/common/proto/Notification;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1022
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1023
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1024
    or-int/lit8 v2, v2, 0x1

    .line 1026
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$502(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1028
    or-int/lit8 v2, v2, 0x2

    .line 1030
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$602(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1032
    or-int/lit8 v2, v2, 0x4

    .line 1034
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->source_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->source_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$702(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1036
    or-int/lit8 v2, v2, 0x8

    .line 1038
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$802(Lcom/google/googlex/glass/common/proto/Notification;Lcom/google/googlex/glass/common/proto/Subscription$Operation;)Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 1039
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_b

    .line 1040
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1041
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1042
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1044
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$902(Lcom/google/googlex/glass/common/proto/Notification;Ljava/util/List;)Ljava/util/List;

    .line 1048
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_c

    .line 1049
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1050
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 1051
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1053
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$1002(Lcom/google/googlex/glass/common/proto/Notification;Ljava/util/List;)Ljava/util/List;

    .line 1057
    :goto_1
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1058
    or-int/lit8 v2, v2, 0x10

    .line 1060
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$1102(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1062
    or-int/lit8 v2, v2, 0x20

    .line 1064
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$1202(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1066
    or-int/lit8 v2, v2, 0x40

    .line 1068
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$1302(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1070
    or-int/lit16 v2, v2, 0x80

    .line 1072
    :cond_9
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userId_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->userId_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Notification;->access$1402(Lcom/google/googlex/glass/common/proto/Notification;J)J

    .line 1073
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1074
    or-int/lit16 v2, v2, 0x100

    .line 1076
    :cond_a
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->timestamp_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Notification;->access$1502(Lcom/google/googlex/glass/common/proto/Notification;J)J

    .line 1077
    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Notification;->access$1602(Lcom/google/googlex/glass/common/proto/Notification;I)I

    .line 1078
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onBuilt()V

    .line 1079
    return-object v1

    .line 1046
    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$902(Lcom/google/googlex/glass/common/proto/Notification;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1055
    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$1002(Lcom/google/googlex/glass/common/proto/Notification;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 964
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 965
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 966
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 967
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 968
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->source_:Ljava/lang/Object;

    .line 970
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 971
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 972
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 973
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 974
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 975
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 979
    :goto_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 980
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 981
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 985
    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 986
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 987
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 988
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 989
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 990
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 991
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userId_:J

    .line 992
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 993
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->timestamp_:J

    .line 994
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 995
    return-object p0

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clear()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clear()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clear()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clear()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCallbackUrl()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 2516
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2517
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->getCallbackUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2518
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2519
    return-object p0
.end method

.method public clearCollection()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 1288
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1289
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->getCollection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1290
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1291
    return-object p0
.end method

.method public clearItemId()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 1388
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1389
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->getItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1390
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1391
    return-object p0
.end method

.method public clearMenuAction()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1771
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1772
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1773
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1777
    :goto_0
    return-object p0

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearOperation()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 1556
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1557
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 1558
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1559
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 1488
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1489
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->source_:Ljava/lang/Object;

    .line 1490
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1491
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2

    .prologue
    .line 2642
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2643
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->timestamp_:J

    .line 2644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2645
    return-object p0
.end method

.method public clearUserAction()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 2102
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2103
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2107
    :goto_0
    return-object p0

    .line 2105
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearUserId()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2

    .prologue
    .line 2586
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2587
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userId_:J

    .line 2588
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2589
    return-object p0
.end method

.method public clearUserToken()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 2410
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2411
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->getUserToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2412
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2413
    return-object p0
.end method

.method public clearVerifyToken()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 2304
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2305
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->getVerifyToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2306
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2307
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2

    .prologue
    .line 999
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->create()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;

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
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2455
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2456
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 2457
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2459
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2460
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2461
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2465
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

.method public getCallbackUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2478
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2479
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2480
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2483
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2486
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

.method public getCollection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1230
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1231
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1232
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1234
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1235
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1236
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1240
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

.method public getCollectionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1252
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1253
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1254
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1257
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1260
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1

    .prologue
    .line 1008
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1004
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Notification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1331
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1332
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1334
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1335
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1336
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1340
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

.method public getItemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1352
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1353
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1354
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1357
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1360
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

.method public getMenuAction(I)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 1616
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    goto :goto_0
.end method

.method public getMenuActionBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1807
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getMenuActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    return-object v0
.end method

.method public getMenuActionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1875
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getMenuActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMenuActionCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1601
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getMenuActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1586
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMenuActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;

    .line 1821
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;

    goto :goto_0
.end method

.method public getMenuActionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1837
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getOperation()Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1430
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->source_:Ljava/lang/Object;

    .line 1431
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1432
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1434
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1435
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1436
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->source_:Ljava/lang/Object;

    .line 1440
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

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->source_:Ljava/lang/Object;

    .line 1453
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1454
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1457
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->source_:Ljava/lang/Object;

    .line 1460
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

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 2615
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getUserAction(I)Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1
    .parameter "index"

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    .line 1946
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    goto :goto_0
.end method

.method public getUserActionBuilder(I)Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2137
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 2205
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserActionCount()I
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1931
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 1913
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1916
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2150
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;

    .line 2151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 2164
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 2561
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userId_:J

    return-wide v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2349
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2350
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 2351
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2353
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2354
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2355
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2359
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

.method public getUserTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2372
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2373
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2374
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2377
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2380
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

.method public getVerifyToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2243
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2244
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 2245
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2247
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2248
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2249
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2253
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

.method public getVerifyTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2266
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2267
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2268
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2271
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2274
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

.method public hasCallbackUrl()Z
    .locals 2

    .prologue
    .line 2444
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCollection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1220
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemId()Z
    .locals 2

    .prologue
    .line 1320
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

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

.method public hasOperation()Z
    .locals 2

    .prologue
    .line 1520
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 2

    .prologue
    .line 1420
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 2603
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserId()Z
    .locals 2

    .prologue
    .line 2550
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserToken()Z
    .locals 2

    .prologue
    .line 2338
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVerifyToken()Z
    .locals 2

    .prologue
    .line 2232
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

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
    .line 938
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Notification_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Notification;

    const-class v2, Lcom/google/googlex/glass/common/proto/Notification$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1189
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 1092
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1185
    :goto_0
    return-object p0

    .line 1093
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasCollection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1095
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$500(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1096
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1098
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasItemId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1099
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1100
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$600(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1101
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1103
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1104
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1105
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->source_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$700(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->source_:Ljava/lang/Object;

    .line 1106
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1108
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasOperation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1109
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->getOperation()Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->setOperation(Lcom/google/googlex/glass/common/proto/Subscription$Operation;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    .line 1111
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 1112
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1113
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1114
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1115
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1120
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1137
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_11

    .line 1138
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$1000(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1139
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1140
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$1000(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 1141
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1146
    :goto_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1163
    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasVerifyToken()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1164
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1165
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$1100(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1166
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1168
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasUserToken()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1169
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1170
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$1200(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 1171
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1173
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasCallbackUrl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1174
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1175
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$1300(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1178
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1179
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->setUserId(J)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    .line 1181
    :cond_a
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1182
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    .line 1184
    :cond_b
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1117
    :cond_c
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1118
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1123
    :cond_d
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1124
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1125
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1126
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1127
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1128
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1129
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getMenuActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_e
    move-object v0, v1

    goto :goto_5

    .line 1133
    :cond_f
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1143
    :cond_10
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 1144
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$1000(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 1149
    :cond_11
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$1000(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1150
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1151
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1152
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1153
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$1000(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 1154
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1155
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_12
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 1159
    :cond_13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$1000(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1196
    const/4 v2, 0x0

    .line 1198
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/Notification;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    if-eqz v2, :cond_0

    .line 1204
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    .line 1207
    :cond_0
    return-object p0

    .line 1199
    :catch_0
    move-exception v1

    .line 1200
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    move-object v2, v0

    .line 1201
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1203
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1204
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1083
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Notification;

    if-eqz v0, :cond_0

    .line 1084
    check-cast p1, Lcom/google/googlex/glass/common/proto/Notification;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object p0

    .line 1087
    .end local p0
    :goto_0
    return-object p0

    .line 1086
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
    .line 927
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 927
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

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
    .line 927
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

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
    .line 927
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 927
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

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
    .line 927
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeMenuAction(I)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1789
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1790
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1791
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1795
    :goto_0
    return-object p0

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeUserAction(I)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2119
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 2120
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2121
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2125
    :goto_0
    return-object p0

    .line 2123
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setCallbackUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2499
    if-nez p1, :cond_0

    .line 2500
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2502
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2503
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2504
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2505
    return-object p0
.end method

.method public setCallbackUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2531
    if-nez p1, :cond_0

    .line 2532
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2534
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2535
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2536
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2537
    return-object p0
.end method

.method public setCollection(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1272
    if-nez p1, :cond_0

    .line 1273
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1275
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1276
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1277
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1278
    return-object p0
.end method

.method public setCollectionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1302
    if-nez p1, :cond_0

    .line 1303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1305
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1306
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1307
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1308
    return-object p0
.end method

.method public setItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1372
    if-nez p1, :cond_0

    .line 1373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1375
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1376
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1377
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1378
    return-object p0
.end method

.method public setItemIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1402
    if-nez p1, :cond_0

    .line 1403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1405
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1406
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1407
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1408
    return-object p0
.end method

.method public setMenuAction(ILcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1652
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1653
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1654
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1658
    :goto_0
    return-object p0

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setMenuAction(ILcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1630
    if-nez p2, :cond_0

    .line 1631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1633
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1634
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1635
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1639
    :goto_0
    return-object p0

    .line 1637
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setOperation(Lcom/google/googlex/glass/common/proto/Subscription$Operation;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1540
    if-nez p1, :cond_0

    .line 1541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1543
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1544
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 1545
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1546
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1472
    if-nez p1, :cond_0

    .line 1473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1475
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1476
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->source_:Ljava/lang/Object;

    .line 1477
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1478
    return-object p0
.end method

.method public setSourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1502
    if-nez p1, :cond_0

    .line 1503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1505
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1506
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->source_:Ljava/lang/Object;

    .line 1507
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1508
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2627
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2628
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->timestamp_:J

    .line 2629
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2630
    return-object p0
.end method

.method public setUserAction(ILcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1982
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 1983
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1984
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1988
    :goto_0
    return-object p0

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUserAction(ILcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1960
    if-nez p2, :cond_0

    .line 1961
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1963
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 1964
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1965
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1969
    :goto_0
    return-object p0

    .line 1967
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUserId(J)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2572
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2573
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userId_:J

    .line 2574
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2575
    return-object p0
.end method

.method public setUserToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2393
    if-nez p1, :cond_0

    .line 2394
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2396
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2397
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2399
    return-object p0
.end method

.method public setUserTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2425
    if-nez p1, :cond_0

    .line 2426
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2428
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2429
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2430
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2431
    return-object p0
.end method

.method public setVerifyToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2287
    if-nez p1, :cond_0

    .line 2288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2290
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2291
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2293
    return-object p0
.end method

.method public setVerifyTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2319
    if-nez p1, :cond_0

    .line 2320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2322
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2323
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2324
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2325
    return-object p0
.end method
