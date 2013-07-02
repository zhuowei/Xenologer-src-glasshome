.class public final Lcom/google/googlex/glass/common/proto/Subscription$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Subscription.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/SubscriptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/Subscription$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/SubscriptionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private callbackUrl_:Ljava/lang/Object;

.field private collection_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private modifiedTime_:J

.field private notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Notification;",
            "Lcom/google/googlex/glass/common/proto/Notification$Builder;",
            "Lcom/google/googlex/glass/common/proto/NotificationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private notification_:Lcom/google/googlex/glass/common/proto/Notification;

.field private operation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Subscription$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private subscriber_:Ljava/lang/Object;

.field private userToken_:Ljava/lang/Object;

.field private verifyToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1276
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 1548
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1754
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1860
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 925
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->maybeForceBuilderInitialization()V

    .line 926
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1276
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 1548
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1754
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1860
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 931
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->maybeForceBuilderInitialization()V

    .line 932
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Subscription$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 907
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->create()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 939
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;-><init>()V

    return-object v0
.end method

.method private ensureOperationIsMutable()V
    .locals 2

    .prologue
    .line 1479
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1480
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 1481
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1483
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 913
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Notification;",
            "Lcom/google/googlex/glass/common/proto/Notification$Builder;",
            "Lcom/google/googlex/glass/common/proto/NotificationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2020
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2025
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 2027
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 934
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->getNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 937
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllOperation(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/Subscription$Operation;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Subscription$Builder;"
        }
    .end annotation

    .prologue
    .line 1532
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Subscription$Operation;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->ensureOperationIsMutable()V

    .line 1533
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1535
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1536
    return-object p0
.end method

