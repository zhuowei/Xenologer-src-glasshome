.class public final Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MenuItem.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/MenuItem$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

.field private bitField0_:I

.field private broadcastAction_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private removeWhenSelected_:Z

.field private valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuValue;",
            "Lcom/google/googlex/glass/common/proto/MenuValue$Builder;",
            "Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1031
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1203
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1306
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1707
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1032
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->maybeForceBuilderInitialization()V

    .line 1033
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1203
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1306
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1707
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1038
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->maybeForceBuilderInitialization()V

    .line 1039
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/MenuItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1014
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1014
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->create()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1046
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;-><init>()V

    return-object v0
.end method

.method private ensureValueIsMutable()V
    .locals 2

    .prologue
    .line 1344
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1345
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1346
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1348
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1020
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_MenuItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuValue;",
            "Lcom/google/googlex/glass/common/proto/MenuValue$Builder;",
            "Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1696
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1696
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1041
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1044
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllValue(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/MenuValue;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Builder;"
        }
    .end annotation

    .prologue
    .line 1550
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/MenuValue;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1551
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1552
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1554
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1558
    :goto_0
    return-object p0

    .line 1556
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addValue(ILcom/google/googlex/glass/common/proto/MenuValue$Builder;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1530
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1531
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1532
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1536
    :goto_0
    return-object p0

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addValue(ILcom/google/googlex/glass/common/proto/MenuValue;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1485
    if-nez p2, :cond_0

    .line 1486
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1488
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1489
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1490
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1494
    :goto_0
    return-object p0

    .line 1492
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addValue(Lcom/google/googlex/glass/common/proto/MenuValue$Builder;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1509
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1510
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1511
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1515
    :goto_0
    return-object p0

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addValue(Lcom/google/googlex/glass/common/proto/MenuValue;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1461
    if-nez p1, :cond_0

    .line 1462
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1464
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1465
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1466
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1470
    :goto_0
    return-object p0

    .line 1468
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addValueBuilder()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 2

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuValue;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    return-object v0
.end method

.method public addValueBuilder(I)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 1675
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuValue;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 2

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    .line 1083
    .local v0, result:Lcom/google/googlex/glass/common/proto/MenuItem;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MenuItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1084
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1086
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 5

    .prologue
    .line 1090
    new-instance v1, Lcom/google/googlex/glass/common/proto/MenuItem;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/MenuItem$1;)V

    .line 1091
    .local v1, result:Lcom/google/googlex/glass/common/proto/MenuItem;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1092
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1093
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1094
    or-int/lit8 v2, v2, 0x1

    .line 1096
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$502(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1098
    or-int/lit8 v2, v2, 0x2

    .line 1100
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$602(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1101
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_5

    .line 1102
    iget v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1103
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1104
    iget v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1106
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$702(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/util/List;)Ljava/util/List;

    .line 1110
    :goto_0
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1111
    or-int/lit8 v2, v2, 0x4

    .line 1113
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->broadcastAction_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$802(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1115
    or-int/lit8 v2, v2, 0x8

    .line 1117
    :cond_4
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->removeWhenSelected_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->removeWhenSelected_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$902(Lcom/google/googlex/glass/common/proto/MenuItem;Z)Z

    .line 1118
    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$1002(Lcom/google/googlex/glass/common/proto/MenuItem;I)I

    .line 1119
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onBuilt()V

    .line 1120
    return-object v1

    .line 1108
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$702(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1050
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1051
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1052
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1053
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1054
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1055
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1056
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1057
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1061
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1062
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1063
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->removeWhenSelected_:Z

    .line 1064
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1065
    return-object p0

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAction()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1335
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1336
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1337
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1338
    return-object p0
.end method

.method public clearBroadcastAction()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1791
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1792
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1793
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1794
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1282
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1283
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1284
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1285
    return-object p0
.end method

.method public clearRemoveWhenSelected()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1862
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->removeWhenSelected_:Z

    .line 1864
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1865
    return-object p0
.end method

.method public clearValue()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1572
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1573
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1574
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1578
    :goto_0
    return-object p0

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2

    .prologue
    .line 1069
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->create()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

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
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    return-object v0
.end method

.method public getBroadcastAction()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1731
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1732
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1734
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1737
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

.method public getBroadcastActionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1751
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1752
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1753
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1756
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1759
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1

    .prologue
    .line 1078
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1074
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_MenuItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1225
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1226
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1228
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1231
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
    .line 1244
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1245
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1246
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1249
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1252
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

.method public getRemoveWhenSelected()Z
    .locals 1

    .prologue
    .line 1837
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->removeWhenSelected_:Z

    return v0
.end method

.method public getValue(I)Lcom/google/googlex/glass/common/proto/MenuValue;
    .locals 1
    .parameter "index"

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValue;

    .line 1401
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValue;

    goto :goto_0
.end method

.method public getValueBuilder(I)Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1612
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;

    return-object v0
.end method

.method public getValueBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuValue$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1690
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1384
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1367
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getValueOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;

    .line 1628
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;

    goto :goto_0
.end method

.method public getValueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1646
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    .line 1311
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

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

.method public hasBroadcastAction()Z
    .locals 2

    .prologue
    .line 1718
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

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

    .line 1213
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRemoveWhenSelected()Z
    .locals 2

    .prologue
    .line 1826
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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
    .line 1025
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_MenuItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/MenuItem;

    const-class v2, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1181
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 1133
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1177
    :goto_0
    return-object p0

    .line 1134
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1135
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1136
    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$500(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1137
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1139
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->hasAction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1140
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 1142
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_7

    .line 1143
    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$700(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1144
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1145
    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$700(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1146
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1151
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1168
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->hasBroadcastAction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1169
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1170
    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->broadcastAction_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$800(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1171
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1173
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->hasRemoveWhenSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1174
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getRemoveWhenSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setRemoveWhenSelected(Z)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 1176
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1148
    :cond_6
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1149
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$700(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1154
    :cond_7
    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$700(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1155
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1156
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1157
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1158
    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$700(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1159
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1160
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_8
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1164
    :cond_9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$700(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1188
    const/4 v2, 0x0

    .line 1190
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/MenuItem;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    if-eqz v2, :cond_0

    .line 1196
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 1199
    :cond_0
    return-object p0

    .line 1191
    :catch_0
    move-exception v1

    .line 1192
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    move-object v2, v0

    .line 1193
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1195
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1196
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1124
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/MenuItem;

    if-eqz v0, :cond_0

    .line 1125
    check-cast p1, Lcom/google/googlex/glass/common/proto/MenuItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object p0

    .line 1128
    .end local p0
    :goto_0
    return-object p0

    .line 1127
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
    .line 1014
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1014
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

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
    .line 1014
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

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
    .line 1014
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1014
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

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
    .line 1014
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(I)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1592
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1593
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1594
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1598
    :goto_0
    return-object p0

    .line 1596
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1323
    if-nez p1, :cond_0

    .line 1324
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1326
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1327
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1328
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1329
    return-object p0
.end method

.method public setBroadcastAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1773
    if-nez p1, :cond_0

    .line 1774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1776
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1777
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1778
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1779
    return-object p0
.end method

.method public setBroadcastActionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1807
    if-nez p1, :cond_0

    .line 1808
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1810
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1811
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1812
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1813
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1265
    if-nez p1, :cond_0

    .line 1266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1268
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1269
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1270
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1271
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1297
    if-nez p1, :cond_0

    .line 1298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1300
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1301
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1302
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1303
    return-object p0
.end method

.method public setRemoveWhenSelected(Z)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1848
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1849
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->removeWhenSelected_:Z

    .line 1850
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1851
    return-object p0
.end method

.method public setValue(ILcom/google/googlex/glass/common/proto/MenuValue$Builder;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1441
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1442
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1443
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1447
    :goto_0
    return-object p0

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setValue(ILcom/google/googlex/glass/common/proto/MenuValue;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1417
    if-nez p2, :cond_0

    .line 1418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1420
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1421
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1422
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1426
    :goto_0
    return-object p0

    .line 1424
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
