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
    .line 13623
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 13633
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 13634
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->initFields()V

    .line 13635
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->makeImmutable()V

    .line 13636
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 13638
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13250
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 13346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13250
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 13251
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 13346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13251
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 13348
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 13349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13351
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13262
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13269
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 13259
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13256
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
    .line 13446
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13447
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->ensureUninterpretedOptionInitialized()V

    .line 13448
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13450
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 13429
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13430
    if-nez p1, :cond_0

    .line 13431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13433
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->ensureUninterpretedOptionInitialized()V

    .line 13434
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13435
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 13415
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13416
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->ensureUninterpretedOptionInitialized()V

    .line 13417
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 13418
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13419
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13615
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13616
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 13617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    .line 13618
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    .line 13619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13620
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13339
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13340
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    .line 13341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    .line 13342
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13477
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13479
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13493
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13245
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
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 13265
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 13310
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 13405
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
    .line 13383
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13384
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->ensureUninterpretedOptionInitialized()V

    .line 13385
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
    .line 13280
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 13590
    const/4 v1, 0x0

    .line 13591
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 13592
    iget-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 13595
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 13596
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 13597
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 13596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13601
    .end local v0           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 13602
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 13603
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->cachedSize:I

    .line 13604
    return v1
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 13395
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 13360
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
    .line 13370
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 13371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 13373
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

    .line 13297
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
    .line 13273
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
    .line 13626
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 13627
    const-string v0, "com.google.protobuf.DescriptorProtos$EnumValueOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 13629
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 13483
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 13484
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 13489
    :cond_0
    :goto_1
    return v1

    .line 13483
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13488
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13489
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13245
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 2
    .parameter "other"

    .prologue
    .line 13507
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13508
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 13519
    :goto_0
    return-object p0

    .line 13509
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13510
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 13512
    :cond_1
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13513
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->ensureUninterpretedOptionInitialized()V

    .line 13514
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13517
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 13518
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1
    .parameter "other"

    .prologue
    .line 13498
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13499
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    if-eqz v0, :cond_0

    .line 13500
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    .line 13502
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13245
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 13525
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13527
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 13530
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 13531
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 13532
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 13533
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 13538
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 13540
    const/4 v0, 0x1

    goto :goto_0

    .line 13535
    :sswitch_0
    const/4 v0, 0x1

    .line 13536
    goto :goto_0

    .line 13545
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    .line 13546
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    goto :goto_0

    .line 13557
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 13558
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 13550
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 13555
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13556
    const/4 v4, 0x1

    goto :goto_1

    .line 13533
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
    .line 13253
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 13323
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13324
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    .line 13325
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    .line 13326
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13461
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->assertMutable()V

    .line 13462
    if-nez p2, :cond_0

    .line 13463
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13465
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->ensureUninterpretedOptionInitialized()V

    .line 13466
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13467
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
    .line 13611
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

    .line 13565
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 13568
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 13569
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_0

    .line 13570
    iget-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->deprecated_:Z

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13572
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 13573
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 13574
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 13573
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13578
    .end local v3           #i:I
    :cond_1
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 13579
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 13580
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 13581
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_2

    .line 13582
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 13587
    :cond_2
    return-void
.end method
