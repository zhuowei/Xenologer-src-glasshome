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
    .line 5322
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 5332
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    .line 5333
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->initFields()V

    .line 5334
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->makeImmutable()V

    .line 5335
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 5337
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4898
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 4934
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 5004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    .line 4898
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 4899
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 4934
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 5004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    .line 4899
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 5103
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5104
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 5106
    :cond_0
    return-void
.end method

.method private ensureValueInitialized()V
    .locals 1

    .prologue
    .line 5006
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    .line 5009
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 4911
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4918
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4907
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 4908
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 4904
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
    .line 5072
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5073
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureValueInitialized()V

    .line 5074
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5076
    return-object p0
.end method

.method public addValue(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5059
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5060
    if-nez p1, :cond_0

    .line 5061
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5063
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureValueInitialized()V

    .line 5064
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5065
    return-object p0
.end method

.method public addValue()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 2

    .prologue
    .line 5049
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5050
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureValueInitialized()V

    .line 5051
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    .line 5052
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5053
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 2

    .prologue
    .line 5310
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5311
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 5312
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 5313
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 5314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    .line 5315
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5316
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 5318
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 5319
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 4997
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4998
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4999
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 5000
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 2

    .prologue
    .line 5145
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5146
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 5147
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5148
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 5150
    :cond_0
    return-object p0
.end method

.method public clearValue()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 5095
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5096
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    .line 5097
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 5168
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4893
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
    .line 4893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 4914
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 5123
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5124
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureOptionsInitialized()V

    .line 5125
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 5126
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public getMutableValue(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 5043
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
    .line 5029
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5030
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureValueInitialized()V

    .line 5031
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4945
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4946
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4947
    check-cast v1, Ljava/lang/String;

    .line 4955
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 4949
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 4950
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 4952
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4953
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4955
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 4962
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4963
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 4964
    check-cast v2, Ljava/lang/String;

    .line 4965
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 4966
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4969
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
    .line 5117
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
    .line 4929
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5282
    const/4 v1, 0x0

    .line 5283
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 5284
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 5287
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 5288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5289
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5293
    .end local v0           #i:I
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 5294
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5297
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 5298
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->cachedSize:I

    .line 5299
    return v1
.end method

.method public getValue(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 5037
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 5014
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
    .line 5020
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5021
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 5023
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

    .line 4939
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
    .line 5111
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
    .line 4922
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1300()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5325
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 5326
    const-string v0, "com.google.protobuf.DescriptorProtos$EnumDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 5328
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5155
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5164
    :cond_0
    :goto_1
    return v1

    .line 5154
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5159
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5160
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5164
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4893
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 5182
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5183
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 5204
    :goto_0
    return-object p0

    .line 5184
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5185
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 5186
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 5187
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 5193
    :cond_1
    :goto_1
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5194
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureValueInitialized()V

    .line 5195
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5198
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5199
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureOptionsInitialized()V

    .line 5200
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 5201
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 5203
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0

    .line 5189
    :cond_4
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 5190
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
    .line 5173
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5174
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    .line 5175
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    .line 5177
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4893
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 5210
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5212
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 5215
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 5216
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5217
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 5218
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 5223
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5225
    const/4 v0, 0x1

    goto :goto_0

    .line 5220
    :sswitch_0
    const/4 v0, 0x1

    .line 5221
    goto :goto_0

    .line 5230
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 5231
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 5250
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 5251
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 5235
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->addValue()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 5239
    :sswitch_3
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 5240
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 5242
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 5243
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 5248
    .end local v2           #tag:I
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5249
    const/4 v4, 0x1

    goto :goto_1

    .line 5218
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
    .line 4901
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4976
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4977
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4978
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4979
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4980
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4987
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 4988
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4989
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 4990
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/Object;

    .line 4991
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5133
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5134
    if-nez p1, :cond_0

    .line 5135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5137
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 5138
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 5139
    return-object p0
.end method

.method public setValue(ILcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5083
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->assertMutable()V

    .line 5084
    if-nez p2, :cond_0

    .line 5085
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5087
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->ensureValueInitialized()V

    .line 5088
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5089
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
    .line 5306
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

    .line 5258
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 5259
    .local v1, bytesWrittenBefore:I
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_0

    .line 5260
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getNameAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 5262
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 5263
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5264
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 5263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5268
    .end local v2           #i:I
    :cond_1
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 5269
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 5271
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 5272
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 5273
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->getCachedSize()I

    move-result v3

    sub-int v4, v0, v1

    if-eq v3, v4, :cond_3

    .line 5274
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5279
    :cond_3
    return-void
.end method
