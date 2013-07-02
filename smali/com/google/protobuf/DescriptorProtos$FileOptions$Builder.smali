.class public final Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

.field private ccApiVersion_:I

.field private ccGenericServices_:Z

.field private ccProto1TextFormat_:Z

.field private ccProtoArrayCompatible_:Z

.field private ccUtf8Verification_:Z

.field private deprecated_:Z

.field private goPackage_:Ljava/lang/Object;

.field private javaAltApiPackage_:Ljava/lang/Object;

.field private javaApiVersion_:I

.field private javaEnableDualGenerateMutableApi_:Z

.field private javaGenerateEqualsAndHash_:Z

.field private javaGenerateRpcBaseimpl_:Z

.field private javaGenericServices_:Z

.field private javaJava5Enums_:Z

.field private javaMultipleFiles_:Z

.field private javaOuterClassname_:Ljava/lang/Object;

.field private javaPackage_:Ljava/lang/Object;

.field private javaStringCheckUtf8_:Z

.field private javaUseJavaproto2_:Z

.field private javaUseJavastrings_:Z

.field private javascriptPackage_:Ljava/lang/Object;

.field private optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

.field private pyApiVersion_:I

.field private pyGenericServices_:Z

.field private szlApiVersion_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 18451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    .line 18838
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiVersion_:I

    .line 18902
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    .line 18937
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccProtoArrayCompatible_:Z

    .line 19029
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccUtf8Verification_:Z

    .line 19129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 19271
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyApiVersion_:I

    .line 19323
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaApiVersion_:I

    .line 19371
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaUseJavaproto2_:Z

    .line 19435
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaJava5Enums_:Z

    .line 19531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaAltApiPackage_:Ljava/lang/Object;

    .line 19685
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaEnableDualGenerateMutableApi_:Z

    .line 19797
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 20141
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 20176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 20282
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javascriptPackage_:Ljava/lang/Object;

    .line 20394
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->szlApiVersion_:I

    .line 20702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 18452
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->maybeForceBuilderInitialization()V

    .line 18453
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 3
    .parameter "parent"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 18457
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 18838
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiVersion_:I

    .line 18902
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    .line 18937
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccProtoArrayCompatible_:Z

    .line 19029
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccUtf8Verification_:Z

    .line 19129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 19271
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyApiVersion_:I

    .line 19323
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaApiVersion_:I

    .line 19371
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaUseJavaproto2_:Z

    .line 19435
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaJava5Enums_:Z

    .line 19531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaAltApiPackage_:Ljava/lang/Object;

    .line 19685
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaEnableDualGenerateMutableApi_:Z

    .line 19797
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 20141
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 20176
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 20282
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javascriptPackage_:Ljava/lang/Object;

    .line 20394
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->szlApiVersion_:I

    .line 20702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 18458
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->maybeForceBuilderInitialization()V

    .line 18459
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18433
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$12900()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 18433
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 18466
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 3

    .prologue
    const/high16 v2, 0x400

    .line 20705
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 20706
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 20707
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20709
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 18440
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$12600()Lcom/google/protobuf/Descriptors$Descriptor;

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
    const/high16 v3, 0x400

    .line 21002
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 21003
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 21009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 21011
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 21003
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 18461
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 18462
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 18464
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 20881
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 20882
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 20883
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 20885
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20889
    :goto_0
    return-object p0

    .line 20887
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20863
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 20864
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 20865
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20866
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20870
    :goto_0
    return-object p0

    .line 20868
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20824
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 20825
    if-nez p2, :cond_0

    .line 20826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20828
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 20829
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20830
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20834
    :goto_0
    return-object p0

    .line 20832
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 20845
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 20846
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 20847
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20848
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20852
    :goto_0
    return-object p0

    .line 20850
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 20803
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 20804
    if-nez p1, :cond_0

    .line 20805
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20807
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 20808
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20809
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20813
    :goto_0
    return-object p0

    .line 20811
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOptionBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 20973
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 20985
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public build()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 18546
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    .line 18547
    .local v0, result:Lcom/google/protobuf/DescriptorProtos$FileOptions;
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18548
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 18550
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 10

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 18554
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 18555
    .local v1, result:Lcom/google/protobuf/DescriptorProtos$FileOptions;
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18556
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 18557
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 18558
    or-int/lit8 v2, v2, 0x1

    .line 18560
    :cond_0
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiVersion_:I

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiVersion_:I
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$13202(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I

    .line 18561
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 18562
    or-int/lit8 v2, v2, 0x2

    .line 18564
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$13302(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;)Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    .line 18565
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 18566
    or-int/lit8 v2, v2, 0x4

    .line 18568
    :cond_2
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccProtoArrayCompatible_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$13402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18569
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 18570
    or-int/lit8 v2, v2, 0x8

    .line 18572
    :cond_3
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccUtf8Verification_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccUtf8Verification_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$13502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18573
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 18574
    or-int/lit8 v2, v2, 0x10

    .line 18576
    :cond_4
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccProto1TextFormat_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProto1TextFormat_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$13602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18577
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 18578
    or-int/lit8 v2, v2, 0x20

    .line 18580
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$13702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18581
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 18582
    or-int/lit8 v2, v2, 0x40

    .line 18584
    :cond_6
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyApiVersion_:I

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyApiVersion_:I
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$13802(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I

    .line 18585
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 18586
    or-int/lit16 v2, v2, 0x80

    .line 18588
    :cond_7
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaApiVersion_:I

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaApiVersion_:I
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$13902(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I

    .line 18589
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 18590
    or-int/lit16 v2, v2, 0x100

    .line 18592
    :cond_8
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaUseJavaproto2_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavaproto2_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14002(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18593
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 18594
    or-int/lit16 v2, v2, 0x200

    .line 18596
    :cond_9
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaJava5Enums_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaJava5Enums_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18597
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 18598
    or-int/lit16 v2, v2, 0x400

    .line 18600
    :cond_a
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateRpcBaseimpl_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14202(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18601
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 18602
    or-int/lit16 v2, v2, 0x800

    .line 18604
    :cond_b
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaUseJavastrings_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavastrings_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14302(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18605
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 18606
    or-int/lit16 v2, v2, 0x1000

    .line 18608
    :cond_c
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaAltApiPackage_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18609
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 18610
    or-int/lit16 v2, v2, 0x2000

    .line 18612
    :cond_d
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaEnableDualGenerateMutableApi_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18613
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 18614
    or-int/lit16 v2, v2, 0x4000

    .line 18616
    :cond_e
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18617
    and-int v3, v0, v5

    if-ne v3, v5, :cond_f

    .line 18618
    or-int/2addr v2, v5

    .line 18620
    :cond_f
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18621
    and-int v3, v0, v6

    if-ne v3, v6, :cond_10

    .line 18622
    or-int/2addr v2, v6

    .line 18624
    :cond_10
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18625
    and-int v3, v0, v7

    if-ne v3, v7, :cond_11

    .line 18626
    or-int/2addr v2, v7

    .line 18628
    :cond_11
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18629
    and-int v3, v0, v8

    if-ne v3, v8, :cond_12

    .line 18630
    or-int/2addr v2, v8

    .line 18632
    :cond_12
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15002(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 18633
    and-int v3, v0, v9

    if-ne v3, v9, :cond_13

    .line 18634
    or-int/2addr v2, v9

    .line 18636
    :cond_13
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18637
    const/high16 v3, 0x10

    and-int/2addr v3, v0

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_14

    .line 18638
    const/high16 v3, 0x10

    or-int/2addr v2, v3

    .line 18640
    :cond_14
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javascriptPackage_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15202(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18641
    const/high16 v3, 0x20

    and-int/2addr v3, v0

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_15

    .line 18642
    const/high16 v3, 0x20

    or-int/2addr v2, v3

    .line 18644
    :cond_15
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->szlApiVersion_:I

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->szlApiVersion_:I
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15302(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I

    .line 18645
    const/high16 v3, 0x40

    and-int/2addr v3, v0

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_16

    .line 18646
    const/high16 v3, 0x40

    or-int/2addr v2, v3

    .line 18648
    :cond_16
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18649
    const/high16 v3, 0x80

    and-int/2addr v3, v0

    const/high16 v4, 0x80

    if-ne v3, v4, :cond_17

    .line 18650
    const/high16 v3, 0x80

    or-int/2addr v2, v3

    .line 18652
    :cond_17
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18653
    const/high16 v3, 0x100

    and-int/2addr v3, v0

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_18

    .line 18654
    const/high16 v3, 0x100

    or-int/2addr v2, v3

    .line 18656
    :cond_18
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18657
    const/high16 v3, 0x200

    and-int/2addr v3, v0

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_19

    .line 18658
    const/high16 v3, 0x200

    or-int/2addr v2, v3

    .line 18660
    :cond_19
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 18661
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_1b

    .line 18662
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v4, 0x400

    and-int/2addr v3, v4

    const/high16 v4, 0x400

    if-ne v3, v4, :cond_1a

    .line 18663
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 18664
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v4, -0x4000001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18666
    :cond_1a
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 18670
    :goto_0
    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15902(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I

    .line 18671
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onBuilt()V

    .line 18672
    return-object v1

    .line 18668
    :cond_1b
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18470
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    .line 18471
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiVersion_:I

    .line 18472
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18473
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    .line 18474
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18475
    iput-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccProtoArrayCompatible_:Z

    .line 18476
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18477
    iput-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccUtf8Verification_:Z

    .line 18478
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18479
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccProto1TextFormat_:Z

    .line 18480
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18481
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 18482
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18483
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyApiVersion_:I

    .line 18484
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18485
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaApiVersion_:I

    .line 18486
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18487
    iput-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaUseJavaproto2_:Z

    .line 18488
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18489
    iput-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaJava5Enums_:Z

    .line 18490
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18491
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateRpcBaseimpl_:Z

    .line 18492
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18493
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaUseJavastrings_:Z

    .line 18494
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18495
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaAltApiPackage_:Ljava/lang/Object;

    .line 18496
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18497
    iput-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaEnableDualGenerateMutableApi_:Z

    .line 18498
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18499
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 18500
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18501
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    .line 18502
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18503
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    .line 18504
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18505
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    .line 18506
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18507
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 18508
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18509
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 18510
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18511
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javascriptPackage_:Ljava/lang/Object;

    .line 18512
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18513
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->szlApiVersion_:I

    .line 18514
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18515
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    .line 18516
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18517
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    .line 18518
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18519
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    .line 18520
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18521
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    .line 18522
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18523
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 18524
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 18525
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18529
    :goto_0
    return-object p0

    .line 18527
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCcApiCompatibility()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 18931
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18932
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    .line 18933
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 18934
    return-object p0
.end method

.method public clearCcApiVersion()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 18896
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18897
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiVersion_:I

    .line 18898
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 18899
    return-object p0
.end method

.method public clearCcGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 20572
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    .line 20574
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20575
    return-object p0
.end method

.method public clearCcProto1TextFormat()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19123
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccProto1TextFormat_:Z

    .line 19125
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19126
    return-object p0
.end method

.method public clearCcProtoArrayCompatible()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19023
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19024
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccProtoArrayCompatible_:Z

    .line 19025
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19026
    return-object p0
.end method

.method public clearCcUtf8Verification()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19075
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccUtf8Verification_:Z

    .line 19077
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19078
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 20696
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    .line 20698
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20699
    return-object p0
.end method

.method public clearGoPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 20258
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20259
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 20260
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20261
    return-object p0
.end method

.method public clearJavaAltApiPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19653
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19654
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaAltApiPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaAltApiPackage_:Ljava/lang/Object;

    .line 19655
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19656
    return-object p0
.end method

.method public clearJavaApiVersion()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19365
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19366
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaApiVersion_:I

    .line 19367
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19368
    return-object p0
.end method

.method public clearJavaEnableDualGenerateMutableApi()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19791
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaEnableDualGenerateMutableApi_:Z

    .line 19793
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19794
    return-object p0
.end method

.method public clearJavaGenerateEqualsAndHash()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 20067
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20068
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    .line 20069
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20070
    return-object p0
.end method

.method public clearJavaGenerateRpcBaseimpl()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19493
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateRpcBaseimpl_:Z

    .line 19495
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19496
    return-object p0
.end method

.method public clearJavaGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 20604
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    .line 20606
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20607
    return-object p0
.end method

.method public clearJavaJava5Enums()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19461
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaJava5Enums_:Z

    .line 19463
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19464
    return-object p0
.end method

.method public clearJavaMultipleFiles()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 19983
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    .line 19985
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19986
    return-object p0
.end method

.method public clearJavaOuterClassname()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19894
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19895
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 19896
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19897
    return-object p0
.end method

.method public clearJavaPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19241
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19242
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 19243
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19244
    return-object p0
.end method

.method public clearJavaStringCheckUtf8()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 20135
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    .line 20137
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20138
    return-object p0
.end method

.method public clearJavaUseJavaproto2()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19429
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaUseJavaproto2_:Z

    .line 19431
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19432
    return-object p0
.end method

.method public clearJavaUseJavastrings()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19525
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaUseJavastrings_:Z

    .line 19527
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19528
    return-object p0
.end method

.method public clearJavascriptPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 20369
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20370
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavascriptPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javascriptPackage_:Ljava/lang/Object;

    .line 20371
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20372
    return-object p0
.end method

.method public clearOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 20170
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20171
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 20172
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20173
    return-object p0
.end method

.method public clearPyApiVersion()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 19317
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19318
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyApiVersion_:I

    .line 19319
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19320
    return-object p0
.end method

.method public clearPyGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 20636
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    .line 20638
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20639
    return-object p0
.end method

.method public clearSzlApiVersion()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 20472
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20473
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->szlApiVersion_:I

    .line 20474
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20475
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 20899
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 20900
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 20901
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20902
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20906
    :goto_0
    return-object p0

    .line 20904
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 18533
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

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
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCcApiCompatibility()Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;
    .locals 1

    .prologue
    .line 18913
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    return-object v0
.end method

.method public getCcApiVersion()I
    .locals 1

    .prologue
    .line 18865
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiVersion_:I

    return v0
.end method

.method public getCcGenericServices()Z
    .locals 1

    .prologue
    .line 20523
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    return v0
.end method

.method public getCcProto1TextFormat()Z
    .locals 1

    .prologue
    .line 19100
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccProto1TextFormat_:Z

    return v0
.end method

.method public getCcProtoArrayCompatible()Z
    .locals 1

    .prologue
    .line 18978
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccProtoArrayCompatible_:Z

    return v0
.end method

.method public getCcUtf8Verification()Z
    .locals 1

    .prologue
    .line 19050
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccUtf8Verification_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 18542
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 20667
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    return v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 18538
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$12600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGoPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 20197
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 20198
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 20199
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20201
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 20202
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20203
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 20207
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

.method public getGoPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 20220
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 20221
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 20222
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20225
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 20228
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

.method public getJavaAltApiPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19568
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaAltApiPackage_:Ljava/lang/Object;

    .line 19569
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 19570
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19572
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19573
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19574
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaAltApiPackage_:Ljava/lang/Object;

    .line 19578
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

.method public getJavaAltApiPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 19599
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaAltApiPackage_:Ljava/lang/Object;

    .line 19600
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 19601
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19604
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaAltApiPackage_:Ljava/lang/Object;

    .line 19607
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

.method public getJavaApiVersion()I
    .locals 1

    .prologue
    .line 19342
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaApiVersion_:I

    return v0
.end method

.method public getJavaEnableDualGenerateMutableApi()Z
    .locals 1

    .prologue
    .line 19736
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaEnableDualGenerateMutableApi_:Z

    return v0
.end method

.method public getJavaGenerateEqualsAndHash()Z
    .locals 1

    .prologue
    .line 20026
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    return v0
.end method

.method public getJavaGenerateRpcBaseimpl()Z
    .locals 1

    .prologue
    .line 19478
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateRpcBaseimpl_:Z

    return v0
.end method

.method public getJavaGenericServices()Z
    .locals 1

    .prologue
    .line 20589
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    return v0
.end method

.method public getJavaJava5Enums()Z
    .locals 1

    .prologue
    .line 19446
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaJava5Enums_:Z

    return v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .prologue
    .line 19950
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19824
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 19825
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 19826
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19828
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19829
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19830
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 19834
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

.method public getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 19850
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 19851
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 19852
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19855
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 19858
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

.method public getJavaPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19162
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 19163
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 19164
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19166
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19167
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19168
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 19172
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

.method public getJavaPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 19191
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 19192
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 19193
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19196
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 19199
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

.method public getJavaStringCheckUtf8()Z
    .locals 1

    .prologue
    .line 20102
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    return v0
.end method

.method public getJavaUseJavaproto2()Z
    .locals 1

    .prologue
    .line 19398
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaUseJavaproto2_:Z

    return v0
.end method

.method public getJavaUseJavastrings()Z
    .locals 1

    .prologue
    .line 19510
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaUseJavastrings_:Z

    return v0
.end method

.method public getJavascriptPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 20305
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javascriptPackage_:Ljava/lang/Object;

    .line 20306
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 20307
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20309
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 20310
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20311
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javascriptPackage_:Ljava/lang/Object;

    .line 20315
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

.method public getJavascriptPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 20329
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javascriptPackage_:Ljava/lang/Object;

    .line 20330
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 20331
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20334
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javascriptPackage_:Ljava/lang/Object;

    .line 20337
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

.method public getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .prologue
    .line 20152
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object v0
.end method

.method public getPyApiVersion()I
    .locals 1

    .prologue
    .line 19292
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyApiVersion_:I

    return v0
.end method

.method public getPyGenericServices()Z
    .locals 1

    .prologue
    .line 20621
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    return v0
.end method

.method public getSzlApiVersion()I
    .locals 1

    .prologue
    .line 20431
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->szlApiVersion_:I

    return v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 20750
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 20751
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 20753
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    goto :goto_0
.end method

.method public getUninterpretedOptionBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 20934
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 20997
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 20736
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 20737
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 20739
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 20722
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 20723
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 20725
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 20945
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 20946
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    .line 20947
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 20959
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 20960
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 20962
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCcApiCompatibility()Z
    .locals 2

    .prologue
    .line 18907
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

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

.method public hasCcApiVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 18851
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCcGenericServices()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 20500
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCcProto1TextFormat()Z
    .locals 2

    .prologue
    .line 19090
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

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

.method public hasCcProtoArrayCompatible()Z
    .locals 2

    .prologue
    .line 18957
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

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

.method public hasCcUtf8Verification()Z
    .locals 2

    .prologue
    .line 19039
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

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

.method public hasDeprecated()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200

    .line 20654
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGoPackage()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8

    .line 20186
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaAltApiPackage()Z
    .locals 2

    .prologue
    .line 19549
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaApiVersion()Z
    .locals 2

    .prologue
    .line 19332
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

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

.method public hasJavaEnableDualGenerateMutableApi()Z
    .locals 2

    .prologue
    .line 19710
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaGenerateEqualsAndHash()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 20007
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaGenerateRpcBaseimpl()Z
    .locals 2

    .prologue
    .line 19472
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaGenericServices()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80

    .line 20583
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaJava5Enums()Z
    .locals 2

    .prologue
    .line 19440
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

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

.method public hasJavaMultipleFiles()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 19935
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaOuterClassname()Z
    .locals 2

    .prologue
    .line 19810
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaPackage()Z
    .locals 2

    .prologue
    .line 19145
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

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

.method public hasJavaStringCheckUtf8()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 20087
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaUseJavaproto2()Z
    .locals 2

    .prologue
    .line 19384
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

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

.method public hasJavaUseJavastrings()Z
    .locals 2

    .prologue
    .line 19504
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavascriptPackage()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10

    .line 20293
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOptimizeFor()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 20146
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPyApiVersion()Z
    .locals 2

    .prologue
    .line 19281
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

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

.method public hasPyGenericServices()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 20615
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSzlApiVersion()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 20412
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 18445
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$12700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 18806
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 18807
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 18816
    :cond_0
    :goto_1
    return v1

    .line 18806
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18812
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18816
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
    .line 18433
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18433
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

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
    .line 18433
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18823
    const/4 v2, 0x0

    .line 18825
    .local v2, parsedMessage:Lcom/google/protobuf/DescriptorProtos$FileOptions;
    :try_start_0
    sget-object v3, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18830
    if-eqz v2, :cond_0

    .line 18831
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18834
    :cond_0
    return-object p0

    .line 18826
    :catch_0
    move-exception v1

    .line 18827
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-object v2, v0

    .line 18828
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18830
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 18831
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 4
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    const v3, -0x4000001

    .line 18685
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 18802
    :goto_0
    return-object p0

    .line 18686
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcApiVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18687
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcApiVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setCcApiVersion(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18689
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcApiCompatibility()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18690
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcApiCompatibility()Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setCcApiCompatibility(Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18692
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcProtoArrayCompatible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18693
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcProtoArrayCompatible()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setCcProtoArrayCompatible(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18695
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcUtf8Verification()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18696
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcUtf8Verification()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setCcUtf8Verification(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18698
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcProto1TextFormat()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18699
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcProto1TextFormat()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setCcProto1TextFormat(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18701
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18702
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18703
    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$13700(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 18704
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 18706
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyApiVersion()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18707
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPyApiVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setPyApiVersion(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18709
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaApiVersion()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 18710
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaApiVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaApiVersion(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18712
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaUseJavaproto2()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18713
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaUseJavaproto2()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaUseJavaproto2(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18715
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaJava5Enums()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 18716
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaJava5Enums()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaJava5Enums(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18718
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateRpcBaseimpl()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 18719
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateRpcBaseimpl()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaGenerateRpcBaseimpl(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18721
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaUseJavastrings()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 18722
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaUseJavastrings()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaUseJavastrings(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18724
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaAltApiPackage()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 18725
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18726
    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14400(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaAltApiPackage_:Ljava/lang/Object;

    .line 18727
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 18729
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaEnableDualGenerateMutableApi()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 18730
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaEnableDualGenerateMutableApi()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaEnableDualGenerateMutableApi(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18732
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 18733
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18734
    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$14600(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 18735
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 18737
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 18738
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaMultipleFiles(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18740
    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 18741
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaGenerateEqualsAndHash(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18743
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 18744
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaStringCheckUtf8(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18746
    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 18747
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setOptimizeFor(Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18749
    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 18750
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v2, 0x8

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18751
    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 18752
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 18754
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavascriptPackage()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 18755
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v2, 0x10

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18756
    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javascriptPackage_:Ljava/lang/Object;

    .line 18757
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 18759
    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasSzlApiVersion()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 18760
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getSzlApiVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setSzlApiVersion(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18762
    :cond_16
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 18763
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setCcGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18765
    :cond_17
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 18766
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18768
    :cond_18
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 18769
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setPyGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18771
    :cond_19
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 18772
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 18774
    :cond_1a
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1d

    .line 18775
    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 18776
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 18777
    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 18778
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v0, v3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18783
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 18800
    :cond_1b
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 18801
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 18780
    :cond_1c
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 18781
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 18786
    :cond_1d
    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 18787
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 18788
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 18789
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 18790
    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 18791
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    and-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18792
    sget-boolean v1, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_1e

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_1e
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 18796
    :cond_1f
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$15800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 18676
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    .line 18677
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p0

    .line 18680
    .end local p0
    :goto_0
    return-object p0

    .line 18679
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
    .line 18433
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18433
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

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
    .line 18433
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 20916
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 20917
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 20918
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20919
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20923
    :goto_0
    return-object p0

    .line 20921
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setCcApiCompatibility(Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 18919
    if-nez p1, :cond_0

    .line 18920
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18922
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18923
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    .line 18924
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 18925
    return-object p0
.end method

.method public setCcApiVersion(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 18879
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 18880
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccApiVersion_:I

    .line 18881
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 18882
    return-object p0
.end method

.method public setCcGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20546
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20547
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccGenericServices_:Z

    .line 20548
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20549
    return-object p0
.end method

.method public setCcProto1TextFormat(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19110
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19111
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccProto1TextFormat_:Z

    .line 19112
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19113
    return-object p0
.end method

.method public setCcProtoArrayCompatible(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 18999
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19000
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccProtoArrayCompatible_:Z

    .line 19001
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19002
    return-object p0
.end method

.method public setCcUtf8Verification(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19061
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19062
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ccUtf8Verification_:Z

    .line 19063
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19064
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20680
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20681
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->deprecated_:Z

    .line 20682
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20683
    return-object p0
.end method

.method public setGoPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20241
    if-nez p1, :cond_0

    .line 20242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20244
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20245
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 20246
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20247
    return-object p0
.end method

.method public setGoPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20273
    if-nez p1, :cond_0

    .line 20274
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20276
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20277
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->goPackage_:Ljava/lang/Object;

    .line 20278
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20279
    return-object p0
.end method

.method public setJavaAltApiPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19628
    if-nez p1, :cond_0

    .line 19629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19631
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19632
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaAltApiPackage_:Ljava/lang/Object;

    .line 19633
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19634
    return-object p0
.end method

.method public setJavaAltApiPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19676
    if-nez p1, :cond_0

    .line 19677
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19679
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19680
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaAltApiPackage_:Ljava/lang/Object;

    .line 19681
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19682
    return-object p0
.end method

.method public setJavaApiVersion(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19352
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19353
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaApiVersion_:I

    .line 19354
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19355
    return-object p0
.end method

.method public setJavaEnableDualGenerateMutableApi(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19762
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19763
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaEnableDualGenerateMutableApi_:Z

    .line 19764
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19765
    return-object p0
.end method

.method public setJavaGenerateEqualsAndHash(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20045
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20046
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateEqualsAndHash_:Z

    .line 20047
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20048
    return-object p0
.end method

.method public setJavaGenerateRpcBaseimpl(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19484
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19485
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenerateRpcBaseimpl_:Z

    .line 19486
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19487
    return-object p0
.end method

.method public setJavaGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20595
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20596
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaGenericServices_:Z

    .line 20597
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20598
    return-object p0
.end method

.method public setJavaJava5Enums(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19452
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19453
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaJava5Enums_:Z

    .line 19454
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19455
    return-object p0
.end method

.method public setJavaMultipleFiles(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19965
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19966
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaMultipleFiles_:Z

    .line 19967
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19968
    return-object p0
.end method

.method public setJavaOuterClassname(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19874
    if-nez p1, :cond_0

    .line 19875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19877
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19878
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 19879
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19880
    return-object p0
.end method

.method public setJavaOuterClassnameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19912
    if-nez p1, :cond_0

    .line 19913
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19915
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19916
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaOuterClassname_:Ljava/lang/Object;

    .line 19917
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19918
    return-object p0
.end method

.method public setJavaPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19218
    if-nez p1, :cond_0

    .line 19219
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19221
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19222
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 19223
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19224
    return-object p0
.end method

.method public setJavaPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19262
    if-nez p1, :cond_0

    .line 19263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19265
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19266
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaPackage_:Ljava/lang/Object;

    .line 19267
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19268
    return-object p0
.end method

.method public setJavaStringCheckUtf8(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20117
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20118
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaStringCheckUtf8_:Z

    .line 20119
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20120
    return-object p0
.end method

.method public setJavaUseJavaproto2(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19412
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19413
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaUseJavaproto2_:Z

    .line 19414
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19415
    return-object p0
.end method

.method public setJavaUseJavastrings(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19516
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19517
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javaUseJavastrings_:Z

    .line 19518
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19519
    return-object p0
.end method

.method public setJavascriptPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20351
    if-nez p1, :cond_0

    .line 20352
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20354
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20355
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javascriptPackage_:Ljava/lang/Object;

    .line 20356
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20357
    return-object p0
.end method

.method public setJavascriptPackageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20385
    if-nez p1, :cond_0

    .line 20386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20388
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20389
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->javascriptPackage_:Ljava/lang/Object;

    .line 20390
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20391
    return-object p0
.end method

.method public setOptimizeFor(Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20158
    if-nez p1, :cond_0

    .line 20159
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20161
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20162
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 20163
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20164
    return-object p0
.end method

.method public setPyApiVersion(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 19303
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 19304
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyApiVersion_:I

    .line 19305
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 19306
    return-object p0
.end method

.method public setPyGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20627
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20628
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->pyGenericServices_:Z

    .line 20629
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20630
    return-object p0
.end method

.method public setSzlApiVersion(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20450
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->bitField0_:I

    .line 20451
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->szlApiVersion_:I

    .line 20452
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20453
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 20786
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 20787
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 20788
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20789
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20793
    :goto_0
    return-object p0

    .line 20791
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20765
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 20766
    if-nez p2, :cond_0

    .line 20767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20769
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 20770
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20771
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->onChanged()V

    .line 20775
    :goto_0
    return-object p0

    .line 20773
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
