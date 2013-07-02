.class public final Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
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
    name = "EnumOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final ALLOW_ALIAS_FIELD_NUMBER:I = 0x2

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTO1_NAME_FIELD_NUMBER:I = 0x1

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private allowAlias_:Z

.field private bitField0_:I

.field private deprecated_:Z

.field private proto1Name_:Ljava/lang/Object;

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
    .line 13758
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 13768
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 13769
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->initFields()V

    .line 13770
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->makeImmutable()V

    .line 13771
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 13773
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13126
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 13161
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13126
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 13127
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 13161
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13127
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 13443
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 13444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13446
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13138
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13145
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 13135
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13132
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;"
        }
    .end annotation

    .prologue
    .line 13541
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13542
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 13543
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13545
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 13524
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13525
    if-nez p1, :cond_0

    .line 13526
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13528
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 13529
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13530
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 13510
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13511
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 13512
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 13513
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13514
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13746
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13747
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 13748
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13749
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13750
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    .line 13751
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13752
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    .line 13753
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13755
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearAllowAlias()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13373
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13374
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    .line 13376
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13434
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13435
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    .line 13437
    return-object p0
.end method

.method public clearProto1Name()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13320
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13321
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13322
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13323
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13572
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13574
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13588
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

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
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getAllowAlias()Z
    .locals 1

    .prologue
    .line 13348
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13141
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 13405
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 13500
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 13478
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13479
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 13480
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13156
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProto1Name()Ljava/lang/String;
    .locals 4

    .prologue
    .line 13204
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13205
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 13206
    check-cast v1, Ljava/lang/String;

    .line 13214
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 13208
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 13209
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 13211
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13212
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13214
    goto :goto_0
.end method

.method public getProto1NameAsBytes()[B
    .locals 4

    .prologue
    .line 13237
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13238
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 13239
    check-cast v2, Ljava/lang/String;

    .line 13240
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 13241
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13244
    .end local v0           #byteArray:[B
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    check-cast v1, [B

    move-object v0, v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13713
    const/4 v1, 0x0

    .line 13714
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 13715
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getProto1NameAsBytes()[B

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 13718
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 13719
    iget-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 13722
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 13723
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 13726
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 13727
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 13728
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 13727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13732
    .end local v0           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 13733
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 13734
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->cachedSize:I

    .line 13735
    return v1
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 13490
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 13455
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 13465
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 13466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 13468
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasAllowAlias()Z
    .locals 2

    .prologue
    .line 13337
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

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
    .line 13392
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

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

.method public hasProto1Name()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 13182
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

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
    .line 13149
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3100()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13761
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 13762
    const-string v0, "com.google.protobuf.DescriptorProtos$EnumOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 13764
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 13578
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 13579
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 13584
    :cond_0
    :goto_1
    return v1

    .line 13578
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13583
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13584
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13121
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 3
    .parameter "other"

    .prologue
    .line 13602
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13603
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 13626
    :goto_0
    return-object p0

    .line 13604
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->hasProto1Name()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13605
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13606
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 13607
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13613
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->hasAllowAlias()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13614
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getAllowAlias()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->setAllowAlias(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 13616
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13617
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 13619
    :cond_3
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13620
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 13621
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13624
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 13625
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0

    .line 13609
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 13610
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "other"

    .prologue
    .line 13593
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13594
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    if-eqz v0, :cond_0

    .line 13595
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    .line 13597
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13121
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 13632
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13634
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 13637
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 13638
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 13639
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 13640
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 13645
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 13647
    const/4 v0, 0x1

    goto :goto_0

    .line 13642
    :sswitch_0
    const/4 v0, 0x1

    .line 13643
    goto :goto_0

    .line 13652
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13653
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    goto :goto_0

    .line 13674
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 13675
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 13657
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13658
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    goto :goto_0

    .line 13662
    :sswitch_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13663
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    goto :goto_0

    .line 13667
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 13672
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13673
    const/4 v4, 0x1

    goto :goto_1

    .line 13640
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1f3a -> :sswitch_4
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13129
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public setAllowAlias(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 13359
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13360
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13361
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    .line 13362
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 13418
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13419
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13420
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    .line 13421
    return-object p0
.end method

.method public setProto1Name(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 13267
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13268
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13269
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13270
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13271
    return-object p0
.end method

.method public setProto1NameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 13294
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13295
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13296
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13297
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13298
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13556
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13557
    if-nez p2, :cond_0

    .line 13558
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13560
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 13561
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13562
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
    .line 13742
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 13682
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 13685
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 13686
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_0

    .line 13687
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getProto1NameAsBytes()[B

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 13689
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_1

    .line 13690
    iget-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    invoke-virtual {p1, v6, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13692
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 13693
    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13695
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 13696
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 13697
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 13696
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13701
    .end local v3           #i:I
    :cond_3
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 13702
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 13703
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 13704
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_4

    .line 13705
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 13710
    :cond_4
    return-void
.end method
