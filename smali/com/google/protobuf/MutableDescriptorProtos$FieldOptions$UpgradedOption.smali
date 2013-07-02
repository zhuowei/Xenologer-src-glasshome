.class public final Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
.super Lcom/google/protobuf/GeneratedMutableMessage;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpgradedOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11717
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->immutableDefault:Lcom/google/protobuf/Message;

    .line 11727
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    .line 11728
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->initFields()V

    .line 11729
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->makeImmutable()V

    .line 11730
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    .line 11732
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11407
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 11442
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 11512
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 11407
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 11408
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 11442
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 11512
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 11408
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 11419
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11426
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 11416
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 11413
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 11402
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 11708
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->assertMutable()V

    .line 11709
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 11710
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 11711
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 11712
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 11713
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 11714
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 11402
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 11402
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 11505
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->assertMutable()V

    .line 11506
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 11507
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 11508
    return-object p0
.end method

.method public clearValue()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 11575
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->assertMutable()V

    .line 11576
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 11577
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 11578
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 11402
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 11586
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 11402
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 11402
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

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
    .line 11402
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11402
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11402
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 11422
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 11402
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 11453
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 11454
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 11455
    check-cast v1, Ljava/lang/String;

    .line 11463
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 11457
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 11458
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 11460
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11461
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 11463
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 11470
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 11471
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 11472
    check-cast v2, Ljava/lang/String;

    .line 11473
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 11474
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 11477
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
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11437
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11686
    const/4 v0, 0x0

    .line 11687
    .local v0, size:I
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 11688
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getNameAsBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 11691
    :cond_0
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 11692
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getValueAsBytes()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 11695
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 11696
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->cachedSize:I

    .line 11697
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 11523
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 11524
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 11525
    check-cast v1, Ljava/lang/String;

    .line 11533
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 11527
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 11528
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 11530
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11531
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 11533
    goto :goto_0
.end method

.method public getValueAsBytes()[B
    .locals 4

    .prologue
    .line 11540
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 11541
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 11542
    check-cast v2, Ljava/lang/String;

    .line 11543
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 11544
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 11547
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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11447
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 11517
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

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
    .line 11430
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2900()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11720
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 11721
    const-string v0, "com.google.protobuf.DescriptorProtos$FieldOptions$UpgradedOption"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->immutableDefault:Lcom/google/protobuf/Message;

    .line 11723
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 11582
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11402
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 2
    .parameter "other"

    .prologue
    .line 11600
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->assertMutable()V

    .line 11601
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 11621
    :goto_0
    return-object p0

    .line 11602
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11603
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 11604
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 11605
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 11611
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11612
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 11613
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 11614
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 11620
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0

    .line 11607
    :cond_3
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 11608
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    goto :goto_1

    .line 11616
    .end local v0           #ba:[B
    :cond_4
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 11617
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "other"

    .prologue
    .line 11591
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->assertMutable()V

    .line 11592
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    if-eqz v0, :cond_0

    .line 11593
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    .line 11595
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11402
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 11627
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->assertMutable()V

    .line 11629
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 11632
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 11633
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 11634
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 11635
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 11640
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 11642
    const/4 v0, 0x1

    goto :goto_0

    .line 11637
    :sswitch_0
    const/4 v0, 0x1

    .line 11638
    goto :goto_0

    .line 11647
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 11648
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 11660
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 11661
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 11652
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 11653
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 11658
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11659
    const/4 v4, 0x1

    goto :goto_1

    .line 11635
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 11410
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 11402
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 11402
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 11484
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->assertMutable()V

    .line 11485
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11486
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 11487
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 11488
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 11495
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->assertMutable()V

    .line 11496
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11497
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 11498
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 11499
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 11554
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->assertMutable()V

    .line 11555
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11556
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 11557
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 11558
    return-object p0
.end method

.method public setValueAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "value"

    .prologue
    .line 11565
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->assertMutable()V

    .line 11566
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11567
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 11568
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 11569
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
    .line 11704
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

    .line 11668
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 11669
    .local v1, bytesWrittenBefore:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 11670
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getNameAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 11672
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 11673
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getValueAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 11675
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 11676
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 11677
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->getCachedSize()I

    move-result v2

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_2

    .line 11678
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 11683
    :cond_2
    return-void
.end method
