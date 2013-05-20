.class public final Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
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
    name = "EnumOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final ALLOW_ALIAS_FIELD_NUMBER:I = 0x2

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTO1_NAME_FIELD_NUMBER:I = 0x1

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private allowAlias_:Z

.field private bitField0_:I

.field private deprecated_:Z

.field private proto1Name_:Ljava/lang/Object;

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
    .line 13222
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 13232
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 13233
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->initFields()V

    .line 13234
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->makeImmutable()V

    .line 13235
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 13237
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12590
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 12625
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12905
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 12590
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 12591
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 12625
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12905
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 12591
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 12907
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 12908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 12910
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12602
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12609
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 12599
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12596
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;"
        }
    .end annotation

    .prologue
    .line 13005
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13006
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 13007
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13009
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12988
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12989
    if-nez p1, :cond_0

    .line 12990
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12992
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 12993
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12994
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 12974
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12975
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 12976
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 12977
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12978
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13210
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13211
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 13212
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13213
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13214
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    .line 13215
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13216
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    .line 13217
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13219
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearAllowAlias()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12837
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12838
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    .line 12840
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12898
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12899
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    .line 12901
    return-object p0
.end method

.method public clearProto1Name()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12784
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12785
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12786
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12787
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13036
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13037
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13038
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13052
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

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
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getAllowAlias()Z
    .locals 1

    .prologue
    .line 12812
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12605
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 12869
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 12964
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 12942
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12943
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 12944
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12620
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProto1Name()Ljava/lang/String;
    .locals 4

    .prologue
    .line 12668
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12669
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 12670
    check-cast v1, Ljava/lang/String;

    .line 12678
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 12672
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 12673
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 12675
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12676
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 12678
    goto :goto_0
.end method

.method public getProto1NameAsBytes()[B
    .locals 4

    .prologue
    .line 12701
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12702
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 12703
    check-cast v2, Ljava/lang/String;

    .line 12704
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 12705
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12708
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

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13177
    const/4 v1, 0x0

    .line 13178
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 13179
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getProto1NameAsBytes()[B

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 13182
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 13183
    iget-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 13186
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 13187
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 13190
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 13191
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 13192
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 13191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13196
    .end local v0           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 13197
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 13198
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->cachedSize:I

    .line 13199
    return v1
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 12954
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 12919
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 12929
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 12930
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 12932
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasAllowAlias()Z
    .locals 2

    .prologue
    .line 12801
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

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

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 12856
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

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

.method public hasProto1Name()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12646
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

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
    .line 12613
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2900()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13225
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 13226
    const-string v0, "com.google.protobuf.DescriptorProtos$EnumOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 13228
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 13042
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 13043
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 13048
    :cond_0
    :goto_1
    return v1

    .line 13042
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13047
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13048
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 3
    .parameter "other"

    .prologue
    .line 13066
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13067
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 13090
    :goto_0
    return-object p0

    .line 13068
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->hasProto1Name()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13069
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13070
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 13071
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13077
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->hasAllowAlias()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13078
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getAllowAlias()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->setAllowAlias(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 13080
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13081
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 13083
    :cond_3
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13084
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 13085
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13088
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 13089
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0

    .line 13073
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 13074
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "other"

    .prologue
    .line 13057
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13058
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    if-eqz v0, :cond_0

    .line 13059
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    .line 13061
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 13096
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13098
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 13101
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 13102
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 13103
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 13104
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 13109
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 13111
    const/4 v0, 0x1

    goto :goto_0

    .line 13106
    :sswitch_0
    const/4 v0, 0x1

    .line 13107
    goto :goto_0

    .line 13116
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13117
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    goto :goto_0

    .line 13138
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 13139
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 13121
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13122
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    goto :goto_0

    .line 13126
    :sswitch_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13127
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    goto :goto_0

    .line 13131
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 13136
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13137
    const/4 v4, 0x1

    goto :goto_1

    .line 13104
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1f3a -> :sswitch_4
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12593
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 12585
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public setAllowAlias(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12823
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12824
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12825
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    .line 12826
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12882
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12883
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12884
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    .line 12885
    return-object p0
.end method

.method public setProto1Name(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12731
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12732
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12733
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12734
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12735
    return-object p0
.end method

.method public setProto1NameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12758
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12759
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12760
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12761
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12762
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13020
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13021
    if-nez p2, :cond_0

    .line 13022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13024
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 13025
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13026
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
    .line 13206
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

    .line 13146
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 13149
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 13150
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_0

    .line 13151
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getProto1NameAsBytes()[B

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 13153
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_1

    .line 13154
    iget-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    invoke-virtual {p1, v6, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13156
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 13157
    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13159
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 13160
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 13161
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 13160
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13165
    .end local v3           #i:I
    :cond_3
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 13166
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 13167
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 13168
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_4

    .line 13169
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 13174
    :cond_4
    return-void
.end method
