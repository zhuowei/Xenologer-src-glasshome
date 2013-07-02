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
    .line 2605
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2741
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2606
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->maybeForceBuilderInitialization()V

    .line 2607
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 2611
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2741
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2612
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->maybeForceBuilderInitialization()V

    .line 2613
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2588
    invoke-direct {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2100()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1

    .prologue
    .line 2588
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->create()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1

    .prologue
    .line 2620
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    invoke-direct {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMayAppearInIsMutable()V
    .locals 2

    .prologue
    .line 2744
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2745
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2746
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2748
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2594
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

    .line 3059
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 3060
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

    .line 3066
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 3068
    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 3060
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2615
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2616
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearInFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2618
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
    .line 2930
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;>;"
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2931
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2932
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2934
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2938
    :goto_0
    return-object p0

    .line 2936
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
    .line 2911
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2912
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2913
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2914
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2918
    :goto_0
    return-object p0

    .line 2916
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
    .line 2870
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2871
    if-nez p2, :cond_0

    .line 2872
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2874
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2875
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2876
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2880
    :goto_0
    return-object p0

    .line 2878
    :cond_1
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMayAppearIn(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2893
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2894
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2895
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2899
    :goto_0
    return-object p0

    .line 2897
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
    .line 2848
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2849
    if-nez p1, :cond_0

    .line 2850
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2852
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2853
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2854
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2858
    :goto_0
    return-object p0

    .line 2856
    :cond_1
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMayAppearInBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 2

    .prologue
    .line 3028
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
    .line 3041
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
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 2

    .prologue
    .line 2648
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    .line 2649
    .local v0, result:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    invoke-virtual {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2650
    invoke-static {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2652
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 4

    .prologue
    .line 2656
    new-instance v1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V

    .line 2657
    .local v1, result:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2658
    .local v0, from_bitField0_:I
    iget-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 2659
    iget v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2660
    iget-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2661
    iget v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2663
    :cond_0
    iget-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    #setter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2502(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;Ljava/util/List;)Ljava/util/List;

    .line 2667
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onBuilt()V

    .line 2668
    return-object v1

    .line 2665
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
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1

    .prologue
    .line 2624
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2625
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2626
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2627
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2631
    :goto_0
    return-object p0

    .line 2629
    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearMayAppearIn()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2950
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2951
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2952
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2956
    :goto_0
    return-object p0

    .line 2954
    :cond_0
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 2

    .prologue
    .line 2635
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
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->clone()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1

    .prologue
    .line 2644
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2640
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMayAppearIn(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "index"

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2793
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    .line 2795
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
    .line 2986
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
    .line 3054
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearInFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMayAppearInCount()I
    .locals 1

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2778
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2780
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
    .line 2762
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2763
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2765
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
    .line 2998
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2999
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;

    .line 3000
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
    .line 3013
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 3014
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 3016
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
    .line 2599
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
    .line 2713
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearInCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2714
    invoke-virtual {p0, v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearIn(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2716
    const/4 v1, 0x0

    .line 2719
    :goto_1
    return v1

    .line 2713
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2719
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
    .line 2588
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2588
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
    .line 2588
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
    .line 2588
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2588
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
    .line 2588
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
    .line 2726
    const/4 v2, 0x0

    .line 2728
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

    .line 2733
    if-eqz v2, :cond_0

    .line 2734
    invoke-virtual {p0, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    .line 2737
    :cond_0
    return-object p0

    .line 2729
    :catch_0
    move-exception v1

    .line 2730
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-object v2, v0

    .line 2731
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2733
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2734
    invoke-virtual {p0, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2672
    instance-of v0, p1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    if-eqz v0, :cond_0

    .line 2673
    check-cast p1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object p0

    .line 2676
    .end local p0
    :goto_0
    return-object p0

    .line 2675
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

    .line 2681
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 2709
    :goto_0
    return-object p0

    .line 2682
    :cond_0
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 2683
    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2500(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2684
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2685
    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2500(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2686
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2691
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2708
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 2688
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2689
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2500(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2694
    :cond_3
    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2500(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2695
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2696
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 2697
    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2698
    #getter for: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2500(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    .line 2699
    iget v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->bitField0_:I

    .line 2700
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->access$2600()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->getMayAppearInFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 2704
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
    .line 2967
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2968
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2969
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2970
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2974
    :goto_0
    return-object p0

    .line 2972
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
    .line 2830
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2831
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2832
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->build()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2833
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2837
    :goto_0
    return-object p0

    .line 2835
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
    .line 2808
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2809
    if-nez p2, :cond_0

    .line 2810
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2812
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->ensureMayAppearInIsMutable()V

    .line 2813
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2814
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->onChanged()V

    .line 2818
    :goto_0
    return-object p0

    .line 2816
    :cond_1
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mayAppearInBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