.method public addOperation(Lcom/google/googlex/glass/common/proto/Subscription$Operation;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1519
    if-nez p1, :cond_0

    .line 1520
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1522
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->ensureOperationIsMutable()V

    .line 1523
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1525
    return-object p0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 2

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    .line 984
    .local v0, result:Lcom/google/googlex/glass/common/proto/Subscription;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 985
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 987
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->build()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->build()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 5

    .prologue
    .line 991
    new-instance v1, Lcom/google/googlex/glass/common/proto/Subscription;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Subscription;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Subscription$1;)V

    .line 992
    .local v1, result:Lcom/google/googlex/glass/common/proto/Subscription;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 993
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 994
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 995
    or-int/lit8 v2, v2, 0x1

    .line 997
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$502(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 999
    or-int/lit8 v2, v2, 0x2

    .line 1001
    :cond_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->modifiedTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Subscription;->access$602(Lcom/google/googlex/glass/common/proto/Subscription;J)J

    .line 1002
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1003
    or-int/lit8 v2, v2, 0x4

    .line 1005
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$702(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1007
    or-int/lit8 v2, v2, 0x8

    .line 1009
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$802(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1011
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 1012
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1014
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$902(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/util/List;)Ljava/util/List;

    .line 1015
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1016
    or-int/lit8 v2, v2, 0x10

    .line 1018
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1002(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1020
    or-int/lit8 v2, v2, 0x20

    .line 1022
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1102(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1024
    or-int/lit8 v2, v2, 0x40

    .line 1026
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1202(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1028
    or-int/lit16 v2, v2, 0x80

    .line 1030
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_9

    .line 1031
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1302(Lcom/google/googlex/glass/common/proto/Subscription;Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification;

    .line 1035
    :goto_0
    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1402(Lcom/google/googlex/glass/common/proto/Subscription;I)I

    .line 1036
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onBuilt()V

    .line 1037
    return-object v1

    .line 1033
    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Notification;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1302(Lcom/google/googlex/glass/common/proto/Subscription;Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2

    .prologue
    .line 943
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 945
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 946
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->modifiedTime_:J

    .line 947
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 948
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 949
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 950
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 951
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 952
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 953
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 954
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 955
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 956
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 957
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 958
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 959
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 960
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 961
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 965
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 966
    return-object p0

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clear()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clear()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clear()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clear()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCallbackUrl()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1625
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1626
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->getCallbackUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1627
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1628
    return-object p0
.end method

.method public clearCollection()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1453
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1454
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->getCollection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1455
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1456
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1201
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1202
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1203
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1204
    return-object p0
.end method

.method public clearModifiedTime()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2

    .prologue
    .line 1270
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1271
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->modifiedTime_:J

    .line 1272
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1273
    return-object p0
.end method

.method public clearNotification()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1969
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 1970
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1974
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1975
    return-object p0

    .line 1972
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearOperation()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1542
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 1543
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1544
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1545
    return-object p0
.end method

.method public clearSubscriber()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1353
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1354
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->getSubscriber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1355
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1356
    return-object p0
.end method

.method public clearUserToken()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1836
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1837
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->getUserToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1838
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1839
    return-object p0
.end method

.method public clearVerifyToken()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1730
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1731
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->getVerifyToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1732
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1733
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2

    .prologue
    .line 970
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->create()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

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
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1567
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1568
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1569
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1571
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1572
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1573
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1577
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
    .line 1589
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1590
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1591
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1594
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1597
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
    .line 1395
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1396
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1397
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1399
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1400
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1401
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1405
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
    .line 1417
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1418
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1419
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1422
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1425
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1

    .prologue
    .line 979
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 975
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1144
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1145
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1147
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1149
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1153
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

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1165
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

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

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 1245
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->modifiedTime_:J

    return-wide v0
.end method

.method public getNotification()Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 1888
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    goto :goto_0
.end method

.method public getNotificationBuilder()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 1987
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1988
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1989
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->getNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification$Builder;

    return-object v0
.end method

.method public getNotificationOrBuilder()Lcom/google/googlex/glass/common/proto/NotificationOrBuilder;
    .locals 1

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/NotificationOrBuilder;

    .line 2004
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    goto :goto_0
.end method

.method public getOperation(I)Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    .locals 1
    .parameter "index"

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    return-object v0
.end method

.method public getOperationCount()I
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOperationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Subscription$Operation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1296
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1297
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1299
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1300
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1301
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1305
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

.method public getSubscriberBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1317
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1318
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1319
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1322
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1325
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

.method public getUserToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1775
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1776
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1777
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1779
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1780
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1781
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1785
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
    .line 1798
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1799
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1800
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1803
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1806
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
    .line 1669
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1670
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1671
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1673
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1674
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1675
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1679
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
    .line 1692
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1693
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1694
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1697
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1700
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
    .line 1557
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

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

.method public hasCollection()Z
    .locals 2

    .prologue
    .line 1385
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1133
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedTime()Z
    .locals 2

    .prologue
    .line 1234
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

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

.method public hasNotification()Z
    .locals 2

    .prologue
    .line 1873
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

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

.method public hasSubscriber()Z
    .locals 2

    .prologue
    .line 1285
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

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

.method public hasUserToken()Z
    .locals 2

    .prologue
    .line 1764
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

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
    .line 1658
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

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
    .line 918
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Subscription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Subscription;

    const-class v2, Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1050
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1098
    :goto_0
    return-object p0

    .line 1051
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1053
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$500(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1054
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1056
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasModifiedTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->getModifiedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    .line 1059
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasSubscriber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1060
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1061
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$700(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1062
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1064
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasCollection()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1065
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1066
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$800(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1067
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1069
    :cond_4
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$900(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1070
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1071
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$900(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 1072
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1077
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1079
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasCallbackUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1080
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1081
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1000(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1082
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1084
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasVerifyToken()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1085
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1086
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1100(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1087
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1089
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasUserToken()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1090
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1091
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1200(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1092
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1094
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasNotification()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1095
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->getNotification()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeNotification(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    .line 1097
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1074
    :cond_a
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->ensureOperationIsMutable()V

    .line 1075
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$900(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1109
    const/4 v2, 0x0

    .line 1111
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/Subscription;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    if-eqz v2, :cond_0

    .line 1117
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    .line 1120
    :cond_0
    return-object p0

    .line 1112
    :catch_0
    move-exception v1

    .line 1113
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    move-object v2, v0

    .line 1114
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1117
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1041
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Subscription;

    if-eqz v0, :cond_0

    .line 1042
    check-cast p1, Lcom/google/googlex/glass/common/proto/Subscription;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object p0

    .line 1045
    .end local p0
    :goto_0
    return-object p0

    .line 1044
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
    .line 907
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 907
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

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
    .line 907
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

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
    .line 907
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 907
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

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
    .line 907
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeNotification(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1944
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Notification;->newBuilder(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 1951
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1955
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1956
    return-object p0

    .line 1949
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    goto :goto_0

    .line 1953
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setCallbackUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1609
    if-nez p1, :cond_0

    .line 1610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1612
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1613
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1614
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1615
    return-object p0
.end method

.method public setCallbackUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1639
    if-nez p1, :cond_0

    .line 1640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1642
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1643
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1645
    return-object p0
.end method

.method public setCollection(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1437
    if-nez p1, :cond_0

    .line 1438
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1440
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1441
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1442
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1443
    return-object p0
.end method

.method public setCollectionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1467
    if-nez p1, :cond_0

    .line 1468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1470
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1471
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1472
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1473
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
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
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1189
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1191
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
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
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1219
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1220
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1221
    return-object p0
.end method

.method public setModifiedTime(J)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1256
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1257
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->modifiedTime_:J

    .line 1258
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1259
    return-object p0
.end method

.method public setNotification(Lcom/google/googlex/glass/common/proto/Notification$Builder;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1925
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->build()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 1926
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1930
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1931
    return-object p0

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->build()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setNotification(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1902
    if-nez p1, :cond_0

    .line 1903
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1905
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 1906
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1910
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1911
    return-object p0

    .line 1908
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setOperation(ILcom/google/googlex/glass/common/proto/Subscription$Operation;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1507
    if-nez p2, :cond_0

    .line 1508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1510
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->ensureOperationIsMutable()V

    .line 1511
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1512
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1513
    return-object p0
.end method

.method public setSubscriber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1337
    if-nez p1, :cond_0

    .line 1338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1340
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1341
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1342
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1343
    return-object p0
.end method

.method public setSubscriberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1367
    if-nez p1, :cond_0

    .line 1368
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1370
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1371
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1372
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1373
    return-object p0
.end method

.method public setUserToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1819
    if-nez p1, :cond_0

    .line 1820
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1822
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1823
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1824
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1825
    return-object p0
.end method

.method public setUserTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1851
    if-nez p1, :cond_0

    .line 1852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1854
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1855
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1856
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1857
    return-object p0
.end method

.method public setVerifyToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1713
    if-nez p1, :cond_0

    .line 1714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1716
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1717
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1719
    return-object p0
.end method

.method public setVerifyTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1745
    if-nez p1, :cond_0

    .line 1746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1748
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1749
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1750
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1751
    return-object p0
.end method
