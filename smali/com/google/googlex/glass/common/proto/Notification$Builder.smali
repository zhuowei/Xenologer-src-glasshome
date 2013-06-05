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
    .line 871
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1224
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1321
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 1372
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 2032
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2135
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2238
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 872
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->maybeForceBuilderInitialization()V

    .line 873
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 877
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1224
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1321
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 1372
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 2032
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2135
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2238
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 878
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->maybeForceBuilderInitialization()V

    .line 879
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Notification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 854
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->create()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 887
    new-instance v0, Lcom/google/googlex/glass/common/proto/Notification$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMenuActionIsMutable()V
    .locals 2

    .prologue
    .line 1375
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1377
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1379
    :cond_0
    return-void
.end method

.method private ensureUserActionIsMutable()V
    .locals 2

    .prologue
    .line 1705
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1706
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 1707
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1709
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 860
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
    .line 1690
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1691
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1691
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
    .line 2020
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2021
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

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

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 2029
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2021
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 881
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getMenuActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 883
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 885
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
    .line 1561
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/MenuItem;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1562
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1563
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1565
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1569
    :goto_0
    return-object p0

    .line 1567
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
    .line 1891
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/UserAction;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1892
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 1893
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1895
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1899
    :goto_0
    return-object p0

    .line 1897
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
    .line 1542
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1543
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1544
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1545
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1549
    :goto_0
    return-object p0

    .line 1547
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
    .line 1501
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1502
    if-nez p2, :cond_0

    .line 1503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1505
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1506
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1507
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1511
    :goto_0
    return-object p0

    .line 1509
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
    .line 1523
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1524
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1525
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1530
    :goto_0
    return-object p0

    .line 1528
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
    .line 1479
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1480
    if-nez p1, :cond_0

    .line 1481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1483
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1484
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1489
    :goto_0
    return-object p0

    .line 1487
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
    .line 1659
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
    .line 1672
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
    .line 1872
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1873
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 1874
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1875
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1879
    :goto_0
    return-object p0

    .line 1877
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
    .line 1831
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1832
    if-nez p2, :cond_0

    .line 1833
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1835
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 1836
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1837
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1841
    :goto_0
    return-object p0

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(Lcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1854
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 1855
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1856
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1860
    :goto_0
    return-object p0

    .line 1858
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
    .line 1809
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1810
    if-nez p1, :cond_0

    .line 1811
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1813
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 1814
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1819
    :goto_0
    return-object p0

    .line 1817
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserActionBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 2

    .prologue
    .line 1989
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
    .line 2002
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
    .line 937
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    .line 938
    .local v0, result:Lcom/google/googlex/glass/common/proto/Notification;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 939
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 941
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->build()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->build()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Notification;
    .locals 5

    .prologue
    .line 945
    new-instance v1, Lcom/google/googlex/glass/common/proto/Notification;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Notification;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Notification$1;)V

    .line 946
    .local v1, result:Lcom/google/googlex/glass/common/proto/Notification;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 947
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 948
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 949
    or-int/lit8 v2, v2, 0x1

    .line 951
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$502(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 953
    or-int/lit8 v2, v2, 0x2

    .line 955
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$602(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 957
    or-int/lit8 v2, v2, 0x4

    .line 959
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$702(Lcom/google/googlex/glass/common/proto/Notification;Lcom/google/googlex/glass/common/proto/Subscription$Operation;)Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 960
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_a

    .line 961
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 962
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 963
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 965
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$802(Lcom/google/googlex/glass/common/proto/Notification;Ljava/util/List;)Ljava/util/List;

    .line 969
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_b

    .line 970
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 971
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 972
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 974
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$902(Lcom/google/googlex/glass/common/proto/Notification;Ljava/util/List;)Ljava/util/List;

    .line 978
    :goto_1
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 979
    or-int/lit8 v2, v2, 0x8

    .line 981
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$1002(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 983
    or-int/lit8 v2, v2, 0x10

    .line 985
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$1102(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 987
    or-int/lit8 v2, v2, 0x20

    .line 989
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$1202(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 991
    or-int/lit8 v2, v2, 0x40

    .line 993
    :cond_8
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userId_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->userId_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Notification;->access$1302(Lcom/google/googlex/glass/common/proto/Notification;J)J

    .line 994
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 995
    or-int/lit16 v2, v2, 0x80

    .line 997
    :cond_9
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->timestamp_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Notification;->access$1402(Lcom/google/googlex/glass/common/proto/Notification;J)J

    .line 998
    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Notification;->access$1502(Lcom/google/googlex/glass/common/proto/Notification;I)I

    .line 999
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onBuilt()V

    .line 1000
    return-object v1

    .line 967
    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$802(Lcom/google/googlex/glass/common/proto/Notification;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 976
    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Notification;->access$902(Lcom/google/googlex/glass/common/proto/Notification;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 891
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 892
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 893
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 894
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 895
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 896
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 897
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 898
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 899
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 900
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 904
    :goto_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 906
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 910
    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 911
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 912
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 913
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 914
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 915
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 916
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userId_:J

    .line 917
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 918
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->timestamp_:J

    .line 919
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 920
    return-object p0

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clear()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clear()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clear()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clear()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCallbackUrl()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 2317
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2318
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->getCallbackUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2319
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2320
    return-object p0
.end method

.method public clearCollection()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 1201
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1202
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->getCollection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1203
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1204
    return-object p0
.end method

.method public clearItemId()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 1298
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1299
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->getItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1300
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1301
    return-object p0
.end method

.method public clearMenuAction()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1581
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1582
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1583
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1587
    :goto_0
    return-object p0

    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearOperation()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 1366
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1367
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 1368
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1369
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2

    .prologue
    .line 2443
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2444
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->timestamp_:J

    .line 2445
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2446
    return-object p0
.end method

.method public clearUserAction()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1911
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 1912
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1913
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1917
    :goto_0
    return-object p0

    .line 1915
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearUserId()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2

    .prologue
    .line 2387
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2388
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userId_:J

    .line 2389
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2390
    return-object p0
.end method

.method public clearUserToken()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 2214
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2215
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->getUserToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2216
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2217
    return-object p0
.end method

.method public clearVerifyToken()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 2111
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2112
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification;->getVerifyToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2113
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2114
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2

    .prologue
    .line 924
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
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 854
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
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->clone()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2260
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2261
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2263
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2266
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

.method public getCallbackUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2279
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2280
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2281
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2284
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2287
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
    .locals 3

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1147
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1148
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1150
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1153
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

.method public getCollectionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1165
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1166
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1167
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1170
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1173
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
    .line 933
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 929
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Notification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1244
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1245
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1247
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1250
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

.method public getItemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1263
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1264
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1267
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1270
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
    .line 1423
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 1426
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
    .line 1617
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
    .line 1685
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
    .line 1408
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1411
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
    .line 1393
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1396
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
    .line 1629
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;

    .line 1631
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
    .line 1644
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1647
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
    .line 1340
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 2416
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getUserAction(I)Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1
    .parameter "index"

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    .line 1756
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
    .line 1947
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
    .line 2015
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserActionCount()I
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1741
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
    .line 1723
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1726
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
    .line 1959
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1960
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;

    .line 1961
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
    .line 1974
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1977
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
    .line 2362
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userId_:J

    return-wide v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2157
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2158
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2160
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2163
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

.method public getUserTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2176
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2177
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2178
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2181
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2184
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
    .locals 3

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2054
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2055
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2057
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2060
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

.method public getVerifyTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2073
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2074
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2075
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2078
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2081
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
    .line 2248
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

.method public hasCollection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1136
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
    .line 1233
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
    .line 1330
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
    .line 2404
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

.method public hasUserId()Z
    .locals 2

    .prologue
    .line 2351
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

.method public hasUserToken()Z
    .locals 2

    .prologue
    .line 2145
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

.method public hasVerifyToken()Z
    .locals 2

    .prologue
    .line 2042
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

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
    .line 865
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
    .line 1105
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 1013
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1101
    :goto_0
    return-object p0

    .line 1014
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasCollection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1016
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$500(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1017
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1019
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasItemId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1020
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1021
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$600(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1022
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1024
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasOperation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1025
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->getOperation()Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->setOperation(Lcom/google/googlex/glass/common/proto/Subscription$Operation;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    .line 1027
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_c

    .line 1028
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$800(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1029
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1030
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$800(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1031
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1036
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1053
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    .line 1054
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1055
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1056
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 1057
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1062
    :goto_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1079
    :cond_5
    :goto_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasVerifyToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1080
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1081
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$1000(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1082
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1084
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasUserToken()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1085
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1086
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$1100(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 1087
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1089
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasCallbackUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1090
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1091
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$1200(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1092
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1094
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1095
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->setUserId(J)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    .line 1097
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1098
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    .line 1100
    :cond_a
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1033
    :cond_b
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1034
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$800(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1039
    :cond_c
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$800(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1040
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1041
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1042
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1043
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$800(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    .line 1044
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1045
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getMenuActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_d
    move-object v0, v1

    goto :goto_5

    .line 1049
    :cond_e
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$800(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1059
    :cond_f
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 1060
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 1065
    :cond_10
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1066
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1067
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1068
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1069
    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    .line 1070
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1071
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_11
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 1075
    :cond_12
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Notification;->access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;

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
    .line 1112
    const/4 v2, 0x0

    .line 1114
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

    .line 1119
    if-eqz v2, :cond_0

    .line 1120
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    .line 1123
    :cond_0
    return-object p0

    .line 1115
    :catch_0
    move-exception v1

    .line 1116
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    move-object v2, v0

    .line 1117
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1119
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1120
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1004
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Notification;

    if-eqz v0, :cond_0

    .line 1005
    check-cast p1, Lcom/google/googlex/glass/common/proto/Notification;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object p0

    .line 1008
    .end local p0
    :goto_0
    return-object p0

    .line 1007
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
    .line 854
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 854
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
    .line 854
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
    .line 854
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 854
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
    .line 854
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
    .line 1598
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1599
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1600
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1601
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1605
    :goto_0
    return-object p0

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeUserAction(I)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1929
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 1930
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1931
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1935
    :goto_0
    return-object p0

    .line 1933
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setCallbackUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2300
    if-nez p1, :cond_0

    .line 2301
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2303
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2304
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2305
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2306
    return-object p0
.end method

.method public setCallbackUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2332
    if-nez p1, :cond_0

    .line 2333
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2335
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2336
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 2337
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2338
    return-object p0
.end method

.method public setCollection(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1185
    if-nez p1, :cond_0

    .line 1186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1188
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1189
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1191
    return-object p0
.end method

.method public setCollectionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1215
    if-nez p1, :cond_0

    .line 1216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1218
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1219
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->collection_:Ljava/lang/Object;

    .line 1220
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1221
    return-object p0
.end method

.method public setItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1282
    if-nez p1, :cond_0

    .line 1283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1285
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1286
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1287
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1288
    return-object p0
.end method

.method public setItemIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1312
    if-nez p1, :cond_0

    .line 1313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1315
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1316
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->itemId_:Ljava/lang/Object;

    .line 1317
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1318
    return-object p0
.end method

.method public setMenuAction(ILcom/google/googlex/glass/common/proto/MenuItem$Builder;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1462
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1463
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1464
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1468
    :goto_0
    return-object p0

    .line 1466
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
    .line 1439
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1440
    if-nez p2, :cond_0

    .line 1441
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1443
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureMenuActionIsMutable()V

    .line 1444
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1445
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1449
    :goto_0
    return-object p0

    .line 1447
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->menuActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setOperation(Lcom/google/googlex/glass/common/proto/Subscription$Operation;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1350
    if-nez p1, :cond_0

    .line 1351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1353
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 1354
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 1355
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1356
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2428
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2429
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->timestamp_:J

    .line 2430
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2431
    return-object p0
.end method

.method public setUserAction(ILcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1792
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 1793
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1794
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1798
    :goto_0
    return-object p0

    .line 1796
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
    .line 1769
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1770
    if-nez p2, :cond_0

    .line 1771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1773
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->ensureUserActionIsMutable()V

    .line 1774
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1775
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 1779
    :goto_0
    return-object p0

    .line 1777
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUserId(J)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2373
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2374
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userId_:J

    .line 2375
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2376
    return-object p0
.end method

.method public setUserToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2197
    if-nez p1, :cond_0

    .line 2198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2200
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2201
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2203
    return-object p0
.end method

.method public setUserTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2229
    if-nez p1, :cond_0

    .line 2230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2232
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2233
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->userToken_:Ljava/lang/Object;

    .line 2234
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2235
    return-object p0
.end method

.method public setVerifyToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2094
    if-nez p1, :cond_0

    .line 2095
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2097
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2098
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2099
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2100
    return-object p0
.end method

.method public setVerifyTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2126
    if-nez p1, :cond_0

    .line 2127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2129
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->bitField0_:I

    .line 2130
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification$Builder;->verifyToken_:Ljava/lang/Object;

    .line 2131
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->onChanged()V

    .line 2132
    return-object p0
.end method
