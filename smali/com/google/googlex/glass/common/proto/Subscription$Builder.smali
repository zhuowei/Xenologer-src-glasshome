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
    .line 918
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1118
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1267
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1364
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1461
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 1533
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1836
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 919
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->maybeForceBuilderInitialization()V

    .line 920
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1118
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1267
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1364
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1461
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 1533
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1836
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 925
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->maybeForceBuilderInitialization()V

    .line 926
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Subscription$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 901
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 901
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->create()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 933
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;-><init>()V

    return-object v0
.end method

.method private ensureOperationIsMutable()V
    .locals 2

    .prologue
    .line 1464
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1465
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 1466
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1468
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 907
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
    .line 1995
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1996
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 2003
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 928
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->getNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 931
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
    .line 1517
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Subscription$Operation;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->ensureOperationIsMutable()V

    .line 1518
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1520
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1521
    return-object p0
.end method

.method public addOperation(Lcom/google/googlex/glass/common/proto/Subscription$Operation;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1504
    if-nez p1, :cond_0

    .line 1505
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1507
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->ensureOperationIsMutable()V

    .line 1508
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1510
    return-object p0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 2

    .prologue
    .line 977
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    .line 978
    .local v0, result:Lcom/google/googlex/glass/common/proto/Subscription;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 979
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 981
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->build()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->build()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 5

    .prologue
    .line 985
    new-instance v1, Lcom/google/googlex/glass/common/proto/Subscription;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Subscription;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Subscription$1;)V

    .line 986
    .local v1, result:Lcom/google/googlex/glass/common/proto/Subscription;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 987
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 988
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 989
    or-int/lit8 v2, v2, 0x1

    .line 991
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$502(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 993
    or-int/lit8 v2, v2, 0x2

    .line 995
    :cond_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->modifiedTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Subscription;->access$602(Lcom/google/googlex/glass/common/proto/Subscription;J)J

    .line 996
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 997
    or-int/lit8 v2, v2, 0x4

    .line 999
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$702(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1001
    or-int/lit8 v2, v2, 0x8

    .line 1003
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$802(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1005
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 1006
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1008
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$902(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/util/List;)Ljava/util/List;

    .line 1009
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1010
    or-int/lit8 v2, v2, 0x10

    .line 1012
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1002(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1014
    or-int/lit8 v2, v2, 0x20

    .line 1016
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1102(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1018
    or-int/lit8 v2, v2, 0x40

    .line 1020
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1202(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1022
    or-int/lit16 v2, v2, 0x80

    .line 1024
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_9

    .line 1025
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1302(Lcom/google/googlex/glass/common/proto/Subscription;Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification;

    .line 1029
    :goto_0
    #setter for: Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1402(Lcom/google/googlex/glass/common/proto/Subscription;I)I

    .line 1030
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onBuilt()V

    .line 1031
    return-object v1

    .line 1027
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
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2

    .prologue
    .line 937
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 938
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 939
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 940
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->modifiedTime_:J

    .line 941
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 942
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 943
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 945
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 946
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 947
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 948
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 949
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 950
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 951
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 953
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 954
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 955
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 959
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 960
    return-object p0

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clear()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clear()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clear()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clear()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCallbackUrl()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1607
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1608
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->getCallbackUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1609
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1610
    return-object p0
.end method

.method public clearCollection()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1438
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1439
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->getCollection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1441
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1192
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1193
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1194
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1195
    return-object p0
.end method

.method public clearModifiedTime()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2

    .prologue
    .line 1261
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1262
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->modifiedTime_:J

    .line 1263
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1264
    return-object p0
.end method

.method public clearNotification()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1945
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 1946
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1950
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1951
    return-object p0

    .line 1948
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearOperation()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 1528
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1529
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1530
    return-object p0
.end method

.method public clearSubscriber()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1341
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1342
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->getSubscriber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1343
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1344
    return-object p0
.end method

.method public clearUserToken()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1812
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1813
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->getUserToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1814
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1815
    return-object p0
.end method

.method public clearVerifyToken()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 1709
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1710
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->getVerifyToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1711
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1712
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2

    .prologue
    .line 964
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
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 901
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
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->clone()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1553
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1554
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1556
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1559
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
    .line 1571
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1572
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1573
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1576
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1579
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
    .line 1383
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1384
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1385
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1387
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1390
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
    .line 1402
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1403
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1404
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1407
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1410
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
    .line 973
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 969
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1138
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1139
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1141
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1144
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

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1156
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1157
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1158
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1161
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1164
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
    .line 1236
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->modifiedTime_:J

    return-wide v0
.end method

.method public getNotification()Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 1864
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
    .line 1963
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1964
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1965
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
    .line 1977
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/NotificationOrBuilder;

    .line 1980
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
    .line 1485
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    return-object v0
.end method

.method public getOperationCount()I
    .locals 1

    .prologue
    .line 1479
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
    .line 1473
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1287
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1288
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1290
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1293
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

.method public getSubscriberBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1305
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1306
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1307
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1310
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1313
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
    .locals 3

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1755
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1756
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1758
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1761
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
    .line 1774
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1775
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1776
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1779
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1782
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
    .line 1651
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1652
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1653
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1655
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1658
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
    .line 1671
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1672
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1673
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1676
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1679
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
    .line 1542
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
    .line 1373
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

    .line 1127
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
    .line 1225
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
    .line 1849
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
    .line 1276
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
    .line 1743
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
    .line 1640
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
    .line 912
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
    .line 1096
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1044
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1092
    :goto_0
    return-object p0

    .line 1045
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1046
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1047
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$500(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1048
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1050
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasModifiedTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1051
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->getModifiedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    .line 1053
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasSubscriber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1054
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1055
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$700(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1056
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1058
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasCollection()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1059
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1060
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$800(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1061
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1063
    :cond_4
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$900(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1064
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1065
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$900(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    .line 1066
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1071
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1073
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasCallbackUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1074
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1075
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1000(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1076
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1078
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasVerifyToken()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1079
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1080
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1100(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1081
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1083
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasUserToken()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1084
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1085
    #getter for: Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->access$1200(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1086
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1088
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->hasNotification()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1089
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->getNotification()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeNotification(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    .line 1091
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Subscription;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1068
    :cond_a
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->ensureOperationIsMutable()V

    .line 1069
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
    .line 1103
    const/4 v2, 0x0

    .line 1105
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

    .line 1110
    if-eqz v2, :cond_0

    .line 1111
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    .line 1114
    :cond_0
    return-object p0

    .line 1106
    :catch_0
    move-exception v1

    .line 1107
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    move-object v2, v0

    .line 1108
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1110
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1111
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1035
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Subscription;

    if-eqz v0, :cond_0

    .line 1036
    check-cast p1, Lcom/google/googlex/glass/common/proto/Subscription;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object p0

    .line 1039
    .end local p0
    :goto_0
    return-object p0

    .line 1038
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
    .line 901
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 901
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
    .line 901
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
    .line 901
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 901
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
    .line 901
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeNotification(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1920
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Notification;->newBuilder(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 1927
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1931
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1932
    return-object p0

    .line 1925
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    goto :goto_0

    .line 1929
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setCallbackUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1591
    if-nez p1, :cond_0

    .line 1592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1594
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1595
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1596
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1597
    return-object p0
.end method

.method public setCallbackUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1621
    if-nez p1, :cond_0

    .line 1622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1624
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1625
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->callbackUrl_:Ljava/lang/Object;

    .line 1626
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1627
    return-object p0
.end method

.method public setCollection(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1422
    if-nez p1, :cond_0

    .line 1423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1425
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1426
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1427
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1428
    return-object p0
.end method

.method public setCollectionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1452
    if-nez p1, :cond_0

    .line 1453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1455
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1456
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->collection_:Ljava/lang/Object;

    .line 1457
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1458
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1176
    if-nez p1, :cond_0

    .line 1177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1179
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1180
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1181
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1182
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1206
    if-nez p1, :cond_0

    .line 1207
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1209
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1210
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->id_:Ljava/lang/Object;

    .line 1211
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1212
    return-object p0
.end method

.method public setModifiedTime(J)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1247
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1248
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->modifiedTime_:J

    .line 1249
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1250
    return-object p0
.end method

.method public setNotification(Lcom/google/googlex/glass/common/proto/Notification$Builder;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1901
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->build()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 1902
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1906
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1907
    return-object p0

    .line 1904
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
    .line 1877
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1878
    if-nez p1, :cond_0

    .line 1879
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1881
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 1882
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1886
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1887
    return-object p0

    .line 1884
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
    .line 1492
    if-nez p2, :cond_0

    .line 1493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1495
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->ensureOperationIsMutable()V

    .line 1496
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->operation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1498
    return-object p0
.end method

.method public setSubscriber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1325
    if-nez p1, :cond_0

    .line 1326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1328
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1329
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1330
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1331
    return-object p0
.end method

.method public setSubscriberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1355
    if-nez p1, :cond_0

    .line 1356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1358
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1359
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->subscriber_:Ljava/lang/Object;

    .line 1360
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1361
    return-object p0
.end method

.method public setUserToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1795
    if-nez p1, :cond_0

    .line 1796
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1798
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1799
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1800
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1801
    return-object p0
.end method

.method public setUserTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1827
    if-nez p1, :cond_0

    .line 1828
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1830
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1831
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->userToken_:Ljava/lang/Object;

    .line 1832
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1833
    return-object p0
.end method

.method public setVerifyToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1692
    if-nez p1, :cond_0

    .line 1693
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1695
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1696
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1697
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1698
    return-object p0
.end method

.method public setVerifyTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1724
    if-nez p1, :cond_0

    .line 1725
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1727
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->bitField0_:I

    .line 1728
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->verifyToken_:Ljava/lang/Object;

    .line 1729
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->onChanged()V

    .line 1730
    return-object p0
.end method
