.class public final Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "LogsAnnotations.java"

# interfaces
.implements Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;",
        ">;",
        "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetailsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mayAppearIn_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2597
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2733
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2598
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->maybeForceBuilderInitialization()V

    .line 2599
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 2603
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2733
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2604
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->maybeForceBuilderInitialization()V

    .line 2605
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2580
    invoke-direct {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2100()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1

    .prologue
    .line 2580
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->create()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1

    .prologue
    .line 2612
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    invoke-direct {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMayAppearInIsMutable()V
    .locals 2

    .prologue
    .line 2736
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2737
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2738
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2740
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2586
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMayAppearInFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3051
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 3052
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    iget v3, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3058
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 3060
    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 3052
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2607
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2608
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearInFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2610
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllMayAppearIn(Ljava/lang/Iterable;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;",
            ">;)",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;"
        }
    .end annotation

    .prologue
    .line 2922
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;>;"
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2923
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2924
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2926
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2930
    :goto_0
    return-object p0

    .line 2928
    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMayAppearIn(ILcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2904
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2905
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2906
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2910
    :goto_0
    return-object p0

    .line 2908
    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMayAppearIn(ILcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2863
    if-nez p2, :cond_0

    .line 2864
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2866
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2867
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2868
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2872
    :goto_0
    return-object p0

    .line 2870
    :cond_1
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMayAppearIn(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2885
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2886
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2887
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2891
    :goto_0
    return-object p0

    .line 2889
    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMayAppearIn(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2841
    if-nez p1, :cond_0

    .line 2842
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2844
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2845
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2846
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2850
    :goto_0
    return-object p0

    .line 2848
    :cond_1
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMayAppearInBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 2

    .prologue
    .line 3020
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearInFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    return-object v0
.end method

.method public addMayAppearInBuilder(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 3033
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearInFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 2

    .prologue
    .line 2640
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    .line 2641
    .local v0, result:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    invoke-virtual {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2642
    invoke-static {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2644
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 4

    .prologue
    .line 2648
    new-instance v1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V

    .line 2649
    .local v1, result:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2650
    .local v0, from_bitField0_:I
    iget-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 2651
    iget v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2652
    iget-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2653
    iget v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2655
    :cond_0
    iget-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    #setter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2502(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;Ljava/util/List;)Ljava/util/List;

    .line 2659
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onBuilt()V

    .line 2660
    return-object v1

    .line 2657
    :cond_1
    iget-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2502(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1

    .prologue
    .line 2616
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2617
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2618
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2619
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2623
    :goto_0
    return-object p0

    .line 2621
    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearMayAppearIn()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1

    .prologue
    .line 2941
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2942
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2943
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2944
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2948
    :goto_0
    return-object p0

    .line 2946
    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 2

    .prologue
    .line 2627
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->create()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

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
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2580
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1

    .prologue
    .line 2636
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2632
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMayAppearIn(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "index"

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2785
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    .line 2787
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    goto :goto_0
.end method

.method public getMayAppearInBuilder(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2978
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearInFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    return-object v0
.end method

.method public getMayAppearInBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3046
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearInFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMayAppearInCount()I
    .locals 1

    .prologue
    .line 2769
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2770
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2772
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getMayAppearInList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2754
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2755
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2757
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMayAppearInOrBuilder(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2991
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;

    .line 2992
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;

    goto :goto_0
.end method

.method public getMayAppearInOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 3006
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 3008
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 2591
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    const-class v2, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 2705
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearInCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2706
    invoke-virtual {p0, v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearIn(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2708
    const/4 v1, 0x0

    .line 2711
    :goto_1
    return v1

    .line 2705
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2711
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
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
    .line 2580
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2580
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

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
    .line 2580
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

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
    .line 2580
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2580
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

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
    .line 2580
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2718
    const/4 v2, 0x0

    .line 2720
    .local v2, parsedMessage:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    :try_start_0
    sget-object v3, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2725
    if-eqz v2, :cond_0

    .line 2726
    invoke-virtual {p0, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    .line 2729
    :cond_0
    return-object p0

    .line 2721
    :catch_0
    move-exception v1

    .line 2722
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-object v2, v0

    .line 2723
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2725
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2726
    invoke-virtual {p0, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2664
    instance-of v0, p1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    if-eqz v0, :cond_0

    .line 2665
    check-cast p1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object p0

    .line 2668
    .end local p0
    :goto_0
    return-object p0

    .line 2667
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 2673
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 2701
    :goto_0
    return-object p0

    .line 2674
    :cond_0
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 2675
    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2500(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2676
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2677
    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2500(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2678
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2683
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2700
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 2680
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2681
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2500(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2686
    :cond_3
    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2500(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2687
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2688
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 2689
    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2690
    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2500(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2691
    iget v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2692
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2600()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearInFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 2696
    :cond_5
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2500(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeMayAppearIn(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2960
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2961
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2962
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2966
    :goto_0
    return-object p0

    .line 2964
    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setMayAppearIn(ILcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2823
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2824
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2825
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2829
    :goto_0
    return-object p0

    .line 2827
    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setMayAppearIn(ILcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2801
    if-nez p2, :cond_0

    .line 2802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2804
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2805
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2806
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2810
    :goto_0
    return-object p0

    .line 2808
    :cond_1
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
