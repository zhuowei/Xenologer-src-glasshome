.class public final Lcom/google/googlex/glass/common/proto/Update$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Update.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/Update$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update$Mutations;",
            "Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;",
            "Lcom/google/googlex/glass/common/proto/Update$MutationsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

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
    .line 1703
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1870
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1986
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2086
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 1704
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->maybeForceBuilderInitialization()V

    .line 1705
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1709
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1870
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1986
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2086
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 1710
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->maybeForceBuilderInitialization()V

    .line 1711
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Update$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1686
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Update$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 1686
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Builder;->create()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 1719
    new-instance v0, Lcom/google/googlex/glass/common/proto/Update$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Update$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUserActionIsMutable()V
    .locals 2

    .prologue
    .line 2089
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2090
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 2091
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 2093
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1692
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Update_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMutationsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update$Mutations;",
            "Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;",
            "Lcom/google/googlex/glass/common/proto/Update$MutationsOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1976
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1983
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

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
    .line 2386
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2387
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 2395
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2387
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1713
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getMutationsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1715
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1717
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllUserAction(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Update$Builder;"
        }
    .end annotation

    .prologue
    .line 2265
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/UserAction;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2266
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2267
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2269
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2273
    :goto_0
    return-object p0

    .line 2271
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(ILcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2248
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2249
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2250
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2254
    :goto_0
    return-object p0

    .line 2252
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(ILcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2209
    if-nez p2, :cond_0

    .line 2210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2212
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2213
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2214
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2218
    :goto_0
    return-object p0

    .line 2216
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(Lcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2230
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2231
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2232
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2236
    :goto_0
    return-object p0

    .line 2234
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2188
    if-nez p1, :cond_0

    .line 2189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2191
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2192
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2193
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2197
    :goto_0
    return-object p0

    .line 2195
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserActionBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 2

    .prologue
    .line 2357
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 2369
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/Update;
    .locals 2

    .prologue
    .line 1755
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    .line 1756
    .local v0, result:Lcom/google/googlex/glass/common/proto/Update;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Update;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1757
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1759
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Update;
    .locals 5

    .prologue
    .line 1763
    new-instance v1, Lcom/google/googlex/glass/common/proto/Update;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Update;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Update$1;)V

    .line 1764
    .local v1, result:Lcom/google/googlex/glass/common/proto/Update;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1765
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1766
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1767
    or-int/lit8 v2, v2, 0x1

    .line 1769
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_3

    .line 1770
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    #setter for: Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update;->access$1402(Lcom/google/googlex/glass/common/proto/Update;Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1774
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1775
    or-int/lit8 v2, v2, 0x2

    .line 1777
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Update;->timelineItemId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update;->access$1502(Lcom/google/googlex/glass/common/proto/Update;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_4

    .line 1779
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1780
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 1781
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1783
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update;->access$1602(Lcom/google/googlex/glass/common/proto/Update;Ljava/util/List;)Ljava/util/List;

    .line 1787
    :goto_1
    #setter for: Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Update;->access$1702(Lcom/google/googlex/glass/common/proto/Update;I)I

    .line 1788
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onBuilt()V

    .line 1789
    return-object v1

    .line 1772
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    #setter for: Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update;->access$1402(Lcom/google/googlex/glass/common/proto/Update;Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations;

    goto :goto_0

    .line 1785
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update;->access$1602(Lcom/google/googlex/glass/common/proto/Update;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 1723
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1724
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1725
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1729
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1730
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 1731
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1732
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1733
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 1734
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1738
    :goto_1
    return-object p0

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 1736
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clear()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clear()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clear()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clear()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMutations()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1943
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1944
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1948
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1949
    return-object p0

    .line 1946
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearTimelineItemId()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 2063
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 2064
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Update;->getTimelineItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2065
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2066
    return-object p0
.end method

.method public clearUserAction()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 2285
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 2286
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2290
    :goto_0
    return-object p0

    .line 2288
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2

    .prologue
    .line 1742
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Builder;->create()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Builder;

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
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update;
    .locals 1

    .prologue
    .line 1751
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1747
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Update_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMutations()Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1886
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    goto :goto_0
.end method

.method public getMutationsBuilder()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1

    .prologue
    .line 1955
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1956
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1957
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getMutationsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    return-object v0
.end method

.method public getMutationsOrBuilder()Lcom/google/googlex/glass/common/proto/Update$MutationsOrBuilder;
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$MutationsOrBuilder;

    .line 1966
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    goto :goto_0
.end method

.method public getTimelineItemId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2005
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2006
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 2007
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2009
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2010
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2011
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2015
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

.method public getTimelineItemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2027
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2028
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2029
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2032
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2035
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
    .line 2134
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    .line 2137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    goto :goto_0
.end method

.method public getUserActionBuilder(I)Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2318
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 2381
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserActionCount()I
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2121
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2123
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 2106
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2107
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2330
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;

    .line 2331
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 2343
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2344
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2346
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasMutations()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1877
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimelineItemId()Z
    .locals 2

    .prologue
    .line 1995
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 1697
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Update_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Update;

    const-class v2, Lcom/google/googlex/glass/common/proto/Update$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->hasMutations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1843
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getMutations()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    const/4 v0, 0x0

    .line 1848
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 1802
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1838
    :goto_0
    return-object p0

    .line 1803
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update;->hasMutations()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1804
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update;->getMutations()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeMutations(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    .line 1806
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update;->hasTimelineItemId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1807
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1808
    #getter for: Lcom/google/googlex/glass/common/proto/Update;->timelineItemId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1500(Lcom/google/googlex/glass/common/proto/Update;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 1809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1811
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_5

    .line 1812
    #getter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1600(Lcom/google/googlex/glass/common/proto/Update;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1813
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1814
    #getter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1600(Lcom/google/googlex/glass/common/proto/Update;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 1815
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1820
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1837
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1817
    :cond_4
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 1818
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1600(Lcom/google/googlex/glass/common/proto/Update;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1823
    :cond_5
    #getter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1600(Lcom/google/googlex/glass/common/proto/Update;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1824
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1825
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1826
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1827
    #getter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1600(Lcom/google/googlex/glass/common/proto/Update;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 1828
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1829
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1833
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1600(Lcom/google/googlex/glass/common/proto/Update;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1855
    const/4 v2, 0x0

    .line 1857
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/Update;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    if-eqz v2, :cond_0

    .line 1863
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    .line 1866
    :cond_0
    return-object p0

    .line 1858
    :catch_0
    move-exception v1

    .line 1859
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    move-object v2, v0

    .line 1860
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1862
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1863
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1793
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Update;

    if-eqz v0, :cond_0

    .line 1794
    check-cast p1, Lcom/google/googlex/glass/common/proto/Update;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object p0

    .line 1797
    .end local p0
    :goto_0
    return-object p0

    .line 1796
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
    .line 1686
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1686
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Update$Builder;

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
    .line 1686
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Builder;

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
    .line 1686
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1686
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Update$Builder;

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
    .line 1686
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMutations(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1924
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1926
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->newBuilder(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1931
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1935
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1936
    return-object p0

    .line 1929
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    goto :goto_0

    .line 1933
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public removeUserAction(I)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2301
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2302
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2303
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2307
    :goto_0
    return-object p0

    .line 2305
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setMutations(Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1911
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->build()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1912
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1916
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1917
    return-object p0

    .line 1914
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->build()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setMutations(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1894
    if-nez p1, :cond_0

    .line 1895
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1897
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1898
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1902
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1903
    return-object p0

    .line 1900
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setTimelineItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2047
    if-nez p1, :cond_0

    .line 2048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2050
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 2051
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2052
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2053
    return-object p0
.end method

.method public setTimelineItemIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Update$Builder;
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
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 2081
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2082
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2083
    return-object p0
.end method

.method public setUserAction(ILcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2171
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2172
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2173
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2177
    :goto_0
    return-object p0

    .line 2175
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUserAction(ILcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2150
    if-nez p2, :cond_0

    .line 2151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2153
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2154
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2155
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2159
    :goto_0
    return-object p0

    .line 2157
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
