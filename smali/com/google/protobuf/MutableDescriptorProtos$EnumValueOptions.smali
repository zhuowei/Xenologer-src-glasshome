.class public final Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
.super Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final DEPRECATED_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deprecated_:Z

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13627
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 13637
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 13638
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->initFields()V

    .line 13639
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->makeImmutable()V

    .line 13640
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 13642
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13254
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 13350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13254
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 13255
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 13350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13255
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 13352
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 13353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13355
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13266
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13273
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 13263
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13260
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;"
        }
    .end annotation

    .prologue
    .line 13450
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13451
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->ensureUninterpretedOptionInitialized()V

    .line 13452
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13454
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 13433
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13434
    if-nez p1, :cond_0

    .line 13435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13437
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->ensureUninterpretedOptionInitialized()V

    .line 13438
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13439
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 13419
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13420
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->ensureUninterpretedOptionInitialized()V

    .line 13421
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 13422
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13423
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13619
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13620
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 13621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    .line 13622
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    .line 13623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13624
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13343
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13344
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    .line 13345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    .line 13346
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13481
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13483
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13497
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

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
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13269
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 13314
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 13409
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getMutableUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13387
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13388
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->ensureUninterpretedOptionInitialized()V

    .line 13389
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13284
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 13594
    const/4 v1, 0x0

    .line 13595
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 13596
    iget-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 13599
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 13600
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 13601
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 13600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13605
    .end local v0           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 13606
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 13607
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->cachedSize:I

    .line 13608
    return v1
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 13399
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 13364
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13374
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 13375
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 13377
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasDeprecated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 13301
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 13277
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3100()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13630
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 13631
    const-string v0, "com.google.protobuf.DescriptorProtos$EnumValueOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 13633
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 13487
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 13488
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 13493
    :cond_0
    :goto_1
    return v1

    .line 13487
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13492
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13493
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13249
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 2
    .parameter "other"

    .prologue
    .line 13511
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13512
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 13523
    :goto_0
    return-object p0

    .line 13513
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13514
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 13516
    :cond_1
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13517
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->ensureUninterpretedOptionInitialized()V

    .line 13518
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13521
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 13522
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1
    .parameter "other"

    .prologue
    .line 13502
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13503
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    if-eqz v0, :cond_0

    .line 13504
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    .line 13506
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13249
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 13529
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13531
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 13534
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 13535
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 13536
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 13537
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 13542
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 13544
    const/4 v0, 0x1

    goto :goto_0

    .line 13539
    :sswitch_0
    const/4 v0, 0x1

    .line 13540
    goto :goto_0

    .line 13549
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    .line 13550
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    goto :goto_0

    .line 13561
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 13562
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 13554
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 13559
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13560
    const/4 v4, 0x1

    goto :goto_1

    .line 13537
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x1f3a -> :sswitch_2
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13257
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13249
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 13327
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13328
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    .line 13329
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    .line 13330
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13465
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13466
    if-nez p2, :cond_0

    .line 13467
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13469
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->ensureUninterpretedOptionInitialized()V

    .line 13470
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13471
    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 13615
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 13569
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 13572
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 13573
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_0

    .line 13574
    iget-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13576
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 13577
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 13578
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 13577
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13582
    .end local v3           #i:I
    :cond_1
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 13583
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 13584
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 13585
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_2

    .line 13586
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 13591
    :cond_2
    return-void
.end method
