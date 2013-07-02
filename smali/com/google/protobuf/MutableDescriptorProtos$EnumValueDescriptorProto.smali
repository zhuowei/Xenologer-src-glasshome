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
    .line 5704
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 5714
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    .line 5715
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->initFields()V

    .line 5716
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->makeImmutable()V

    .line 5717
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 5719
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5354
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 5390
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5354
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 5355
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 5390
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5355
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 5495
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5496
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5498
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5367
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5374
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5363
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5364
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5360
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 5349
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 2

    .prologue
    .line 5691
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5692
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 5693
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5694
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5695
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    .line 5696
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5697
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5698
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5700
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5701
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5349
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5349
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5453
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5454
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5455
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5456
    return-object p0
.end method

.method public clearNumber()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5486
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5487
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5488
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    .line 5489
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 2

    .prologue
    .line 5537
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5538
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5539
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5540
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5542
    :cond_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 5349
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5555
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5349
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5349
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
    .line 5349
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5349
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5349
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5370
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5349
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 5515
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5516
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->ensureOptionsInitialized()V

    .line 5517
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5518
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5401
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5402
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5403
    check-cast v1, Ljava/lang/String;

    .line 5411
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 5405
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 5406
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 5408
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5409
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5411
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 5418
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5419
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 5420
    check-cast v2, Ljava/lang/String;

    .line 5421
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 5422
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5425
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
    .line 5471
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    return v0
.end method

.method public getOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 5509
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
    .line 5385
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5665
    const/4 v0, 0x0

    .line 5666
    .local v0, size:I
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 5667
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getNameAsBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 5670
    :cond_0
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 5671
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5674
    :cond_1
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 5675
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5678
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5679
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->cachedSize:I

    .line 5680
    return v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5395
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
    .line 5465
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
    .line 5503
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
    .line 5378
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1500()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5707
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 5708
    const-string v0, "com.google.protobuf.DescriptorProtos$EnumValueDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 5710
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5546
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5547
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5548
    const/4 v0, 0x0

    .line 5551
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
    .line 5349
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 5569
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5570
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 5589
    :goto_0
    return-object p0

    .line 5571
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5572
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5573
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 5574
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5580
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5581
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->setNumber(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    .line 5583
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5584
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->ensureOptionsInitialized()V

    .line 5585
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5586
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5588
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0

    .line 5576
    :cond_4
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 5577
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
    .line 5560
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5561
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    if-eqz v0, :cond_0

    .line 5562
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    .line 5564
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5349
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 5595
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5597
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 5600
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 5601
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5602
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 5603
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 5608
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5610
    const/4 v0, 0x1

    goto :goto_0

    .line 5605
    :sswitch_0
    const/4 v0, 0x1

    .line 5606
    goto :goto_0

    .line 5615
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5616
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 5636
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 5637
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 5620
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5621
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    goto :goto_0

    .line 5625
    :sswitch_3
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 5626
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5628
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5629
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 5634
    .end local v2           #tag:I
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5635
    const/4 v4, 0x1

    goto :goto_1

    .line 5603
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
    .line 5357
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 5349
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5349
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5432
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5433
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5434
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5435
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5436
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5443
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5444
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5445
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5446
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    .line 5447
    return-object p0
.end method

.method public setNumber(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5477
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5478
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5479
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    .line 5480
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5525
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->assertMutable()V

    .line 5526
    if-nez p1, :cond_0

    .line 5527
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5529
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    .line 5530
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    .line 5531
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
    .line 5687
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

    .line 5644
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 5645
    .local v1, bytesWrittenBefore:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 5646
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 5648
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 5649
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->number_:I

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5651
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 5652
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$EnumValueOptions;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 5654
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 5655
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 5656
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumValueDescriptorProto;->getCachedSize()I

    move-result v2

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_3

    .line 5657
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5662
    :cond_3
    return-void
.end method
