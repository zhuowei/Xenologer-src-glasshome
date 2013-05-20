.class public final Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
.super Lcom/google/protobuf/GeneratedMutableMessage;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

.field private value_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4876
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 4886
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    .line 4887
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->initFields()V

    .line 4888
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->makeImmutable()V

    .line 4889
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 4891
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4452
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 4488
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    .line 4452
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 4453
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 4488
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    .line 4453
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 4657
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4658
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 4660
    :cond_0
    return-void
.end method

.method private ensureValueInitialized()V
    .locals 1

    .prologue
    .line 4560
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    .line 4563
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 4465
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4472
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4461
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 4462
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 4458
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllValue(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;"
        }
    .end annotation

    .prologue
    .line 4626
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4627
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureValueInitialized()V

    .line 4628
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4630
    return-object p0
.end method

.method public addValue(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4613
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4614
    if-nez p1, :cond_0

    .line 4615
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4617
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureValueInitialized()V

    .line 4618
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4619
    return-object p0
.end method

.method public addValue()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 2

    .prologue
    .line 4603
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4604
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureValueInitialized()V

    .line 4605
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    .line 4606
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4607
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 2

    .prologue
    .line 4864
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4865
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 4866
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4867
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4868
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    .line 4869
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4870
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 4872
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4873
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 4551
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4552
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4553
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4554
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 2

    .prologue
    .line 4699
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4700
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4701
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4702
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 4704
    :cond_0
    return-object p0
.end method

.method public clearValue()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 4649
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    .line 4651
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 4722
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

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
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 4468
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 4677
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4678
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureOptionsInitialized()V

    .line 4679
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4680
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public getMutableValue(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 4597
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public getMutableValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4583
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4584
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureValueInitialized()V

    .line 4585
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4499
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4500
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4501
    check-cast v1, Ljava/lang/String;

    .line 4509
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 4503
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 4504
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 4506
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4507
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4509
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 4516
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4517
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 4518
    check-cast v2, Ljava/lang/String;

    .line 4519
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 4520
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4523
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

.method public getOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 4671
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4483
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4836
    const/4 v1, 0x0

    .line 4837
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 4838
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 4841
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 4842
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4843
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4842
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4847
    .end local v0           #i:I
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4848
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4851
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 4852
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->cachedSize:I

    .line 4853
    return v1
.end method

.method public getValue(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 4591
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 4568
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4574
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4575
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 4577
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4493
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOptions()Z
    .locals 2

    .prologue
    .line 4665
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 4476
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1100()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4879
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 4880
    const-string v0, "com.google.protobuf.DescriptorProtos$EnumDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 4882
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4708
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4709
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4718
    :cond_0
    :goto_1
    return v1

    .line 4708
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4713
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4714
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4718
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4447
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 4736
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4737
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 4758
    :goto_0
    return-object p0

    .line 4738
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4739
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4740
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 4741
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4747
    :cond_1
    :goto_1
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4748
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureValueInitialized()V

    .line 4749
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4752
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4753
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureOptionsInitialized()V

    .line 4754
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 4755
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4757
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0

    .line 4743
    :cond_4
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 4744
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "other"

    .prologue
    .line 4727
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4728
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    .line 4729
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    .line 4731
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4447
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 4764
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4766
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 4769
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 4770
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 4771
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 4772
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 4777
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4779
    const/4 v0, 0x1

    goto :goto_0

    .line 4774
    :sswitch_0
    const/4 v0, 0x1

    .line 4775
    goto :goto_0

    .line 4784
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4785
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 4804
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 4805
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 4789
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->addValue()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 4793
    :sswitch_3
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 4794
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 4796
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4797
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 4802
    .end local v2           #tag:I
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4803
    const/4 v4, 0x1

    goto :goto_1

    .line 4772
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 4455
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4447
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4530
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4531
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4532
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4533
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4534
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4541
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4542
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4543
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4544
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4545
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4687
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4688
    if-nez p1, :cond_0

    .line 4689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4691
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4692
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 4693
    return-object p0
.end method

.method public setValue(ILcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4637
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4638
    if-nez p2, :cond_0

    .line 4639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4641
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureValueInitialized()V

    .line 4642
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4643
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
    .line 4860
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->writeReplace()Ljava/lang/Object;

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
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 4812
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 4813
    .local v1, bytesWrittenBefore:I
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_0

    .line 4814
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getNameAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 4816
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 4817
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4818
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 4817
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4822
    .end local v2           #i:I
    :cond_1
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 4823
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 4825
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4826
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 4827
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getCachedSize()I

    move-result v3

    sub-int v4, v0, v1

    if-eq v3, v4, :cond_3

    .line 4828
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4833
    :cond_3
    return-void
.end method
