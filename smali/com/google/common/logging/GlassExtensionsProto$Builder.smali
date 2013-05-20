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
    .line 488
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 657
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 857
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 1169
    sget-object v0, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;->UNVERSIONED:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 489
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->maybeForceBuilderInitialization()V

    .line 490
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 657
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 857
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 1169
    sget-object v0, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;->UNVERSIONED:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 495
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->maybeForceBuilderInitialization()V

    .line 496
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/common/logging/GlassExtensionsProto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/google/common/logging/GlassExtensionsProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 471
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->create()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 503
    new-instance v0, Lcom/google/common/logging/GlassExtensionsProto$Builder;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUserEventIsMutable()V
    .locals 2

    .prologue
    .line 860
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 862
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 864
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 477
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
    .line 1157
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1158
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

    .line 1164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEventFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 501
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
    .line 1036
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/common/logging/GlassUserEventProto;>;"
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1037
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 1038
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1040
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1044
    :goto_0
    return-object p0

    .line 1042
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
    .line 1018
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1019
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 1020
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1021
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1025
    :goto_0
    return-object p0

    .line 1023
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
    .line 979
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 980
    if-nez p2, :cond_0

    .line 981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 983
    :cond_0
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 984
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 985
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 989
    :goto_0
    return-object p0

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserEvent(Lcom/google/common/logging/GlassUserEventProto$Builder;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1001
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 1002
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1007
    :goto_0
    return-object p0

    .line 1005
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
    .line 958
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 959
    if-nez p1, :cond_0

    .line 960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 962
    :cond_0
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 963
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 968
    :goto_0
    return-object p0

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUserEventBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2

    .prologue
    .line 1128
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
    .line 1140
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
    .line 537
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->buildPartial()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    .line 538
    .local v0, result:Lcom/google/common/logging/GlassExtensionsProto;
    invoke-virtual {v0}, Lcom/google/common/logging/GlassExtensionsProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    invoke-static {v0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 541
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->build()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->build()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/common/logging/GlassExtensionsProto;
    .locals 5

    .prologue
    .line 545
    new-instance v1, Lcom/google/common/logging/GlassExtensionsProto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/common/logging/GlassExtensionsProto;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/common/logging/GlassExtensionsProto$1;)V

    .line 546
    .local v1, result:Lcom/google/common/logging/GlassExtensionsProto;
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 547
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 548
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 549
    or-int/lit8 v2, v2, 0x1

    .line 551
    :cond_0
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    #setter for: Lcom/google/common/logging/GlassExtensionsProto;->sessionId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassExtensionsProto;->access$502(Lcom/google/common/logging/GlassExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 553
    or-int/lit8 v2, v2, 0x2

    .line 555
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/common/logging/GlassExtensionsProto;->softwareVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassExtensionsProto;->access$602(Lcom/google/common/logging/GlassExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_4

    .line 557
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 558
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 559
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 561
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    #setter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassExtensionsProto;->access$702(Lcom/google/common/logging/GlassExtensionsProto;Ljava/util/List;)Ljava/util/List;

    .line 565
    :goto_0
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 566
    or-int/lit8 v2, v2, 0x4

    .line 568
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    #setter for: Lcom/google/common/logging/GlassExtensionsProto;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassExtensionsProto;->access$802(Lcom/google/common/logging/GlassExtensionsProto;Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;)Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 569
    #setter for: Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/common/logging/GlassExtensionsProto;->access$902(Lcom/google/common/logging/GlassExtensionsProto;I)I

    .line 570
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onBuilt()V

    .line 571
    return-object v1

    .line 563
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
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->buildPartial()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->buildPartial()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 507
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 508
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 509
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 510
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 511
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 512
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 513
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 514
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 518
    :goto_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;->UNVERSIONED:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 519
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 520
    return-object p0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clear()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clear()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clear()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clear()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearHardwareVersion()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 1214
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 1215
    sget-object v0, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;->UNVERSIONED:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 1216
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1217
    return-object p0
.end method

.method public clearSessionId()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 737
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->getDefaultInstance()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassExtensionsProto;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 738
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 739
    return-object p0
.end method

.method public clearSoftwareVersion()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 835
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->getDefaultInstance()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassExtensionsProto;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 836
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 837
    return-object p0
.end method

.method public clearUserEvent()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1055
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 1056
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 1057
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1061
    :goto_0
    return-object p0

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 2

    .prologue
    .line 524
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
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 471
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
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->clone()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1

    .prologue
    .line 533
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->getDefaultInstance()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassExtensionsProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHardwareVersion()Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 679
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 680
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 685
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

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 698
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 699
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 700
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 703
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 706
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
    .locals 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 780
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 781
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 786
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

.method public getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 798
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 799
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 800
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 803
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 806
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
    .line 905
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    .line 908
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
    .line 1089
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
    .line 1152
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEventFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserEventCount()I
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 894
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
    .line 877
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 880
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
    .line 1100
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProtoOrBuilder;

    .line 1102
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
    .line 1114
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1117
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
    .line 1178
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

    .line 667
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
    .line 769
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
    .line 482
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
    .line 629
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEventCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 630
    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEvent(I)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/logging/GlassUserEventProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    const/4 v1, 0x0

    .line 635
    :goto_1
    return v1

    .line 629
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/common/logging/GlassExtensionsProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 584
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->getDefaultInstance()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 625
    :goto_0
    return-object p0

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsProto;->hasSessionId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 587
    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->sessionId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$500(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 588
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 590
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsProto;->hasSoftwareVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 592
    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->softwareVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$600(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 593
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 595
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_6

    .line 596
    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$700(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 598
    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$700(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 599
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 604
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 621
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsProto;->hasHardwareVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 622
    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsProto;->getHardwareVersion()Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->setHardwareVersion(Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    .line 624
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 601
    :cond_5
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 602
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$700(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 607
    :cond_6
    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$700(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 608
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 609
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 610
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 611
    #getter for: Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassExtensionsProto;->access$700(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    .line 612
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 613
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->getUserEventFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 617
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
    .line 642
    const/4 v2, 0x0

    .line 644
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

    .line 649
    if-eqz v2, :cond_0

    .line 650
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassExtensionsProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    .line 653
    :cond_0
    return-object p0

    .line 645
    :catch_0
    move-exception v1

    .line 646
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    move-object v2, v0

    .line 647
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 650
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassExtensionsProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 575
    instance-of v0, p1, Lcom/google/common/logging/GlassExtensionsProto;

    if-eqz v0, :cond_0

    .line 576
    check-cast p1, Lcom/google/common/logging/GlassExtensionsProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassExtensionsProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object p0

    .line 579
    .end local p0
    :goto_0
    return-object p0

    .line 578
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
    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 471
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
    .line 471
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
    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 471
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
    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeUserEvent(I)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1072
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 1073
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1074
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1078
    :goto_0
    return-object p0

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setHardwareVersion(Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1198
    if-nez p1, :cond_0

    .line 1199
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1201
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 1202
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 1203
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 1204
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 719
    if-nez p1, :cond_0

    .line 720
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 722
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 723
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 724
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 725
    return-object p0
.end method

.method public setSessionIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 751
    if-nez p1, :cond_0

    .line 752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 754
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 755
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->sessionId_:Ljava/lang/Object;

    .line 756
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 757
    return-object p0
.end method

.method public setSoftwareVersion(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 818
    if-nez p1, :cond_0

    .line 819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 821
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 822
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 823
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 824
    return-object p0
.end method

.method public setSoftwareVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 848
    if-nez p1, :cond_0

    .line 849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 851
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->bitField0_:I

    .line 852
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->softwareVersion_:Ljava/lang/Object;

    .line 853
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 854
    return-object p0
.end method

.method public setUserEvent(ILcom/google/common/logging/GlassUserEventProto$Builder;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 941
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 943
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 944
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 948
    :goto_0
    return-object p0

    .line 946
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
    .line 920
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 921
    if-nez p2, :cond_0

    .line 922
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 924
    :cond_0
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->ensureUserEventIsMutable()V

    .line 925
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 926
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->onChanged()V

    .line 930
    :goto_0
    return-object p0

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto$Builder;->userEventBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
