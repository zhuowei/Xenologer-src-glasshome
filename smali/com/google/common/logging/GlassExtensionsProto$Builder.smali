.class public final Lcom/google/common/logging/GlassExtensionsProto$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GlassExtensionsProto.java"

# interfaces
.implements Lcom/google/common/logging/GlassExtensionsProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassExtensionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/common/logging/GlassExtensionsProto$Builder;",
        ">;",
        "Lcom/google/common/logging/GlassExtensionsProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

.field private sessionId_:Ljava/lang/Object;

.field private softwareVersion_:Ljava/lang/Object;

.field private userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto;",
            "Lcom/google/common/logging/GlassUserEventProto$Builder;",
            "Lcom/google/common/logging/GlassUserEventProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userEvent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 659
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 865
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 1177
    sget-object v0, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;->UNVERSIONED:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 491
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->maybeForceBuilderInitialization()V

    .line 492
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 659
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 865
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 1177
    sget-object v0, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;->UNVERSIONED:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 497
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->maybeForceBuilderInitialization()V

    .line 498
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/common/logging/GlassExtensionsProto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/google/common/logging/GlassExtensionsProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 473
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->create()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 505
    new-instance v0, Lcom/google/common/logging/GlassExtensionsProto$Builder;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUserEventIsMutable()V
    .locals 2

    .prologue
    .line 868
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 869
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 870
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 872
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassExtensionsProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getUserEventFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto;",
            "Lcom/google/common/logging/GlassUserEventProto$Builder;",
            "Lcom/google/common/logging/GlassUserEventProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1166
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 500
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEventFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 503
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllUserEvent(Ljava/lang/Iterable;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/logging/GlassUserEventProto;",
            ">;)",
            "Lcom/google/common/logging/GlassExtensionsProto$Builder;"
        }
    .end annotation

    .prologue
    .line 1044
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/common/logging/GlassUserEventProto;>;"
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1045
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 1046
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1048
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1052
    :goto_0
    return-object p0

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserEvent(ILcom/google/common/logging/GlassUserEventProto$Builder;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1027
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 1028
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1029
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1033
    :goto_0
    return-object p0

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserEvent(ILcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 988
    if-nez p2, :cond_0

    .line 989
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 991
    :cond_0
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 992
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 993
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 997
    :goto_0
    return-object p0

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserEvent(Lcom/google/common/logging/GlassUserEventProto$Builder;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1009
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 1010
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1015
    :goto_0
    return-object p0

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserEvent(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 967
    if-nez p1, :cond_0

    .line 968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 970
    :cond_0
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 971
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 976
    :goto_0
    return-object p0

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserEventBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEventFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto$Builder;

    return-object v0
.end method

.method public addUserEventBuilder(I)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 1148
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEventFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto$Builder;

    return-object v0
.end method

.method public build()Lcom/google/common/logging/GlassExtensionsProto;
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->buildPartial()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    .line 540
    .local v0, result:Lcom/google/common/logging/GlassExtensionsProto;
    invoke-virtual {v0}, Lcom/google/common/logging/GlassExtensionsProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    invoke-static {v0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 543
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->build()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->build()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/common/logging/GlassExtensionsProto;
    .locals 5

    .prologue
    .line 547
    new-instance v1, Lcom/google/common/logging/GlassExtensionsProto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/common/logging/GlassExtensionsProto;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/common/logging/GlassExtensionsProto$1;)V

    .line 548
    .local v1, result:Lcom/google/common/logging/GlassExtensionsProto;
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 549
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 550
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 551
    or-int/lit8 v2, v2, 0x1

    .line 553
    :cond_0
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    #setter for: Lcom/google/common/logging/GlassExtensionsProto;->sessionId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassExtensionsProto;->access$502(Lcom/google/common/logging/GlassExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 555
    or-int/lit8 v2, v2, 0x2

    .line 557
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/common/logging/GlassExtensionsProto;->softwareVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassExtensionsProto;->access$602(Lcom/google/common/logging/GlassExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_4

    .line 559
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 560
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 561
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 563
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    #setter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassExtensionsProto;->access$702(Lcom/google/common/logging/GlassExtensionsProto;Ljava/util/List;)Ljava/util/List;

    .line 567
    :goto_0
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 568
    or-int/lit8 v2, v2, 0x4

    .line 570
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    #setter for: Lcom/google/common/logging/GlassExtensionsProto;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassExtensionsProto;->access$802(Lcom/google/common/logging/GlassExtensionsProto;Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;)Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 571
    #setter for: Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/common/logging/GlassExtensionsProto;->access$902(Lcom/google/common/logging/GlassExtensionsProto;I)I

    .line 572
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onBuilt()V

    .line 573
    return-object v1

    .line 565
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassExtensionsProto;->access$702(Lcom/google/common/logging/GlassExtensionsProto;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->buildPartial()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->buildPartial()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 510
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 511
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 512
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 513
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 514
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 515
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 516
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 520
    :goto_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;->UNVERSIONED:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 521
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 522
    return-object p0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clear()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clear()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clear()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clear()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHardwareVersion()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 1222
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 1223
    sget-object v0, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;->UNVERSIONED:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 1224
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1225
    return-object p0
.end method

.method public clearSessionId()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 742
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->getDefaultInstance()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassExtensionsProto;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 743
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 744
    return-object p0
.end method

.method public clearSoftwareVersion()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 842
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 843
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->getDefaultInstance()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassExtensionsProto;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 844
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 845
    return-object p0
.end method

.method public clearUserEvent()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1063
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 1064
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 1065
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1069
    :goto_0
    return-object p0

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 2

    .prologue
    .line 526
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->create()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->buildPartial()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassExtensionsProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;

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
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1

    .prologue
    .line 535
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->getDefaultInstance()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 531
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassExtensionsProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHardwareVersion()Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 680
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 681
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 682
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 684
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 686
    iput-object v2, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 690
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

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 703
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 704
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 705
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 708
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 711
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

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 784
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 785
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 786
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 788
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 790
    iput-object v2, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 794
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

.method public getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 806
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 807
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 808
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 811
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 814
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

.method public getUserEvent(I)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    .line 916
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    goto :goto_0
.end method

.method public getUserEventBuilder(I)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1097
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEventFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto$Builder;

    return-object v0
.end method

.method public getUserEventBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1160
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEventFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserEventCount()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 902
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getUserEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 888
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserEventOrBuilder(I)Lcom/google/common/logging/GlassUserEventProtoOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProtoOrBuilder;

    .line 1110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProtoOrBuilder;

    goto :goto_0
.end method

.method public getUserEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/common/logging/GlassUserEventProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasHardwareVersion()Z
    .locals 2

    .prologue
    .line 1186
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 669
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSoftwareVersion()Z
    .locals 2

    .prologue
    .line 774
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

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
    .line 484
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassExtensionsProto_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/common/logging/GlassExtensionsProto;

    const-class v2, Lcom/google/common/logging/GlassExtensionsProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 631
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEventCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 632
    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEvent(I)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/logging/GlassUserEventProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    const/4 v1, 0x0

    .line 637
    :goto_1
    return v1

    .line 631
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/common/logging/GlassExtensionsProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 586
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->getDefaultInstance()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 627
    :goto_0
    return-object p0

    .line 587
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsProto;->hasSessionId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 589
    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->sessionId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$500(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 590
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 592
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsProto;->hasSoftwareVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 593
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 594
    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->softwareVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$600(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 595
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 597
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_6

    .line 598
    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$700(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 599
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 600
    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$700(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 601
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 606
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 623
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsProto;->hasHardwareVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 624
    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsProto;->getHardwareVersion()Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->setHardwareVersion(Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    .line 626
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 603
    :cond_5
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 604
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$700(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 609
    :cond_6
    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$700(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 610
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 611
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 612
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 613
    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$700(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 614
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 615
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEventFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 619
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$700(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    const/4 v2, 0x0

    .line 646
    .local v2, parsedMessage:Lcom/google/common/logging/GlassExtensionsProto;
    :try_start_0
    sget-object v3, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    if-eqz v2, :cond_0

    .line 652
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassExtensionsProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    .line 655
    :cond_0
    return-object p0

    .line 647
    :catch_0
    move-exception v1

    .line 648
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    move-object v2, v0

    .line 649
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 652
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassExtensionsProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 577
    instance-of v0, p1, Lcom/google/common/logging/GlassExtensionsProto;

    if-eqz v0, :cond_0

    .line 578
    check-cast p1, Lcom/google/common/logging/GlassExtensionsProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassExtensionsProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object p0

    .line 581
    .end local p0
    :goto_0
    return-object p0

    .line 580
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
    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

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
    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

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
    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

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
    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeUserEvent(I)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1080
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 1081
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1082
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1086
    :goto_0
    return-object p0

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setHardwareVersion(Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
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
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 1210
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 1211
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1212
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 724
    if-nez p1, :cond_0

    .line 725
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 727
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 728
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 729
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 730
    return-object p0
.end method

.method public setSessionIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 756
    if-nez p1, :cond_0

    .line 757
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 759
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 760
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 761
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 762
    return-object p0
.end method

.method public setSoftwareVersion(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 826
    if-nez p1, :cond_0

    .line 827
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 829
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 830
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 831
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 832
    return-object p0
.end method

.method public setSoftwareVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 856
    if-nez p1, :cond_0

    .line 857
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 859
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 860
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 861
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 862
    return-object p0
.end method

.method public setUserEvent(ILcom/google/common/logging/GlassUserEventProto$Builder;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 951
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 952
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 956
    :goto_0
    return-object p0

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUserEvent(ILcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 929
    if-nez p2, :cond_0

    .line 930
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 932
    :cond_0
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 933
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 934
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 938
    :goto_0
    return-object p0

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
