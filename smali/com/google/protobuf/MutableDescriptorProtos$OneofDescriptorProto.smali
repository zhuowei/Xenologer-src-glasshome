.class public final Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
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
    name = "OneofDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4866
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 4876
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    .line 4877
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->initFields()V

    .line 4878
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->makeImmutable()V

    .line 4879
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 4881
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4649
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 4684
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    .line 4649
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 4650
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 4684
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    .line 4650
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 1

    .prologue
    .line 4661
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4668
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 4658
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 1

    .prologue
    .line 4655
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 4644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 1

    .prologue
    .line 4859
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->assertMutable()V

    .line 4860
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 4861
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    .line 4862
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    .line 4863
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 1

    .prologue
    .line 4747
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->assertMutable()V

    .line 4748
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    .line 4749
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    .line 4750
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 4644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 1

    .prologue
    .line 4758
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

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
    .line 4644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 1

    .prologue
    .line 4664
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4695
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    .line 4696
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4697
    check-cast v1, Ljava/lang/String;

    .line 4705
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 4699
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 4700
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 4702
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4703
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4705
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 4712
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    .line 4713
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 4714
    check-cast v2, Ljava/lang/String;

    .line 4715
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 4716
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    .line 4719
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
            "Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4679
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4841
    const/4 v0, 0x0

    .line 4842
    .local v0, size:I
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 4843
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->getNameAsBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 4846
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4847
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->cachedSize:I

    .line 4848
    return v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4689
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

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
    .line 4672
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$1100()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4869
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 4870
    const-string v0, "com.google.protobuf.DescriptorProtos$OneofDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 4872
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4754
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4644
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 2
    .parameter "other"

    .prologue
    .line 4772
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->assertMutable()V

    .line 4773
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 4784
    :goto_0
    return-object p0

    .line 4774
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4775
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    .line 4776
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4777
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    .line 4783
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0

    .line 4779
    :cond_2
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 4780
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 1
    .parameter "other"

    .prologue
    .line 4763
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->assertMutable()V

    .line 4764
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    if-eqz v0, :cond_0

    .line 4765
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    .line 4767
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4644
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 4790
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->assertMutable()V

    .line 4792
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 4795
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 4796
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4797
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 4798
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 4803
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4805
    const/4 v0, 0x1

    goto :goto_0

    .line 4800
    :sswitch_0
    const/4 v0, 0x1

    .line 4801
    goto :goto_0

    .line 4810
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    .line 4811
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 4818
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 4819
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 4816
    .restart local v0       #done:Z
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4817
    const/4 v4, 0x1

    goto :goto_1

    .line 4798
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 1

    .prologue
    .line 4652
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 4644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4644
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4726
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->assertMutable()V

    .line 4727
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4728
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    .line 4729
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    .line 4730
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4737
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->assertMutable()V

    .line 4738
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4739
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    .line 4740
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->name_:Ljava/lang/Object;

    .line 4741
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
    .line 4855
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 4826
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 4827
    .local v1, bytesWrittenBefore:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 4828
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 4830
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4831
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 4832
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->getCachedSize()I

    move-result v2

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_1

    .line 4833
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4838
    :cond_1
    return-void
.end method
