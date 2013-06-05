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

    .line 30816
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    .line 31089
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 31176
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    .line 31472
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    .line 31616
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    .line 31648
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 31743
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 31866
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 31901
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 32010
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 32305
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 30817
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->maybeForceBuilderInitialization()V

    .line 30818
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 3
    .parameter "parent"

    .prologue
    const/16 v2, 0x100

    .line 30822
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 31089
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 31176
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    .line 31472
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    .line 31616
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    .line 31648
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 31743
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 31866
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 31901
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 32010
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 32305
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 30823
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->maybeForceBuilderInitialization()V

    .line 30824
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30798
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$22000()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 30798
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 30831
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 2

    .prologue
    .line 32308
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_0

    .line 32309
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 32310
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32312
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30805
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$21700()Lcom/google/protobuf/Descriptors$Descriptor;

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
    .line 32605
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 32606
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

    .line 32612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 32614
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 32606
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 30826
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 30827
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 30829
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
    .line 32484
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 32485
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 32486
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 32488
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32492
    :goto_0
    return-object p0

    .line 32490
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
    .line 32466
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 32467
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 32468
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 32469
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32473
    :goto_0
    return-object p0

    .line 32471
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
    .line 32427
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 32428
    if-nez p2, :cond_0

    .line 32429
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32431
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 32432
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 32433
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32437
    :goto_0
    return-object p0

    .line 32435
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 32448
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 32449
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 32450
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32451
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32455
    :goto_0
    return-object p0

    .line 32453
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
    .line 32406
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 32407
    if-nez p1, :cond_0

    .line 32408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32410
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 32411
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32412
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32416
    :goto_0
    return-object p0

    .line 32414
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOptionBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 32576
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
    .line 32588
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
    .line 30887
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    .line 30888
    .local v0, result:Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30889
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 30891
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 5

    .prologue
    .line 30895
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 30896
    .local v1, result:Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30897
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 30898
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 30899
    or-int/lit8 v2, v2, 0x1

    .line 30901
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$22302(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 30902
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 30903
    or-int/lit8 v2, v2, 0x2

    .line 30905
    :cond_1
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$22402(Lcom/google/protobuf/DescriptorProtos$MethodOptions;D)D

    .line 30906
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 30907
    or-int/lit8 v2, v2, 0x4

    .line 30909
    :cond_2
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->duplicateSuppression_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$22502(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z

    .line 30910
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 30911
    or-int/lit8 v2, v2, 0x8

    .line 30913
    :cond_3
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->failFast_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$22602(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z

    .line 30914
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 30915
    or-int/lit8 v2, v2, 0x10

    .line 30917
    :cond_4
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$22702(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I

    .line 30918
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 30919
    or-int/lit8 v2, v2, 0x20

    .line 30921
    :cond_5
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$22802(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I

    .line 30922
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 30923
    or-int/lit8 v2, v2, 0x40

    .line 30925
    :cond_6
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$22902(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 30926
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 30927
    or-int/lit16 v2, v2, 0x80

    .line 30929
    :cond_7
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23002(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 30930
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 30931
    or-int/lit16 v2, v2, 0x100

    .line 30933
    :cond_8
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23102(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 30934
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 30935
    or-int/lit16 v2, v2, 0x200

    .line 30937
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23202(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30938
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 30939
    or-int/lit16 v2, v2, 0x400

    .line 30941
    :cond_a
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23302(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30942
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 30943
    or-int/lit16 v2, v2, 0x800

    .line 30945
    :cond_b
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientStreaming_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23402(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z

    .line 30946
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 30947
    or-int/lit16 v2, v2, 0x1000

    .line 30949
    :cond_c
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverStreaming_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23502(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z

    .line 30950
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 30951
    or-int/lit16 v2, v2, 0x2000

    .line 30953
    :cond_d
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deprecated_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23602(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z

    .line 30954
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_f

    .line 30955
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 30956
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 30957
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x4001

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30959
    :cond_e
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23702(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;

    .line 30963
    :goto_0
    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23802(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I

    .line 30964
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onBuilt()V

    .line 30965
    return-object v1

    .line 30961
    :cond_f
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23702(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 4

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 30835
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    .line 30836
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 30837
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30838
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    .line 30839
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30840
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->duplicateSuppression_:Z

    .line 30841
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30842
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->failFast_:Z

    .line 30843
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30844
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    .line 30845
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30846
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    .line 30847
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30848
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 30849
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30850
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 30851
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30852
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 30853
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30854
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 30855
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30856
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 30857
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30858
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientStreaming_:Z

    .line 30859
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30860
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverStreaming_:Z

    .line 30861
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30862
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deprecated_:Z

    .line 30863
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30864
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 30865
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 30866
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 30870
    :goto_0
    return-object p0

    .line 30868
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLogging()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 31610
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31611
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    .line 31612
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31613
    return-object p0
.end method

.method public clearClientStreaming()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32191
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientStreaming_:Z

    .line 32193
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32194
    return-object p0
.end method

.method public clearDeadline()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2

    .prologue
    .line 31254
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31255
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    .line 31256
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31257
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32299
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deprecated_:Z

    .line 32301
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32302
    return-object p0
.end method

.method public clearDuplicateSuppression()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 31386
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->duplicateSuppression_:Z

    .line 31388
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31389
    return-object p0
.end method

.method public clearFailFast()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 31466
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->failFast_:Z

    .line 31468
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31469
    return-object p0
.end method

.method public clearProtocol()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 31170
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31171
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 31172
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31173
    return-object p0
.end method

.method public clearRequestFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 31895
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31896
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 31897
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31898
    return-object p0
.end method

.method public clearResponseFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 31860
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31861
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 31862
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31863
    return-object p0
.end method

.method public clearSecurityLabel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32119
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32120
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getSecurityLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 32121
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32122
    return-object p0
.end method

.method public clearSecurityLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 31737
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31738
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 31739
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31740
    return-object p0
.end method

.method public clearServerLogging()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 31642
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31643
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    .line 31644
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31645
    return-object p0
.end method

.method public clearServerStreaming()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32239
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverStreaming_:Z

    .line 32241
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32242
    return-object p0
.end method

.method public clearStreamType()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 31985
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31986
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getStreamType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 31987
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31988
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32502
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 32503
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 32504
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32505
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32509
    :goto_0
    return-object p0

    .line 32507
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2

    .prologue
    .line 30874
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
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30798
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
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLogging()I
    .locals 1

    .prologue
    .line 31539
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    return v0
.end method

.method public getClientStreaming()Z
    .locals 1

    .prologue
    .line 32168
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientStreaming_:Z

    return v0
.end method

.method public getDeadline()D
    .locals 2

    .prologue
    .line 31213
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 30883
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 32270
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deprecated_:Z

    return v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30879
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$21700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDuplicateSuppression()Z
    .locals 1

    .prologue
    .line 31321
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->duplicateSuppression_:Z

    return v0
.end method

.method public getFailFast()Z
    .locals 1

    .prologue
    .line 31427
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->failFast_:Z

    return v0
.end method

.method public getProtocol()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    .locals 1

    .prologue
    .line 31126
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    return-object v0
.end method

.method public getRequestFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 31877
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getResponseFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 31798
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32043
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 32044
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 32045
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32047
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 32050
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

.method public getSecurityLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 32069
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 32070
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 32071
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32074
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 32077
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
    .line 31689
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 31627
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    return v0
.end method

.method public getServerStreaming()Z
    .locals 1

    .prologue
    .line 32216
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverStreaming_:Z

    return v0
.end method

.method public getStreamType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31924
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 31925
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 31926
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31928
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 31931
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

.method public getStreamTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 31945
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 31946
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 31947
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31950
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 31953
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
    .line 32353
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 32354
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 32356
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
    .line 32537
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
    .line 32600
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 32339
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 32340
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 32342
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
    .line 32325
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 32326
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 32328
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
    .line 32548
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 32549
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    .line 32550
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
    .line 32562
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 32563
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 32565
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
    .line 31505
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
    .line 32158
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
    .line 31194
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
    .line 32257
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
    .line 31290
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
    .line 31409
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

    .line 31107
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
    .line 31871
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
    .line 31770
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
    .line 32026
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
    .line 31668
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
    .line 31621
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
    .line 32206
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
    .line 31912
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
    .line 30810
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$21800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

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

    .line 31057
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 31058
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 31067
    :cond_0
    :goto_1
    return v1

    .line 31057
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31063
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31067
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
    .line 30798
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30798
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
    .line 30798
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
    .line 31074
    const/4 v2, 0x0

    .line 31076
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

    .line 31081
    if-eqz v2, :cond_0

    .line 31082
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 31085
    :cond_0
    return-object p0

    .line 31077
    :catch_0
    move-exception v1

    .line 31078
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-object v2, v0

    .line 31079
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31081
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 31082
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 30978
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 31053
    :goto_0
    return-object p0

    .line 30979
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasProtocol()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30980
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getProtocol()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setProtocol(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 30982
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30983
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDeadline()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setDeadline(D)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 30985
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasDuplicateSuppression()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30986
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDuplicateSuppression()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setDuplicateSuppression(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 30988
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasFailFast()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 30989
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getFailFast()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setFailFast(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 30991
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasClientLogging()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 30992
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getClientLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setClientLogging(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 30994
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasServerLogging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30995
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getServerLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setServerLogging(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 30997
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasSecurityLevel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30998
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getSecurityLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setSecurityLevel(Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 31000
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasResponseFormat()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 31001
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getResponseFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setResponseFormat(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 31003
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasRequestFormat()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31004
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getRequestFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setRequestFormat(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 31006
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasStreamType()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 31007
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31008
    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23200(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 31009
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31011
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasSecurityLabel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 31012
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31013
    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23300(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 31014
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31016
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasClientStreaming()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 31017
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getClientStreaming()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setClientStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 31019
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasServerStreaming()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 31020
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getServerStreaming()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setServerStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 31022
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 31023
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 31025
    :cond_e
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_11

    .line 31026
    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23700(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 31027
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 31028
    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23700(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 31029
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31034
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31051
    :cond_f
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 31052
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 31031
    :cond_10
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 31032
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23700(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 31037
    :cond_11
    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23700(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 31038
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 31039
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 31040
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 31041
    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23700(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 31042
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31043
    sget-boolean v1, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_12
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 31047
    :cond_13
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$23700(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 30969
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v0, :cond_0

    .line 30970
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object p0

    .line 30973
    .end local p0
    :goto_0
    return-object p0

    .line 30972
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
    .line 30798
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30798
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
    .line 30798
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 32519
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 32520
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 32521
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 32522
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32526
    :goto_0
    return-object p0

    .line 32524
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setClientLogging(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 31573
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31574
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientLogging_:I

    .line 31575
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31576
    return-object p0
.end method

.method public setClientStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32178
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32179
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->clientStreaming_:Z

    .line 32180
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32181
    return-object p0
.end method

.method public setDeadline(D)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 31232
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31233
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deadline_:D

    .line 31234
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31235
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32283
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32284
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->deprecated_:Z

    .line 32285
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32286
    return-object p0
.end method

.method public setDuplicateSuppression(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 31352
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31353
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->duplicateSuppression_:Z

    .line 31354
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31355
    return-object p0
.end method

.method public setFailFast(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 31445
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31446
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->failFast_:Z

    .line 31447
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31448
    return-object p0
.end method

.method public setProtocol(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 31145
    if-nez p1, :cond_0

    .line 31146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31148
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31149
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 31150
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31151
    return-object p0
.end method

.method public setRequestFormat(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 31883
    if-nez p1, :cond_0

    .line 31884
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31886
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31887
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 31888
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31889
    return-object p0
.end method

.method public setResponseFormat(Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 31826
    if-nez p1, :cond_0

    .line 31827
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31829
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31830
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 31831
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31832
    return-object p0
.end method

.method public setSecurityLabel(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32096
    if-nez p1, :cond_0

    .line 32097
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32099
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32100
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 32101
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32102
    return-object p0
.end method

.method public setSecurityLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32140
    if-nez p1, :cond_0

    .line 32141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32143
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32144
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 32145
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32146
    return-object p0
.end method

.method public setSecurityLevel(Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 31710
    if-nez p1, :cond_0

    .line 31711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31713
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31714
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 31715
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31716
    return-object p0
.end method

.method public setServerLogging(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 31633
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31634
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverLogging_:I

    .line 31635
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31636
    return-object p0
.end method

.method public setServerStreaming(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32226
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32227
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->serverStreaming_:Z

    .line 32228
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32229
    return-object p0
.end method

.method public setStreamType(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 31967
    if-nez p1, :cond_0

    .line 31968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31970
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 31971
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 31972
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 31973
    return-object p0
.end method

.method public setStreamTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 32001
    if-nez p1, :cond_0

    .line 32002
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32004
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->bitField0_:I

    .line 32005
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->streamType_:Ljava/lang/Object;

    .line 32006
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32007
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 32389
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 32390
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 32391
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32392
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32396
    :goto_0
    return-object p0

    .line 32394
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
    .line 32368
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 32369
    if-nez p2, :cond_0

    .line 32370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32372
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 32373
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32374
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->onChanged()V

    .line 32378
    :goto_0
    return-object p0

    .line 32376
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
