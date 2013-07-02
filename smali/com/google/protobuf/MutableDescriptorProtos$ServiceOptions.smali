.class public final Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
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
    name = "ServiceOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final DEPRECATED_FIELD_NUMBER:I = 0x21

.field public static final FAILURE_DETECTION_DELAY_FIELD_NUMBER:I = 0x10

.field public static final MULTICAST_STUB_FIELD_NUMBER:I = 0x14

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deprecated_:Z

.field private failureDetectionDelay_:D

.field private multicastStub_:Z

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
    .line 14778
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 14788
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 14789
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->initFields()V

    .line 14790
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->makeImmutable()V

    .line 14791
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 14793
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14193
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 14261
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    .line 14467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14193
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    .line 14194
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 14261
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    .line 14467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14194
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 14469
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 14470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14472
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 14205
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14212
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 14202
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 14199
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;"
        }
    .end annotation

    .prologue
    .line 14567
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14568
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->ensureUninterpretedOptionInitialized()V

    .line 14569
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14571
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14550
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14551
    if-nez p1, :cond_0

    .line 14552
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14554
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->ensureUninterpretedOptionInitialized()V

    .line 14555
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14556
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 14536
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14537
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->ensureUninterpretedOptionInitialized()V

    .line 14538
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 14539
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14540
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14766
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14767
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 14768
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    .line 14769
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14770
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    .line 14771
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14772
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    .line 14773
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14774
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14775
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 14460
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14461
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    .line 14463
    return-object p0
.end method

.method public clearFailureDetectionDelay()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 2

    .prologue
    .line 14399
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14400
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14401
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    .line 14402
    return-object p0
.end method

.method public clearMulticastStub()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 14254
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14255
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    .line 14257
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 14598
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14600
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 14614
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

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
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 14208
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 14431
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    return v0
.end method

.method public getFailureDetectionDelay()D
    .locals 2

    .prologue
    .line 14328
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    return-wide v0
.end method

.method public getMulticastStub()Z
    .locals 1

    .prologue
    .line 14239
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 14526
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 14504
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14505
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->ensureUninterpretedOptionInitialized()V

    .line 14506
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14223
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 14733
    const/4 v1, 0x0

    .line 14734
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 14735
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 14738
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 14739
    const/16 v2, 0x10

    iget-wide v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v1, v2

    .line 14742
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 14743
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 14746
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 14747
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 14748
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 14747
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14752
    .end local v0           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 14753
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 14754
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->cachedSize:I

    .line 14755
    return v1
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 14516
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 14481
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 14491
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 14492
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 14494
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 14418
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

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

.method public hasFailureDetectionDelay()Z
    .locals 2

    .prologue
    .line 14294
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

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

.method public hasMulticastStub()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14233
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

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
    .line 14216
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3500()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14781
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 14782
    const-string v0, "com.google.protobuf.DescriptorProtos$ServiceOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 14784
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 14604
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 14605
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14610
    :cond_0
    :goto_1
    return v1

    .line 14604
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14609
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14610
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14188
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 2
    .parameter "other"

    .prologue
    .line 14628
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14629
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 14646
    :goto_0
    return-object p0

    .line 14630
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->hasFailureDetectionDelay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14631
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getFailureDetectionDelay()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->setFailureDetectionDelay(D)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 14633
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->hasMulticastStub()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14634
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getMulticastStub()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->setMulticastStub(Z)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 14636
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14637
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 14639
    :cond_3
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14640
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->ensureUninterpretedOptionInitialized()V

    .line 14641
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14644
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 14645
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "other"

    .prologue
    .line 14619
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14620
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    if-eqz v0, :cond_0

    .line 14621
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    .line 14623
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14188
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 14652
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14654
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 14657
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 14658
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 14659
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 14660
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 14665
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 14667
    const/4 v0, 0x1

    goto :goto_0

    .line 14662
    :sswitch_0
    const/4 v0, 0x1

    .line 14663
    goto :goto_0

    .line 14672
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14673
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    goto :goto_0

    .line 14694
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 14695
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 14677
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14678
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    goto :goto_0

    .line 14682
    :sswitch_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14683
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    goto :goto_0

    .line 14687
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 14692
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14693
    const/4 v4, 0x1

    goto :goto_1

    .line 14660
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x81 -> :sswitch_1
        0xa0 -> :sswitch_2
        0x108 -> :sswitch_3
        0x1f3a -> :sswitch_4
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 14196
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14444
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14445
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14446
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    .line 14447
    return-object p0
.end method

.method public setFailureDetectionDelay(D)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14362
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14363
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14364
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    .line 14365
    return-object p0
.end method

.method public setMulticastStub(Z)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14246
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14247
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    .line 14248
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14582
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14583
    if-nez p2, :cond_0

    .line 14584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14586
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->ensureUninterpretedOptionInitialized()V

    .line 14587
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14588
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
    .line 14762
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
    .line 14702
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 14705
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 14706
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 14707
    const/16 v4, 0x10

    iget-wide v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 14709
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 14710
    const/16 v4, 0x14

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14712
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 14713
    const/16 v4, 0x21

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14715
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 14716
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 14717
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 14716
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14721
    .end local v3           #i:I
    :cond_3
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 14722
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 14723
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 14724
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_4

    .line 14725
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 14730
    :cond_4
    return-void
.end method
