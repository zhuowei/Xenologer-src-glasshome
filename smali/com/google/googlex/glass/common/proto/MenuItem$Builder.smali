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

.field private travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

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
    .line 1196
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1483
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1884
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 2048
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 1197
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->maybeForceBuilderInitialization()V

    .line 1198
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1202
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1483
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1884
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 2048
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 1203
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->maybeForceBuilderInitialization()V

    .line 1204
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/MenuItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1179
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1179
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->create()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1211
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;-><init>()V

    return-object v0
.end method

.method private ensureValueIsMutable()V
    .locals 2

    .prologue
    .line 1521
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1522
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1523
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1525
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1185
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
    .line 1872
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1873
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

    .line 1879
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1873
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1206
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1209
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
    .line 1727
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/MenuValue;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1728
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1729
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1731
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1735
    :goto_0
    return-object p0

    .line 1733
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
    .line 1706
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1707
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1708
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1709
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1713
    :goto_0
    return-object p0

    .line 1711
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
    .line 1661
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1662
    if-nez p2, :cond_0

    .line 1663
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1665
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1666
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1667
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1671
    :goto_0
    return-object p0

    .line 1669
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addValue(Lcom/google/googlex/glass/common/proto/MenuValue$Builder;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1686
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1687
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1692
    :goto_0
    return-object p0

    .line 1690
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
    .line 1637
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1638
    if-nez p1, :cond_0

    .line 1639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1641
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1642
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1647
    :goto_0
    return-object p0

    .line 1645
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addValueBuilder()Lcom/google/googlex/glass/common/proto/MenuValue$Builder;
    .locals 2

    .prologue
    .line 1837
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
    .line 1852
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
    .line 1249
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    .line 1250
    .local v0, result:Lcom/google/googlex/glass/common/proto/MenuItem;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MenuItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1251
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1253
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 5

    .prologue
    .line 1257
    new-instance v1, Lcom/google/googlex/glass/common/proto/MenuItem;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/MenuItem$1;)V

    .line 1258
    .local v1, result:Lcom/google/googlex/glass/common/proto/MenuItem;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1259
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1260
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1261
    or-int/lit8 v2, v2, 0x1

    .line 1263
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$502(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1265
    or-int/lit8 v2, v2, 0x2

    .line 1267
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$602(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1268
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_6

    .line 1269
    iget v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1270
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1271
    iget v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1273
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$702(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/util/List;)Ljava/util/List;

    .line 1277
    :goto_0
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1278
    or-int/lit8 v2, v2, 0x4

    .line 1280
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->broadcastAction_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$802(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1282
    or-int/lit8 v2, v2, 0x8

    .line 1284
    :cond_4
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->removeWhenSelected_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->removeWhenSelected_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$902(Lcom/google/googlex/glass/common/proto/MenuItem;Z)Z

    .line 1285
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1286
    or-int/lit8 v2, v2, 0x10

    .line 1288
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$1002(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;)Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 1289
    #setter for: Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$1102(Lcom/google/googlex/glass/common/proto/MenuItem;I)I

    .line 1290
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onBuilt()V

    .line 1291
    return-object v1

    .line 1275
    :cond_6
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
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1215
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1216
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1217
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1218
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1219
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1220
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1222
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1226
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1227
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->removeWhenSelected_:Z

    .line 1229
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1230
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 1231
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1232
    return-object p0

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clear()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAction()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1512
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1513
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1514
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1515
    return-object p0
.end method

.method public clearBroadcastAction()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1971
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1972
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1973
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1974
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1459
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1460
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1461
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1462
    return-object p0
.end method

.method public clearRemoveWhenSelected()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 2042
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 2043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->removeWhenSelected_:Z

    .line 2044
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 2045
    return-object p0
.end method

.method public clearTravelMode()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 2093
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 2094
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 2095
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 2096
    return-object p0
.end method

.method public clearValue()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1749
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1750
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1751
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1755
    :goto_0
    return-object p0

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2

    .prologue
    .line 1236
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
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1179
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
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->clone()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    return-object v0
.end method

.method public getBroadcastAction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1907
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1908
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1909
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1911
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1912
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1913
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1917
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

.method public getBroadcastActionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1931
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1932
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1933
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1936
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1939
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
    .line 1245
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1241
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_MenuItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1398
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1399
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1400
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1402
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1403
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1404
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1408
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
    .line 1421
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1422
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1423
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1426
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1429
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
    .line 2017
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->removeWhenSelected_:Z

    return v0
.end method

.method public getTravelMode()Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    .locals 1

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    return-object v0
.end method

.method public getValue(I)Lcom/google/googlex/glass/common/proto/MenuValue;
    .locals 1
    .parameter "index"

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValue;

    .line 1578
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
    .line 1789
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
    .line 1867
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1561
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
    .line 1541
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1544
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
    .line 1803
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;

    .line 1805
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
    .line 1820
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1823
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
    .line 1488
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
    .line 1895
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

    .line 1387
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
    .line 2006
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

.method public hasTravelMode()Z
    .locals 2

    .prologue
    .line 2057
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

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
    .line 1190
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
    .line 1355
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 1304
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1351
    :goto_0
    return-object p0

    .line 1305
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1306
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1307
    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$500(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1308
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1310
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->hasAction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1311
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 1313
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_8

    .line 1314
    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$700(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1315
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1316
    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$700(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1317
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1322
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1339
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->hasBroadcastAction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1340
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1341
    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->broadcastAction_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$800(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1342
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1344
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->hasRemoveWhenSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1345
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getRemoveWhenSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setRemoveWhenSelected(Z)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 1347
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->hasTravelMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1348
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getTravelMode()Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setTravelMode(Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 1350
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1319
    :cond_7
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1320
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$700(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1325
    :cond_8
    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$700(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1326
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1327
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1328
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1329
    #getter for: Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$700(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    .line 1330
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1331
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->getValueFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1335
    :cond_a
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
    .line 1362
    const/4 v2, 0x0

    .line 1364
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

    .line 1369
    if-eqz v2, :cond_0

    .line 1370
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    .line 1373
    :cond_0
    return-object p0

    .line 1365
    :catch_0
    move-exception v1

    .line 1366
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    move-object v2, v0

    .line 1367
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1369
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1370
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1295
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/MenuItem;

    if-eqz v0, :cond_0

    .line 1296
    check-cast p1, Lcom/google/googlex/glass/common/proto/MenuItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object p0

    .line 1299
    .end local p0
    :goto_0
    return-object p0

    .line 1298
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
    .line 1179
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1179
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
    .line 1179
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
    .line 1179
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1179
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
    .line 1179
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(I)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1769
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1770
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1771
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1775
    :goto_0
    return-object p0

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1500
    if-nez p1, :cond_0

    .line 1501
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1503
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1504
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1505
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1506
    return-object p0
.end method

.method public setBroadcastAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1953
    if-nez p1, :cond_0

    .line 1954
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1956
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1957
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1958
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1959
    return-object p0
.end method

.method public setBroadcastActionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1987
    if-nez p1, :cond_0

    .line 1988
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1990
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1991
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->broadcastAction_:Ljava/lang/Object;

    .line 1992
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1993
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1442
    if-nez p1, :cond_0

    .line 1443
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1445
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1446
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1447
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1448
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1474
    if-nez p1, :cond_0

    .line 1475
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1477
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 1478
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->id_:Ljava/lang/Object;

    .line 1479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1480
    return-object p0
.end method

.method public setRemoveWhenSelected(Z)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2028
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 2029
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->removeWhenSelected_:Z

    .line 2030
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 2031
    return-object p0
.end method

.method public setTravelMode(Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2077
    if-nez p1, :cond_0

    .line 2078
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2080
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->bitField0_:I

    .line 2081
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 2082
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 2083
    return-object p0
.end method

.method public setValue(ILcom/google/googlex/glass/common/proto/MenuValue$Builder;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1618
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1619
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuValue$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1620
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1624
    :goto_0
    return-object p0

    .line 1622
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
    .line 1593
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1594
    if-nez p2, :cond_0

    .line 1595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1597
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->ensureValueIsMutable()V

    .line 1598
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->onChanged()V

    .line 1603
    :goto_0
    return-object p0

    .line 1601
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->valueBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
