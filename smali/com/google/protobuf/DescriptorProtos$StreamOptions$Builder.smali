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

.field private deprecated_:Z

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

    .line 33507
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    .line 33724
    iput-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    .line 33776
    iput-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    .line 33808
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 33867
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 33918
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33991
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    .line 34023
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    .line 34115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 33508
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->maybeForceBuilderInitialization()V

    .line 33509
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 4
    .parameter "parent"

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 33513
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 33724
    iput-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    .line 33776
    iput-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    .line 33808
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 33867
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 33918
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33991
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    .line 34023
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    .line 34115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 33514
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->maybeForceBuilderInitialization()V

    .line 33515
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33489
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$24200()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 33489
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 33522
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUninterpretedOptionIsMutable()V
    .locals 2

    .prologue
    .line 34118
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 34119
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 34120
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34122
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 33496
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$23900()Lcom/google/protobuf/Descriptors$Descriptor;

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
    .line 34415
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 34416
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v3, 0x100

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 34422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 34424
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 34416
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 33517
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 33518
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 33520
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
    .line 34294
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 34295
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 34296
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 34298
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34302
    :goto_0
    return-object p0

    .line 34300
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
    .line 34276
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 34277
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 34278
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34279
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34283
    :goto_0
    return-object p0

    .line 34281
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
    .line 34237
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 34238
    if-nez p2, :cond_0

    .line 34239
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34241
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 34242
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34243
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34247
    :goto_0
    return-object p0

    .line 34245
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 34258
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 34259
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 34260
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34261
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34265
    :goto_0
    return-object p0

    .line 34263
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
    .line 34216
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 34217
    if-nez p1, :cond_0

    .line 34218
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34220
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 34221
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34222
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34226
    :goto_0
    return-object p0

    .line 34224
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addUninterpretedOptionBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 34386
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
    .line 34398
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
    .line 33566
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    .line 33567
    .local v0, result:Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33568
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 33570
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 5

    .prologue
    .line 33574
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 33575
    .local v1, result:Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33576
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 33577
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 33578
    or-int/lit8 v2, v2, 0x1

    .line 33580
    :cond_0
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$24502(Lcom/google/protobuf/DescriptorProtos$StreamOptions;J)J

    .line 33581
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 33582
    or-int/lit8 v2, v2, 0x2

    .line 33584
    :cond_1
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$24602(Lcom/google/protobuf/DescriptorProtos$StreamOptions;J)J

    .line 33585
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 33586
    or-int/lit8 v2, v2, 0x4

    .line 33588
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$24702(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 33589
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 33590
    or-int/lit8 v2, v2, 0x8

    .line 33592
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$24802(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 33593
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 33594
    or-int/lit8 v2, v2, 0x10

    .line 33596
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$24902(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33597
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 33598
    or-int/lit8 v2, v2, 0x20

    .line 33600
    :cond_5
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25002(Lcom/google/protobuf/DescriptorProtos$StreamOptions;I)I

    .line 33601
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 33602
    or-int/lit8 v2, v2, 0x40

    .line 33604
    :cond_6
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25102(Lcom/google/protobuf/DescriptorProtos$StreamOptions;I)I

    .line 33605
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 33606
    or-int/lit16 v2, v2, 0x80

    .line 33608
    :cond_7
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deprecated_:Z

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25202(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Z)Z

    .line 33609
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_9

    .line 33610
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 33611
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 33612
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33614
    :cond_8
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25302(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Ljava/util/List;)Ljava/util/List;

    .line 33618
    :goto_0
    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25402(Lcom/google/protobuf/DescriptorProtos$StreamOptions;I)I

    .line 33619
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onBuilt()V

    .line 33620
    return-object v1

    .line 33616
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25302(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 33526
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    .line 33527
    iput-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    .line 33528
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33529
    iput-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    .line 33530
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33531
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 33532
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33533
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 33534
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33535
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33536
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33537
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    .line 33538
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33539
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    .line 33540
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deprecated_:Z

    .line 33542
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33543
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 33544
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 33545
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33549
    :goto_0
    return-object p0

    .line 33547
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientInitialTokens()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2

    .prologue
    .line 33770
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33771
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    .line 33772
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33773
    return-object p0
.end method

.method public clearClientLogging()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 34017
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34018
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    .line 34019
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34020
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 34109
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deprecated_:Z

    .line 34111
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34112
    return-object p0
.end method

.method public clearSecurityLabel()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 33972
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33973
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getSecurityLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33974
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33975
    return-object p0
.end method

.method public clearSecurityLevel()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 33912
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33913
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 33914
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33915
    return-object p0
.end method

.method public clearServerInitialTokens()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2

    .prologue
    .line 33802
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33803
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    .line 33804
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33805
    return-object p0
.end method

.method public clearServerLogging()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 34049
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34050
    const/16 v0, 0x100

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    .line 34051
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34052
    return-object p0
.end method

.method public clearTokenUnit()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 33861
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33862
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 33863
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33864
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 34312
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 34313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 34314
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34315
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34319
    :goto_0
    return-object p0

    .line 34317
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2

    .prologue
    .line 33553
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
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33489
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
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientInitialTokens()J
    .locals 2

    .prologue
    .line 33745
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    return-wide v0
.end method

.method public getClientLogging()I
    .locals 1

    .prologue
    .line 34002
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 33562
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33489
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 34080
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deprecated_:Z

    return v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 33558
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$23900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33929
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33930
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 33931
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33933
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33936
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
    .line 33944
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33945
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 33946
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33949
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33952
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
    .line 33886
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getServerInitialTokens()J
    .locals 2

    .prologue
    .line 33787
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    return-wide v0
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 34034
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    return v0
.end method

.method public getTokenUnit()Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    .locals 1

    .prologue
    .line 33831
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 34163
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 34164
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 34166
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
    .line 34347
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
    .line 34410
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 34149
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 34150
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 34152
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
    .line 34135
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 34136
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 34138
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
    .line 34358
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 34359
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    .line 34360
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
    .line 34372
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 34373
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 34375
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

    .line 33734
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
    .line 33996
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

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 34067
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

.method public hasSecurityLabel()Z
    .locals 2

    .prologue
    .line 33923
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
    .line 33876
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
    .line 33781
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
    .line 34028
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
    .line 33819
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
    .line 33501
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$24000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

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

    .line 33692
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 33693
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 33702
    :cond_0
    :goto_1
    return v1

    .line 33692
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33698
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33702
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
    .line 33489
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33489
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
    .line 33489
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
    .line 33709
    const/4 v2, 0x0

    .line 33711
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

    .line 33716
    if-eqz v2, :cond_0

    .line 33717
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 33720
    :cond_0
    return-object p0

    .line 33712
    :catch_0
    move-exception v1

    .line 33713
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-object v2, v0

    .line 33714
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33716
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 33717
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 33633
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 33688
    :goto_0
    return-object p0

    .line 33634
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasClientInitialTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33635
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getClientInitialTokens()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setClientInitialTokens(J)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 33637
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasServerInitialTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33638
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getServerInitialTokens()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setServerInitialTokens(J)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 33640
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasTokenUnit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33641
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getTokenUnit()Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setTokenUnit(Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 33643
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasSecurityLevel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33644
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getSecurityLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setSecurityLevel(Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 33646
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasSecurityLabel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33647
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33648
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$24900(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33649
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33651
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasClientLogging()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 33652
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getClientLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setClientLogging(I)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 33654
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasServerLogging()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 33655
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getServerLogging()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setServerLogging(I)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 33657
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 33658
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    .line 33660
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_b

    .line 33661
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25300(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 33662
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33663
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25300(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 33664
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33669
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33686
    :cond_9
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 33687
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 33666
    :cond_a
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 33667
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25300(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 33672
    :cond_b
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25300(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 33673
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 33674
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 33675
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 33676
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25300(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    .line 33677
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33678
    sget-boolean v1, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->getUninterpretedOptionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_c
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 33682
    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->access$25300(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 33624
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    if-eqz v0, :cond_0

    .line 33625
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object p0

    .line 33628
    .end local p0
    :goto_0
    return-object p0

    .line 33627
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
    .line 33489
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33489
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
    .line 33489
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 34329
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 34330
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 34331
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34332
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34336
    :goto_0
    return-object p0

    .line 34334
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setClientInitialTokens(J)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33756
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33757
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientInitialTokens_:J

    .line 33758
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33759
    return-object p0
.end method

.method public setClientLogging(I)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 34008
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34009
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->clientLogging_:I

    .line 34010
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34011
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 34093
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34094
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->deprecated_:Z

    .line 34095
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34096
    return-object p0
.end method

.method public setSecurityLabel(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33960
    if-nez p1, :cond_0

    .line 33961
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33963
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33964
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33965
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33966
    return-object p0
.end method

.method public setSecurityLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33982
    if-nez p1, :cond_0

    .line 33983
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33985
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33986
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLabel_:Ljava/lang/Object;

    .line 33987
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33988
    return-object p0
.end method

.method public setSecurityLevel(Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33896
    if-nez p1, :cond_0

    .line 33897
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33899
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33900
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 33901
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33902
    return-object p0
.end method

.method public setServerInitialTokens(J)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33793
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33794
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverInitialTokens_:J

    .line 33795
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33796
    return-object p0
.end method

.method public setServerLogging(I)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 34040
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 34041
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->serverLogging_:I

    .line 34042
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34043
    return-object p0
.end method

.method public setTokenUnit(Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 33843
    if-nez p1, :cond_0

    .line 33844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33846
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->bitField0_:I

    .line 33847
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 33848
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 33849
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 34199
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 34200
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 34201
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34202
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34206
    :goto_0
    return-object p0

    .line 34204
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
    .line 34178
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 34179
    if-nez p2, :cond_0

    .line 34180
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34182
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->ensureUninterpretedOptionIsMutable()V

    .line 34183
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34184
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->onChanged()V

    .line 34188
    :goto_0
    return-object p0

    .line 34186
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->uninterpretedOptionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
