.class public final Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
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
    name = "EnumValueDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x2

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private number_:I

.field private options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5258
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 5268
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    .line 5269
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->initFields()V

    .line 5270
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->makeImmutable()V

    .line 5271
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 5273
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4908
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 4944
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 4908
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 4909
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 4944
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 4909
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 5049
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5050
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5052
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 4921
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4928
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4917
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 4918
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 4914
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 2

    .prologue
    .line 5245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5246
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 5247
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5248
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5249
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    .line 5250
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5251
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5252
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5254
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5255
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5007
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5008
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5009
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5010
    return-object p0
.end method

.method public clearNumber()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5040
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5041
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5042
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    .line 5043
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 2

    .prologue
    .line 5091
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5092
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5093
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5094
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5096
    :cond_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

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
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 4924
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 5069
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5070
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->ensureOptionsInitialized()V

    .line 5071
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5072
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4955
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 4956
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4957
    check-cast v1, Ljava/lang/String;

    .line 4965
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 4959
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 4960
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 4962
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4963
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4965
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 4972
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 4973
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 4974
    check-cast v2, Ljava/lang/String;

    .line 4975
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 4976
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 4979
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

.method public getNumber()I
    .locals 1

    .prologue
    .line 5025
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    return v0
.end method

.method public getOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 5063
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4939
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5219
    const/4 v0, 0x0

    .line 5220
    .local v0, size:I
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 5221
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getNameAsBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 5224
    :cond_0
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 5225
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5228
    :cond_1
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 5229
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5232
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5233
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->cachedSize:I

    .line 5234
    return v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4949
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumber()Z
    .locals 2

    .prologue
    .line 5019
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

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

.method public hasOptions()Z
    .locals 2

    .prologue
    .line 5057
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 4932
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1300()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5261
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 5262
    const-string v0, "com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 5264
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5100
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5101
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5102
    const/4 v0, 0x0

    .line 5105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4903
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 5123
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5124
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 5143
    :goto_0
    return-object p0

    .line 5125
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5126
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5127
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 5128
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5134
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5135
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->setNumber(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    .line 5137
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5138
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->ensureOptionsInitialized()V

    .line 5139
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5140
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5142
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0

    .line 5130
    :cond_4
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 5131
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "other"

    .prologue
    .line 5114
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5115
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    if-eqz v0, :cond_0

    .line 5116
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    .line 5118
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4903
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 5149
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5151
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 5154
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 5155
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5156
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 5157
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 5162
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5164
    const/4 v0, 0x1

    goto :goto_0

    .line 5159
    :sswitch_0
    const/4 v0, 0x1

    .line 5160
    goto :goto_0

    .line 5169
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5170
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 5190
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 5191
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 5174
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5175
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    goto :goto_0

    .line 5179
    :sswitch_3
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 5180
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5182
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5183
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 5188
    .end local v2           #tag:I
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5189
    const/4 v4, 0x1

    goto :goto_1

    .line 5157
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 4911
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4986
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 4987
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4988
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 4989
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 4990
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4997
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 4998
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4999
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5000
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5001
    return-object p0
.end method

.method public setNumber(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5031
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5032
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5033
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    .line 5034
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5079
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5080
    if-nez p1, :cond_0

    .line 5081
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5083
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5084
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5085
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
    .line 5241
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5198
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 5199
    .local v1, bytesWrittenBefore:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 5200
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 5202
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 5203
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5205
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 5206
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 5208
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 5209
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 5210
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getCachedSize()I

    move-result v2

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_3

    .line 5211
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5216
    :cond_3
    return-void
.end method
