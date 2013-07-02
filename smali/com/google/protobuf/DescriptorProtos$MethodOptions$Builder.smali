.class public final Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$MethodOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLogging_:I

.field private clientStreaming_:Z

.field private deadline_:D

.field private deprecated_:Z

.field private duplicateSuppression_:Z

.field private failFast_:Z

.field private protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

.field private requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

.field private responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

.field private securityLabel_:Ljava/lang/Object;

.field private securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

.field private serverLogging_:I

.field private serverStreaming_:Z

.field private streamType_:Ljava/lang/Object;

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
    const/16 v2, 0x100

    .line 32056
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    .line 32329
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 32416
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    .line 32712
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    .line 32856
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    .line 32888
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 32983
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 33106
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 33141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 33253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33551
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 32057
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->maybeForceBuilderInitialization()V

    .line 32058
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 3
    .parameter "parent"

    .prologue
    const/16 v2, 0x100

    .line 32062
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 32329
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 32416
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    .line 32712
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    .line 32856
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    .line 32888
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 32983
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 33106
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 33141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 33253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33551
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 32063
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->maybeForceBuilderInitialization()V

    .line 32064
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32038
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$23100()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32038
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32071
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 2

    .prologue
    .line 33554
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_0

    .line 33555
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 33556
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33558
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 32045
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$22800()Lcom/google/protobuf/Descriptors$Descriptor;

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
    .line 33851
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 33852
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v3, 0x4000

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 33858
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 33860
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 33852
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 32066
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 32067
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 32069
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 33730
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 33731
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 33732
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 33734
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33738
    :goto_0
    return-object p0

    .line 33736
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 33712
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 33713
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 33714
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33715
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33719
    :goto_0
    return-object p0

    .line 33717
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 33673
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 33674
    if-nez p2, :cond_0

    .line 33675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33677
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 33678
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33679
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33683
    :goto_0
    return-object p0

    .line 33681
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 33694
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 33695
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 33696
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33697
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33701
    :goto_0
    return-object p0

    .line 33699
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33652
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 33653
    if-nez p1, :cond_0

    .line 33654
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33656
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 33657
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33658
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33662
    :goto_0
    return-object p0

    .line 33660
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOptionBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 33822
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 33834
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public build()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 2

    .prologue
    .line 32127
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    .line 32128
    .local v0, result:Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32129
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 32131
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 5

    .prologue
    .line 32135
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 32136
    .local v1, result:Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32137
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 32138
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 32139
    or-int/lit8 v2, v2, 0x1

    .line 32141
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23402(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 32142
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 32143
    or-int/lit8 v2, v2, 0x2

    .line 32145
    :cond_1
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23502(Lcom/google/protobuf/DescriptorProtos$MethodOptions;D)D

    .line 32146
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 32147
    or-int/lit8 v2, v2, 0x4

    .line 32149
    :cond_2
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->duplicateSuppression_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23602(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z

    .line 32150
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 32151
    or-int/lit8 v2, v2, 0x8

    .line 32153
    :cond_3
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->failFast_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23702(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z

    .line 32154
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 32155
    or-int/lit8 v2, v2, 0x10

    .line 32157
    :cond_4
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23802(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I

    .line 32158
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 32159
    or-int/lit8 v2, v2, 0x20

    .line 32161
    :cond_5
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23902(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I

    .line 32162
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 32163
    or-int/lit8 v2, v2, 0x40

    .line 32165
    :cond_6
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24002(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 32166
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 32167
    or-int/lit16 v2, v2, 0x80

    .line 32169
    :cond_7
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24102(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 32170
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 32171
    or-int/lit16 v2, v2, 0x100

    .line 32173
    :cond_8
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24202(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 32174
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 32175
    or-int/lit16 v2, v2, 0x200

    .line 32177
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24302(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32178
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 32179
    or-int/lit16 v2, v2, 0x400

    .line 32181
    :cond_a
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24402(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32182
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 32183
    or-int/lit16 v2, v2, 0x800

    .line 32185
    :cond_b
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientStreaming_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24502(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z

    .line 32186
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 32187
    or-int/lit16 v2, v2, 0x1000

    .line 32189
    :cond_c
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverStreaming_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24602(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z

    .line 32190
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 32191
    or-int/lit16 v2, v2, 0x2000

    .line 32193
    :cond_d
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deprecated_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24702(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z

    .line 32194
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_f

    .line 32195
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 32196
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 32197
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x4001

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32199
    :cond_e
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24802(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;

    .line 32203
    :goto_0
    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24902(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I

    .line 32204
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onBuilt()V

    .line 32205
    return-object v1

    .line 32201
    :cond_f
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24802(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 4

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 32075
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    .line 32076
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 32077
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32078
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    .line 32079
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32080
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->duplicateSuppression_:Z

    .line 32081
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32082
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->failFast_:Z

    .line 32083
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32084
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    .line 32085
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32086
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    .line 32087
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32088
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 32089
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32090
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 32091
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32092
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 32093
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32094
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 32095
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32096
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 32097
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32098
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientStreaming_:Z

    .line 32099
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32100
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverStreaming_:Z

    .line 32101
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32102
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deprecated_:Z

    .line 32103
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32104
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 32105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 32106
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32110
    :goto_0
    return-object p0

    .line 32108
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLogging()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32850
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32851
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    .line 32852
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32853
    return-object p0
.end method

.method public clearClientStreaming()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 33437
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientStreaming_:Z

    .line 33439
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33440
    return-object p0
.end method

.method public clearDeadline()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2

    .prologue
    .line 32494
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32495
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    .line 32496
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32497
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 33545
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deprecated_:Z

    .line 33547
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33548
    return-object p0
.end method

.method public clearDuplicateSuppression()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32626
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->duplicateSuppression_:Z

    .line 32628
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32629
    return-object p0
.end method

.method public clearFailFast()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32706
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->failFast_:Z

    .line 32708
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32709
    return-object p0
.end method

.method public clearProtocol()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32410
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32411
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 32412
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32413
    return-object p0
.end method

.method public clearRequestFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 33135
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33136
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 33137
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33138
    return-object p0
.end method

.method public clearResponseFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 33100
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33101
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 33102
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33103
    return-object p0
.end method

.method public clearSecurityLabel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 33365
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33366
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getSecurityLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33367
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33368
    return-object p0
.end method

.method public clearSecurityLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32977
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32978
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 32979
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32980
    return-object p0
.end method

.method public clearServerLogging()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32882
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32883
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    .line 32884
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32885
    return-object p0
.end method

.method public clearServerStreaming()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 33485
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverStreaming_:Z

    .line 33487
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33488
    return-object p0
.end method

.method public clearStreamType()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 33228
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33229
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getStreamType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 33230
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33231
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 33748
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 33749
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 33750
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33751
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33755
    :goto_0
    return-object p0

    .line 33753
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2

    .prologue
    .line 32114
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

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
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLogging()I
    .locals 1

    .prologue
    .line 32779
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    return v0
.end method

.method public getClientStreaming()Z
    .locals 1

    .prologue
    .line 33414
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientStreaming_:Z

    return v0
.end method

.method public getDeadline()D
    .locals 2

    .prologue
    .line 32453
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 32123
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32038
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 33516
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deprecated_:Z

    return v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 32119
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$22800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDuplicateSuppression()Z
    .locals 1

    .prologue
    .line 32561
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->duplicateSuppression_:Z

    return v0
.end method

.method public getFailFast()Z
    .locals 1

    .prologue
    .line 32667
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->failFast_:Z

    return v0
.end method

.method public getProtocol()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    .locals 1

    .prologue
    .line 32366
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    return-object v0
.end method

.method public getRequestFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 33117
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getResponseFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 33038
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33286
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33287
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 33288
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 33290
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33291
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33292
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33296
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
    .line 33315
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33316
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 33317
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33320
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33323
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
    .line 32929
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 32867
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    return v0
.end method

.method public getServerStreaming()Z
    .locals 1

    .prologue
    .line 33462
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverStreaming_:Z

    return v0
.end method

.method public getStreamType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33164
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 33165
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 33166
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 33168
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33169
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33170
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 33174
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

.method public getStreamTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 33188
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 33189
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 33190
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33193
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 33196
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

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 33599
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 33600
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 33602
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    goto :goto_0
.end method

.method public getUninterpretedOptionBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 33783
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 33846
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 33585
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 33586
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 33588
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 33571
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 33572
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 33574
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 33794
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 33795
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    .line 33796
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

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
    .line 33808
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 33809
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 33811
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasClientLogging()Z
    .locals 2

    .prologue
    .line 32745
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method public hasClientStreaming()Z
    .locals 2

    .prologue
    .line 33404
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method public hasDeadline()Z
    .locals 2

    .prologue
    .line 32434
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 33503
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method public hasDuplicateSuppression()Z
    .locals 2

    .prologue
    .line 32530
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method public hasFailFast()Z
    .locals 2

    .prologue
    .line 32649
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method public hasProtocol()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 32347
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestFormat()Z
    .locals 2

    .prologue
    .line 33111
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method public hasResponseFormat()Z
    .locals 2

    .prologue
    .line 33010
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method public hasSecurityLabel()Z
    .locals 2

    .prologue
    .line 33269
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method public hasSecurityLevel()Z
    .locals 2

    .prologue
    .line 32908
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method public hasServerLogging()Z
    .locals 2

    .prologue
    .line 32861
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method public hasServerStreaming()Z
    .locals 2

    .prologue
    .line 33452
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method public hasStreamType()Z
    .locals 2

    .prologue
    .line 33152
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 32050
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$22900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 32297
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 32298
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 32307
    :cond_0
    :goto_1
    return v1

    .line 32297
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32303
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32307
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
    .line 32038
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32038
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

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
    .line 32038
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32314
    const/4 v2, 0x0

    .line 32316
    .local v2, parsedMessage:Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    :try_start_0
    sget-object v3, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32321
    if-eqz v2, :cond_0

    .line 32322
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32325
    :cond_0
    return-object p0

    .line 32317
    :catch_0
    move-exception v1

    .line 32318
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-object v2, v0

    .line 32319
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32321
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 32322
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 32218
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 32293
    :goto_0
    return-object p0

    .line 32219
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasProtocol()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32220
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getProtocol()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setProtocol(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32222
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32223
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDeadline()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setDeadline(D)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32225
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasDuplicateSuppression()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32226
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDuplicateSuppression()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setDuplicateSuppression(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32228
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasFailFast()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32229
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getFailFast()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setFailFast(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32231
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasClientLogging()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32232
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getClientLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setClientLogging(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32234
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasServerLogging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32235
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getServerLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setServerLogging(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32237
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasSecurityLevel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 32238
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getSecurityLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setSecurityLevel(Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32240
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasResponseFormat()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 32241
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getResponseFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setResponseFormat(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32243
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasRequestFormat()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 32244
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getRequestFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setRequestFormat(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32246
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasStreamType()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 32247
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32248
    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24300(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 32249
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32251
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasSecurityLabel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 32252
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32253
    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24400(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 32254
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32256
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasClientStreaming()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 32257
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getClientStreaming()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setClientStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32259
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasServerStreaming()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 32260
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getServerStreaming()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setServerStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32262
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 32263
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 32265
    :cond_e
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_11

    .line 32266
    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24800(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 32267
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 32268
    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24800(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 32269
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32274
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32291
    :cond_f
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 32292
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 32271
    :cond_10
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 32272
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24800(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 32277
    :cond_11
    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24800(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 32278
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 32279
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 32280
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 32281
    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24800(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 32282
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32283
    sget-boolean v1, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_12
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 32287
    :cond_13
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$24800(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 32209
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v0, :cond_0

    .line 32210
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object p0

    .line 32213
    .end local p0
    :goto_0
    return-object p0

    .line 32212
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
    .line 32038
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32038
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

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
    .line 32038
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 33765
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 33766
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 33767
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 33768
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33772
    :goto_0
    return-object p0

    .line 33770
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setClientLogging(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32813
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32814
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    .line 32815
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32816
    return-object p0
.end method

.method public setClientStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33424
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33425
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientStreaming_:Z

    .line 33426
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33427
    return-object p0
.end method

.method public setDeadline(D)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32472
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32473
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    .line 32474
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32475
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33529
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33530
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deprecated_:Z

    .line 33531
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33532
    return-object p0
.end method

.method public setDuplicateSuppression(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32592
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32593
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->duplicateSuppression_:Z

    .line 32594
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32595
    return-object p0
.end method

.method public setFailFast(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32685
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32686
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->failFast_:Z

    .line 32687
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32688
    return-object p0
.end method

.method public setProtocol(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32385
    if-nez p1, :cond_0

    .line 32386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32388
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32389
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 32390
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32391
    return-object p0
.end method

.method public setRequestFormat(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33123
    if-nez p1, :cond_0

    .line 33124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33126
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33127
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 33128
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33129
    return-object p0
.end method

.method public setResponseFormat(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33066
    if-nez p1, :cond_0

    .line 33067
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33069
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33070
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 33071
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33072
    return-object p0
.end method

.method public setSecurityLabel(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33342
    if-nez p1, :cond_0

    .line 33343
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33345
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33346
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33347
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33348
    return-object p0
.end method

.method public setSecurityLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33386
    if-nez p1, :cond_0

    .line 33387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33389
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33390
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33391
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33392
    return-object p0
.end method

.method public setSecurityLevel(Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32950
    if-nez p1, :cond_0

    .line 32951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32953
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32954
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 32955
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32956
    return-object p0
.end method

.method public setServerLogging(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32873
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32874
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    .line 32875
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32876
    return-object p0
.end method

.method public setServerStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33472
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33473
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverStreaming_:Z

    .line 33474
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33475
    return-object p0
.end method

.method public setStreamType(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33210
    if-nez p1, :cond_0

    .line 33211
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33213
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33214
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 33215
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33216
    return-object p0
.end method

.method public setStreamTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33244
    if-nez p1, :cond_0

    .line 33245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33247
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 33248
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 33249
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33250
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 33635
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 33636
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 33637
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33638
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33642
    :goto_0
    return-object p0

    .line 33640
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 33614
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 33615
    if-nez p2, :cond_0

    .line 33616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33618
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 33619
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33620
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 33624
    :goto_0
    return-object p0

    .line 33622
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
