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
    .line 1701
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1868
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1984
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 1702
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->maybeForceBuilderInitialization()V

    .line 1703
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1707
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1868
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1984
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 1708
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->maybeForceBuilderInitialization()V

    .line 1709
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Update$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1684
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Update$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 1684
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Builder;->create()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 1717
    new-instance v0, Lcom/google/googlex/glass/common/proto/Update$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Update$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUserActionIsMutable()V
    .locals 2

    .prologue
    .line 2084
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2085
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 2086
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 2088
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1690
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
    .line 1973
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1974
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1981
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
    .line 2381
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2382
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

    .line 2388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2382
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1711
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getMutationsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1713
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1715
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
    .line 2260
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/UserAction;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2261
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2262
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2264
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2268
    :goto_0
    return-object p0

    .line 2266
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
    .line 2242
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2243
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2244
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2245
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2249
    :goto_0
    return-object p0

    .line 2247
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
    .line 2203
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2204
    if-nez p2, :cond_0

    .line 2205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2207
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2208
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2209
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2213
    :goto_0
    return-object p0

    .line 2211
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserAction(Lcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2225
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2226
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2227
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2231
    :goto_0
    return-object p0

    .line 2229
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
    .line 2182
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2183
    if-nez p1, :cond_0

    .line 2184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2186
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2187
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2188
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2192
    :goto_0
    return-object p0

    .line 2190
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserActionBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .locals 2

    .prologue
    .line 2352
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
    .line 2364
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
    .line 1753
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    .line 1754
    .local v0, result:Lcom/google/googlex/glass/common/proto/Update;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Update;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1755
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1757
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->build()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Update;
    .locals 5

    .prologue
    .line 1761
    new-instance v1, Lcom/google/googlex/glass/common/proto/Update;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Update;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Update$1;)V

    .line 1762
    .local v1, result:Lcom/google/googlex/glass/common/proto/Update;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1763
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1764
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1765
    or-int/lit8 v2, v2, 0x1

    .line 1767
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_3

    .line 1768
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    #setter for: Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update;->access$1402(Lcom/google/googlex/glass/common/proto/Update;Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1772
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1773
    or-int/lit8 v2, v2, 0x2

    .line 1775
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Update;->timelineItemId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update;->access$1502(Lcom/google/googlex/glass/common/proto/Update;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_4

    .line 1777
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1778
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 1779
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1781
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update;->access$1602(Lcom/google/googlex/glass/common/proto/Update;Ljava/util/List;)Ljava/util/List;

    .line 1785
    :goto_1
    #setter for: Lcom/google/googlex/glass/common/proto/Update;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Update;->access$1702(Lcom/google/googlex/glass/common/proto/Update;I)I

    .line 1786
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onBuilt()V

    .line 1787
    return-object v1

    .line 1770
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    #setter for: Lcom/google/googlex/glass/common/proto/Update;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update;->access$1402(Lcom/google/googlex/glass/common/proto/Update;Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations;

    goto :goto_0

    .line 1783
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
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 1721
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1722
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1723
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1727
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 1729
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1730
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1731
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 1732
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1736
    :goto_1
    return-object p0

    .line 1725
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 1734
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clear()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clear()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clear()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clear()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMutations()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1941
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1942
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1946
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1947
    return-object p0

    .line 1944
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearTimelineItemId()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 2058
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 2059
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Update;->getTimelineItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2060
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2061
    return-object p0
.end method

.method public clearUserAction()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2279
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 2280
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 2281
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2285
    :goto_0
    return-object p0

    .line 2283
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2

    .prologue
    .line 1740
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
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1684
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
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update;
    .locals 1

    .prologue
    .line 1749
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1745
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Update_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMutations()Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1884
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
    .line 1953
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1954
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1955
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
    .line 1961
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$MutationsOrBuilder;

    .line 1964
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    goto :goto_0
.end method

.method public getTimelineItemId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2004
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2005
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2007
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2010
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
    .line 2022
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2023
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2024
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2027
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2030
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
    .line 2129
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    .line 2132
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
    .line 2313
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
    .line 2376
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserActionCount()I
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2116
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2118
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
    .line 2101
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2104
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
    .line 2324
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;

    .line 2326
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
    .line 2338
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2339
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2341
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

    .line 1875
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
    .line 1993
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
    .line 1695
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
    .line 1840
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->hasMutations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1841
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getMutations()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1843
    const/4 v0, 0x0

    .line 1846
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

    .line 1800
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1836
    :goto_0
    return-object p0

    .line 1801
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update;->hasMutations()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1802
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update;->getMutations()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeMutations(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    .line 1804
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update;->hasTimelineItemId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1805
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1806
    #getter for: Lcom/google/googlex/glass/common/proto/Update;->timelineItemId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1500(Lcom/google/googlex/glass/common/proto/Update;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 1807
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1809
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_5

    .line 1810
    #getter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1600(Lcom/google/googlex/glass/common/proto/Update;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1811
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1812
    #getter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1600(Lcom/google/googlex/glass/common/proto/Update;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 1813
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1818
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1835
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1815
    :cond_4
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 1816
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1600(Lcom/google/googlex/glass/common/proto/Update;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1821
    :cond_5
    #getter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1600(Lcom/google/googlex/glass/common/proto/Update;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1822
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1823
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1824
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1825
    #getter for: Lcom/google/googlex/glass/common/proto/Update;->userAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update;->access$1600(Lcom/google/googlex/glass/common/proto/Update;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    .line 1826
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1827
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->getUserActionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1831
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
    .line 1853
    const/4 v2, 0x0

    .line 1855
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

    .line 1860
    if-eqz v2, :cond_0

    .line 1861
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    .line 1864
    :cond_0
    return-object p0

    .line 1856
    :catch_0
    move-exception v1

    .line 1857
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    move-object v2, v0

    .line 1858
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1860
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1861
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1791
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Update;

    if-eqz v0, :cond_0

    .line 1792
    check-cast p1, Lcom/google/googlex/glass/common/proto/Update;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object p0

    .line 1795
    .end local p0
    :goto_0
    return-object p0

    .line 1794
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
    .line 1684
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1684
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
    .line 1684
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
    .line 1684
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1684
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
    .line 1684
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMutations(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1922
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1924
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->newBuilder(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1929
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1933
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1934
    return-object p0

    .line 1927
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    goto :goto_0

    .line 1931
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public removeUserAction(I)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2296
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2297
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2298
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2302
    :goto_0
    return-object p0

    .line 2300
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setMutations(Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1909
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->build()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1910
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1914
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1915
    return-object p0

    .line 1912
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
    .line 1891
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1892
    if-nez p1, :cond_0

    .line 1893
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1895
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutations_:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1896
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 1900
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 1901
    return-object p0

    .line 1898
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->mutationsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setTimelineItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2042
    if-nez p1, :cond_0

    .line 2043
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2045
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 2046
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2047
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2048
    return-object p0
.end method

.method public setTimelineItemIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2072
    if-nez p1, :cond_0

    .line 2073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2075
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->bitField0_:I

    .line 2076
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->timelineItemId_:Ljava/lang/Object;

    .line 2077
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2078
    return-object p0
.end method

.method public setUserAction(ILcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/googlex/glass/common/proto/Update$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2166
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2167
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2168
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2172
    :goto_0
    return-object p0

    .line 2170
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
    .line 2144
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2145
    if-nez p2, :cond_0

    .line 2146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2148
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->ensureUserActionIsMutable()V

    .line 2149
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2150
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Builder;->onChanged()V

    .line 2154
    :goto_0
    return-object p0

    .line 2152
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Builder;->userActionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
