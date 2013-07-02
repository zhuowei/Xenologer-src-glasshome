.class public final Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
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
    name = "MethodDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final INPUT_TYPE_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x4

.field public static final OUTPUT_TYPE_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private inputType_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

.field private outputType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6872
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 6882
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    .line 6883
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->initFields()V

    .line 6884
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->makeImmutable()V

    .line 6885
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 6887
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6356
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 6392
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6462
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6562
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6356
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 6357
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 6392
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6462
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6562
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6357
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 6634
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6635
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6637
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6369
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6376
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6365
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6366
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6362
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 6351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 2

    .prologue
    .line 6857
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6858
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 6859
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6860
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6861
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6862
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6863
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6864
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6865
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6866
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6868
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6869
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearInputType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6555
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6556
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6557
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6558
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6456
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6457
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6458
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 2

    .prologue
    .line 6676
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6677
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6678
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6679
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6681
    :cond_0
    return-object p0
.end method

.method public clearOutputType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6625
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6626
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6627
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6628
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 6351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6694
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

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
    .line 6351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6372
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6483
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6484
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6485
    check-cast v1, Ljava/lang/String;

    .line 6493
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 6487
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 6488
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 6490
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6491
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6493
    goto :goto_0
.end method

.method public getInputTypeAsBytes()[B
    .locals 4

    .prologue
    .line 6505
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6506
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 6507
    check-cast v2, Ljava/lang/String;

    .line 6508
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 6509
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6512
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

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 6654
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6655
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->ensureOptionsInitialized()V

    .line 6656
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6657
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6403
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6404
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6405
    check-cast v1, Ljava/lang/String;

    .line 6413
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 6407
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 6408
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 6410
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6411
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6413
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 6420
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6421
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 6422
    check-cast v2, Ljava/lang/String;

    .line 6423
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 6424
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6427
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

.method public getOptions()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 6648
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public getOutputType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6573
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6574
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6575
    check-cast v1, Ljava/lang/String;

    .line 6583
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 6577
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 6578
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 6580
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6581
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6583
    goto :goto_0
.end method

.method public getOutputTypeAsBytes()[B
    .locals 4

    .prologue
    .line 6590
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6591
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 6592
    check-cast v2, Ljava/lang/String;

    .line 6593
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 6594
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6597
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6387
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6827
    const/4 v0, 0x0

    .line 6828
    .local v0, size:I
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 6829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getNameAsBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6832
    :cond_0
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 6833
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getInputTypeAsBytes()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6836
    :cond_1
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 6837
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getOutputTypeAsBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 6840
    :cond_2
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 6841
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6844
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6845
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->cachedSize:I

    .line 6846
    return v0
.end method

.method public hasInputType()Z
    .locals 2

    .prologue
    .line 6472
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6397
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

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
    .line 6642
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

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

.method public hasOutputType()Z
    .locals 2

    .prologue
    .line 6567
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

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
    .line 6380
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1900()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6875
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 6876
    const-string v0, "com.google.protobuf.DescriptorProtos$MethodDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 6878
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6685
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6686
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6687
    const/4 v0, 0x0

    .line 6690
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6351
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 6708
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6709
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 6743
    :goto_0
    return-object p0

    .line 6710
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6711
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6712
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 6713
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6719
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6720
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6721
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 6722
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6728
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6729
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6730
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 6731
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6737
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6738
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->ensureOptionsInitialized()V

    .line 6739
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6740
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6742
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0

    .line 6715
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 6716
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_1

    .line 6724
    .end local v0           #ba:[B
    :cond_6
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 6725
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    goto :goto_2

    .line 6733
    .end local v0           #ba:[B
    :cond_7
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 6734
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "other"

    .prologue
    .line 6699
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6700
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    if-eqz v0, :cond_0

    .line 6701
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    .line 6703
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6351
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 6749
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6751
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 6754
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 6755
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 6756
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 6757
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 6762
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6764
    const/4 v0, 0x1

    goto :goto_0

    .line 6759
    :sswitch_0
    const/4 v0, 0x1

    .line 6760
    goto :goto_0

    .line 6769
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6770
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 6795
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 6796
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 6774
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6775
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    goto :goto_0

    .line 6779
    :sswitch_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6780
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    goto :goto_0

    .line 6784
    :sswitch_4
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 6785
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6787
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6788
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 6793
    .end local v2           #tag:I
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6794
    const/4 v4, 0x1

    goto :goto_1

    .line 6757
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6359
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setInputType(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6524
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6525
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6526
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6527
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6528
    return-object p0
.end method

.method public setInputTypeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6540
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6541
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6542
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6543
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/Object;

    .line 6544
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6434
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6435
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6436
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6437
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6438
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6445
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6446
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6447
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6448
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/Object;

    .line 6449
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6664
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6665
    if-nez p1, :cond_0

    .line 6666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6668
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6669
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    .line 6670
    return-object p0
.end method

.method public setOutputType(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6604
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6605
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6606
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6607
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6608
    return-object p0
.end method

.method public setOutputTypeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->assertMutable()V

    .line 6616
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6617
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    .line 6618
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/Object;

    .line 6619
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
    .line 6853
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
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6803
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 6804
    .local v1, bytesWrittenBefore:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 6805
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 6807
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 6808
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getInputTypeAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 6810
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    .line 6811
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getOutputTypeAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 6813
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 6814
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 6816
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 6817
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 6818
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodDescriptorProto;->getCachedSize()I

    move-result v2

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_4

    .line 6819
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6824
    :cond_4
    return-void
.end method
