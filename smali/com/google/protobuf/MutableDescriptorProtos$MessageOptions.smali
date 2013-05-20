.class public final Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
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
    name = "MessageOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final DEPRECATED_FIELD_NUMBER:I = 0x3

.field public static final MESSAGE_SET_WIRE_FORMAT_FIELD_NUMBER:I = 0x1

.field public static final NO_STANDARD_DESCRIPTOR_ACCESSOR_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deprecated_:Z

.field private messageSetWireFormat_:Z

.field private noStandardDescriptorAccessor_:Z

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
    .line 10435
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 10445
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    .line 10446
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->initFields()V

    .line 10447
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->makeImmutable()V

    .line 10448
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 10450
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9834
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 10124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    .line 9834
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 9835
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 10124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    .line 9835
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 10126
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 10127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    .line 10129
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 9846
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9853
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 9843
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 9840
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;"
        }
    .end annotation

    .prologue
    .line 10224
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10225
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->ensureUninterpretedOptionInitialized()V

    .line 10226
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10228
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 10207
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10208
    if-nez p1, :cond_0

    .line 10209
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10211
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->ensureUninterpretedOptionInitialized()V

    .line 10212
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10213
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 10193
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10194
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->ensureUninterpretedOptionInitialized()V

    .line 10195
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 10196
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10197
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10423
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10424
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 10425
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    .line 10426
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    .line 10427
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    .line 10428
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    .line 10429
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->deprecated_:Z

    .line 10430
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    .line 10431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    .line 10432
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 10117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10118
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    .line 10119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->deprecated_:Z

    .line 10120
    return-object p0
.end method

.method public clearMessageSetWireFormat()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 9999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10000
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    .line 10001
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    .line 10002
    return-object p0
.end method

.method public clearNoStandardDescriptorAccessor()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 10056
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10057
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    .line 10058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    .line 10059
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 10255
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    .line 10257
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 10271
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

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
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 9849
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 10088
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->deprecated_:Z

    return v0
.end method

.method public getMessageSetWireFormat()Z
    .locals 1

    .prologue
    .line 9932
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 10183
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 10161
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10162
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->ensureUninterpretedOptionInitialized()V

    .line 10163
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getNoStandardDescriptorAccessor()Z
    .locals 1

    .prologue
    .line 10029
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9864
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10390
    const/4 v1, 0x0

    .line 10391
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 10392
    iget-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10395
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 10396
    iget-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10399
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 10400
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10403
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 10404
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 10405
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 10404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10409
    .end local v0           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 10410
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 10411
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->cachedSize:I

    .line 10412
    return v1
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 10173
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 10138
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 10148
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 10149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 10151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 10075
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

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

.method public hasMessageSetWireFormat()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9900
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoStandardDescriptorAccessor()Z
    .locals 2

    .prologue
    .line 10017
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

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
    .line 9857
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2300()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10438
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 10439
    const-string v0, "com.google.protobuf.DescriptorProtos$MessageOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 10441
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 10261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 10262
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10267
    :cond_0
    :goto_1
    return v1

    .line 10261
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10266
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10267
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9829
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 2
    .parameter "other"

    .prologue
    .line 10285
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10286
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 10303
    :goto_0
    return-object p0

    .line 10287
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10288
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->setMessageSetWireFormat(Z)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    .line 10290
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10291
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->setNoStandardDescriptorAccessor(Z)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    .line 10293
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10294
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    .line 10296
    :cond_3
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10297
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->ensureUninterpretedOptionInitialized()V

    .line 10298
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10301
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 10302
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1
    .parameter "other"

    .prologue
    .line 10276
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10277
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    if-eqz v0, :cond_0

    .line 10278
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    .line 10280
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9829
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 10309
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10311
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 10314
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 10315
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 10316
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 10317
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 10322
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10324
    const/4 v0, 0x1

    goto :goto_0

    .line 10319
    :sswitch_0
    const/4 v0, 0x1

    .line 10320
    goto :goto_0

    .line 10329
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    .line 10330
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    goto :goto_0

    .line 10351
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 10352
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 10334
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    .line 10335
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    goto :goto_0

    .line 10339
    :sswitch_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    .line 10340
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->deprecated_:Z

    goto :goto_0

    .line 10344
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 10349
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10350
    const/4 v4, 0x1

    goto :goto_1

    .line 10317
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1f3a -> :sswitch_4
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 9837
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 9829
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 10101
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10102
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    .line 10103
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->deprecated_:Z

    .line 10104
    return-object p0
.end method

.method public setMessageSetWireFormat(Z)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 9964
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 9965
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    .line 9966
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    .line 9967
    return-object p0
.end method

.method public setNoStandardDescriptorAccessor(Z)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 10041
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10042
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    .line 10043
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    .line 10044
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10239
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->assertMutable()V

    .line 10240
    if-nez p2, :cond_0

    .line 10241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10243
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->ensureUninterpretedOptionInitialized()V

    .line 10244
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10245
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
    .line 10419
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

    .line 10359
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 10362
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 10363
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_0

    .line 10364
    iget-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10366
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_1

    .line 10367
    iget-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    invoke-virtual {p1, v6, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10369
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 10370
    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10372
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 10373
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 10374
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 10373
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10378
    .end local v3           #i:I
    :cond_3
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 10379
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 10380
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 10381
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_4

    .line 10382
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 10387
    :cond_4
    return-void
.end method
