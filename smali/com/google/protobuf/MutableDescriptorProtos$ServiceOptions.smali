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
    .line 14246
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 14256
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 14257
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->initFields()V

    .line 14258
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->makeImmutable()V

    .line 14259
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 14261
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 13661
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 13729
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    .line 13935
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13661
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    .line 13662
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 13729
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    .line 13935
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13662
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 13937
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 13938
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13940
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 13673
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13680
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 13670
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 13667
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
    .line 14035
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14036
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->ensureUninterpretedOptionInitialized()V

    .line 14037
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14039
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 14018
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14019
    if-nez p1, :cond_0

    .line 14020
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14022
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->ensureUninterpretedOptionInitialized()V

    .line 14023
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14024
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 14004
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14005
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->ensureUninterpretedOptionInitialized()V

    .line 14006
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 14007
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14008
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 13656
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 13656
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14234
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14235
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 14236
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    .line 14237
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14238
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    .line 14239
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14240
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    .line 14241
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14243
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13656
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13656
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 13928
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 13929
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 13930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    .line 13931
    return-object p0
.end method

.method public clearFailureDetectionDelay()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 2

    .prologue
    .line 13867
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 13868
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 13869
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    .line 13870
    return-object p0
.end method

.method public clearMulticastStub()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 13722
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 13723
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 13724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    .line 13725
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 14066
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14067
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14068
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 13656
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 14082
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13656
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13656
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
    .line 13656
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13656
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13656
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 13676
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13656
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 13899
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    return v0
.end method

.method public getFailureDetectionDelay()D
    .locals 2

    .prologue
    .line 13796
    iget-wide v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    return-wide v0
.end method

.method public getMulticastStub()Z
    .locals 1

    .prologue
    .line 13707
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 13994
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
    .line 13972
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 13973
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->ensureUninterpretedOptionInitialized()V

    .line 13974
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
    .line 13691
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 14201
    const/4 v1, 0x0

    .line 14202
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 14203
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 14206
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 14207
    const/16 v2, 0x10

    iget-wide v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v1, v2

    .line 14210
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 14211
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 14214
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 14215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 14216
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 14215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14220
    .end local v0           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 14221
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 14222
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->cachedSize:I

    .line 14223
    return v1
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 13984
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 13949
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
    .line 13959
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 13960
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 13962
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
    .line 13886
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
    .line 13762
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

    .line 13701
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
    .line 13684
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$3300()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14249
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 14250
    const-string v0, "com.google.protobuf.DescriptorProtos$ServiceOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 14252
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 14072
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 14073
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14078
    :cond_0
    :goto_1
    return v1

    .line 14072
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14077
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14078
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13656
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 2
    .parameter "other"

    .prologue
    .line 14096
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14097
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 14114
    :goto_0
    return-object p0

    .line 14098
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->hasFailureDetectionDelay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14099
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getFailureDetectionDelay()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->setFailureDetectionDelay(D)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 14101
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->hasMulticastStub()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14102
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getMulticastStub()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->setMulticastStub(Z)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 14104
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14105
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .line 14107
    :cond_3
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14108
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->ensureUninterpretedOptionInitialized()V

    .line 14109
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14112
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 14113
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "other"

    .prologue
    .line 14087
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14088
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    if-eqz v0, :cond_0

    .line 14089
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    .line 14091
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
    .line 13656
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 14120
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14122
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 14125
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 14126
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 14127
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 14128
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 14133
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 14135
    const/4 v0, 0x1

    goto :goto_0

    .line 14130
    :sswitch_0
    const/4 v0, 0x1

    .line 14131
    goto :goto_0

    .line 14140
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14141
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    goto :goto_0

    .line 14162
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 14163
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 14145
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14146
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    goto :goto_0

    .line 14150
    :sswitch_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 14151
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    goto :goto_0

    .line 14155
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 14160
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14161
    const/4 v4, 0x1

    goto :goto_1

    .line 14128
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
    .line 13664
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 13656
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13656
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 13912
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 13913
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 13914
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    .line 13915
    return-object p0
.end method

.method public setFailureDetectionDelay(D)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 13830
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 13831
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 13832
    iput-wide p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    .line 13833
    return-object p0
.end method

.method public setMulticastStub(Z)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 13713
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 13714
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    .line 13715
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    .line 13716
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14050
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->assertMutable()V

    .line 14051
    if-nez p2, :cond_0

    .line 14052
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14054
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->ensureUninterpretedOptionInitialized()V

    .line 14055
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14056
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
    .line 14230
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
    .line 14170
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 14173
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 14174
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 14175
    const/16 v4, 0x10

    iget-wide v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->failureDetectionDelay_:D

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 14177
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 14178
    const/16 v4, 0x14

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->multicastStub_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14180
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 14181
    const/16 v4, 0x21

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14183
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 14184
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 14185
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 14184
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14189
    .end local v3           #i:I
    :cond_3
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 14190
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 14191
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 14192
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_4

    .line 14193
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 14198
    :cond_4
    return-void
.end method
