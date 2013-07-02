.class public final Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$StreamOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$StreamOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$StreamOptions;",
        "Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$StreamOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientInitialTokens_:J

.field private clientLogging_:I

.field private deadline_:D

.field private deprecated_:Z

.field private failFast_:Z

.field private securityLabel_:Ljava/lang/Object;

.field private securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

.field private serverInitialTokens_:J

.field private serverLogging_:I

.field private tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

.field private uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 34836
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    .line 35071
    iput-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    .line 35123
    iput-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    .line 35155
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 35214
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 35265
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 35341
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    .line 35373
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    .line 35405
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deadline_:D

    .line 35529
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 34837
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->maybeForceBuilderInitialization()V

    .line 34838
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 4
    .parameter "parent"

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 34842
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 35071
    iput-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    .line 35123
    iput-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    .line 35155
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 35214
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 35265
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 35341
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    .line 35373
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    .line 35405
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deadline_:D

    .line 35529
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 34843
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->maybeForceBuilderInitialization()V

    .line 34844
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34818
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$25300()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 34818
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 34851
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 2

    .prologue
    .line 35532
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 35533
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 35534
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35536
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 34825
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$25000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35829
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 35830
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v3, 0x400

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 35836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 35838
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 35830
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 34846
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 34847
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 34849
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 35708
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 35709
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 35710
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 35712
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35716
    :goto_0
    return-object p0

    .line 35714
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35690
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 35691
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 35692
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35693
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35697
    :goto_0
    return-object p0

    .line 35695
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35651
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 35652
    if-nez p2, :cond_0

    .line 35653
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35655
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 35656
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35657
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35661
    :goto_0
    return-object p0

    .line 35659
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 35672
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 35673
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 35674
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35675
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35679
    :goto_0
    return-object p0

    .line 35677
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 35630
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 35631
    if-nez p1, :cond_0

    .line 35632
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35634
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 35635
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35636
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35640
    :goto_0
    return-object p0

    .line 35638
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOptionBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 35800
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public addUninterpretedOptionBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 35812
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public build()Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 2

    .prologue
    .line 34899
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    .line 34900
    .local v0, result:Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34901
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 34903
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 5

    .prologue
    .line 34907
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 34908
    .local v1, result:Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34909
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 34910
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 34911
    or-int/lit8 v2, v2, 0x1

    .line 34913
    :cond_0
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25602(Lcom/google/protobuf/DescriptorProtos$StreamOptions;J)J

    .line 34914
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 34915
    or-int/lit8 v2, v2, 0x2

    .line 34917
    :cond_1
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25702(Lcom/google/protobuf/DescriptorProtos$StreamOptions;J)J

    .line 34918
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 34919
    or-int/lit8 v2, v2, 0x4

    .line 34921
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25802(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 34922
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 34923
    or-int/lit8 v2, v2, 0x8

    .line 34925
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25902(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 34926
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 34927
    or-int/lit8 v2, v2, 0x10

    .line 34929
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26002(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34930
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 34931
    or-int/lit8 v2, v2, 0x20

    .line 34933
    :cond_5
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26102(Lcom/google/protobuf/DescriptorProtos$StreamOptions;I)I

    .line 34934
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 34935
    or-int/lit8 v2, v2, 0x40

    .line 34937
    :cond_6
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26202(Lcom/google/protobuf/DescriptorProtos$StreamOptions;I)I

    .line 34938
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 34939
    or-int/lit16 v2, v2, 0x80

    .line 34941
    :cond_7
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deadline_:D

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deadline_:D
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26302(Lcom/google/protobuf/DescriptorProtos$StreamOptions;D)D

    .line 34942
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 34943
    or-int/lit16 v2, v2, 0x100

    .line 34945
    :cond_8
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->failFast_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->failFast_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26402(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Z)Z

    .line 34946
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 34947
    or-int/lit16 v2, v2, 0x200

    .line 34949
    :cond_9
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deprecated_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26502(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Z)Z

    .line 34950
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_b

    .line 34951
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 34952
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 34953
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34955
    :cond_a
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26602(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Ljava/util/List;)Ljava/util/List;

    .line 34959
    :goto_0
    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26702(Lcom/google/protobuf/DescriptorProtos$StreamOptions;I)I

    .line 34960
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onBuilt()V

    .line 34961
    return-object v1

    .line 34957
    :cond_b
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26602(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/16 v1, 0x100

    const/4 v2, 0x0

    .line 34855
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    .line 34856
    iput-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    .line 34857
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34858
    iput-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    .line 34859
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34860
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 34861
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34862
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 34863
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34864
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 34865
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34866
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    .line 34867
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34868
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    .line 34869
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34870
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deadline_:D

    .line 34871
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34872
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->failFast_:Z

    .line 34873
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34874
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deprecated_:Z

    .line 34875
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34876
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 34877
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 34878
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34882
    :goto_0
    return-object p0

    .line 34880
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientInitialTokens()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2

    .prologue
    .line 35117
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    .line 35119
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35120
    return-object p0
.end method

.method public clearClientLogging()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 35367
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35368
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    .line 35369
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35370
    return-object p0
.end method

.method public clearDeadline()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2

    .prologue
    .line 35431
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35432
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deadline_:D

    .line 35433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35434
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 35523
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deprecated_:Z

    .line 35525
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35526
    return-object p0
.end method

.method public clearFailFast()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 35463
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->failFast_:Z

    .line 35465
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35466
    return-object p0
.end method

.method public clearSecurityLabel()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 35322
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35323
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getSecurityLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 35324
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35325
    return-object p0
.end method

.method public clearSecurityLevel()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 35259
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35260
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 35261
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35262
    return-object p0
.end method

.method public clearServerInitialTokens()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2

    .prologue
    .line 35149
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35150
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    .line 35151
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35152
    return-object p0
.end method

.method public clearServerLogging()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 35399
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35400
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    .line 35401
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35402
    return-object p0
.end method

.method public clearTokenUnit()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 35208
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35209
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 35210
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35211
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 35726
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 35727
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 35728
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35729
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35733
    :goto_0
    return-object p0

    .line 35731
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2

    .prologue
    .line 34886
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

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
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientInitialTokens()J
    .locals 2

    .prologue
    .line 35092
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    return-wide v0
.end method

.method public getClientLogging()I
    .locals 1

    .prologue
    .line 35352
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    return v0
.end method

.method public getDeadline()D
    .locals 2

    .prologue
    .line 35416
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deadline_:D

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 34895
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34818
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 35494
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deprecated_:Z

    return v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 34891
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$25000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFailFast()Z
    .locals 1

    .prologue
    .line 35448
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->failFast_:Z

    return v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 35276
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 35277
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 35278
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 35280
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 35281
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35282
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 35286
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

.method public getSecurityLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 35294
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 35295
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 35296
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 35299
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 35302
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

.method public getSecurityLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    .locals 1

    .prologue
    .line 35233
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getServerInitialTokens()J
    .locals 2

    .prologue
    .line 35134
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    return-wide v0
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 35384
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    return v0
.end method

.method public getTokenUnit()Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    .locals 1

    .prologue
    .line 35178
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 35577
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 35578
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 35580
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    goto :goto_0
.end method

.method public getUninterpretedOptionBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 35761
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public getUninterpretedOptionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35824
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 35563
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 35564
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 35566
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35549
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 35550
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 35552
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 35772
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 35773
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    .line 35774
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    goto :goto_0
.end method

.method public getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35786
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 35787
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 35789
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasClientInitialTokens()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 35081
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientLogging()Z
    .locals 2

    .prologue
    .line 35346
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

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

.method public hasDeadline()Z
    .locals 2

    .prologue
    .line 35410
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

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

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 35481
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFailFast()Z
    .locals 2

    .prologue
    .line 35442
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

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

.method public hasSecurityLabel()Z
    .locals 2

    .prologue
    .line 35270
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

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

.method public hasSecurityLevel()Z
    .locals 2

    .prologue
    .line 35223
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

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

.method public hasServerInitialTokens()Z
    .locals 2

    .prologue
    .line 35128
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

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

.method public hasServerLogging()Z
    .locals 2

    .prologue
    .line 35378
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

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

.method public hasTokenUnit()Z
    .locals 2

    .prologue
    .line 35166
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 34830
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$25100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 35039
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 35040
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 35049
    :cond_0
    :goto_1
    return v1

    .line 35039
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35045
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35049
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
    .line 34818
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34818
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

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
    .line 34818
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35056
    const/4 v2, 0x0

    .line 35058
    .local v2, parsedMessage:Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    :try_start_0
    sget-object v3, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35063
    if-eqz v2, :cond_0

    .line 35064
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 35067
    :cond_0
    return-object p0

    .line 35059
    :catch_0
    move-exception v1

    .line 35060
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-object v2, v0

    .line 35061
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35063
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 35064
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 34974
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 35035
    :goto_0
    return-object p0

    .line 34975
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasClientInitialTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34976
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getClientInitialTokens()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setClientInitialTokens(J)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 34978
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasServerInitialTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34979
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getServerInitialTokens()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setServerInitialTokens(J)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 34981
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasTokenUnit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34982
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getTokenUnit()Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setTokenUnit(Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 34984
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasSecurityLevel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34985
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getSecurityLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setSecurityLevel(Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 34987
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasSecurityLabel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34988
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34989
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26000(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 34990
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34992
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasClientLogging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 34993
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getClientLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setClientLogging(I)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 34995
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasServerLogging()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 34996
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getServerLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setServerLogging(I)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 34998
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 34999
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDeadline()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setDeadline(D)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 35001
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasFailFast()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 35002
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getFailFast()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setFailFast(Z)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 35004
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 35005
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 35007
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_d

    .line 35008
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26600(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 35009
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35010
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26600(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 35011
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35016
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35033
    :cond_b
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 35034
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 35013
    :cond_c
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 35014
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26600(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 35019
    :cond_d
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26600(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 35020
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 35021
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 35022
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 35023
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26600(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 35024
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35025
    sget-boolean v1, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_e
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 35029
    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$26600(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 34965
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    if-eqz v0, :cond_0

    .line 34966
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object p0

    .line 34969
    .end local p0
    :goto_0
    return-object p0

    .line 34968
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
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
    .line 34818
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34818
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

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
    .line 34818
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 35743
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 35744
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 35745
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 35746
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35750
    :goto_0
    return-object p0

    .line 35748
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setClientInitialTokens(J)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 35103
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35104
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    .line 35105
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35106
    return-object p0
.end method

.method public setClientLogging(I)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 35358
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35359
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    .line 35360
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35361
    return-object p0
.end method

.method public setDeadline(D)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 35422
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35423
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deadline_:D

    .line 35424
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35425
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 35507
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35508
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deprecated_:Z

    .line 35509
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35510
    return-object p0
.end method

.method public setFailFast(Z)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 35454
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35455
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->failFast_:Z

    .line 35456
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35457
    return-object p0
.end method

.method public setSecurityLabel(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 35310
    if-nez p1, :cond_0

    .line 35311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35313
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35314
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 35315
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35316
    return-object p0
.end method

.method public setSecurityLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 35332
    if-nez p1, :cond_0

    .line 35333
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35335
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35336
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 35337
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35338
    return-object p0
.end method

.method public setSecurityLevel(Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 35243
    if-nez p1, :cond_0

    .line 35244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35246
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35247
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 35248
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35249
    return-object p0
.end method

.method public setServerInitialTokens(J)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 35140
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35141
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    .line 35142
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35143
    return-object p0
.end method

.method public setServerLogging(I)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 35390
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35391
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    .line 35392
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35393
    return-object p0
.end method

.method public setTokenUnit(Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 35190
    if-nez p1, :cond_0

    .line 35191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35193
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 35194
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 35195
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35196
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35613
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 35614
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 35615
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35616
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35620
    :goto_0
    return-object p0

    .line 35618
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35592
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 35593
    if-nez p2, :cond_0

    .line 35594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35596
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 35597
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35598
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 35602
    :goto_0
    return-object p0

    .line 35600
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
