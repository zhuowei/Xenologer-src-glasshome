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
    .line 13226
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 13236
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 13237
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->initFields()V

    .line 13238
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->makeImmutable()V

    .line 13239
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 13241
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12594
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 12629
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 12594
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 12595
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 12629
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 12595
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 12911
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 12912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 12914
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12606
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12613
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 12603
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12600
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
    .line 13009
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13010
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 13011
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13013
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12992
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12993
    if-nez p1, :cond_0

    .line 12994
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12996
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 12997
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12998
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 12978
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12979
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 12980
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 12981
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12982
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 12589
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 12589
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13214
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13215
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 13216
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13217
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13218
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    .line 13219
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13220
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    .line 13221
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13223
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 12589
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 12589
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearAllowAlias()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12841
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12842
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    .line 12844
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12902
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12903
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    .line 12905
    return-object p0
.end method

.method public clearProto1Name()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12788
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12789
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12790
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12791
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13040
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13042
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 12589
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 13056
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 12589
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 12589
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
    .line 12589
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getAllowAlias()Z
    .locals 1

    .prologue
    .line 12816
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12589
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12589
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 12609
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 12589
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 12873
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 12968
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
    .line 12946
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12947
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 12948
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
    .line 12624
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProto1Name()Ljava/lang/String;
    .locals 4

    .prologue
    .line 12672
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12673
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 12674
    check-cast v1, Ljava/lang/String;

    .line 12682
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 12676
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 12677
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 12679
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12680
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 12682
    goto :goto_0
.end method

.method public getProto1NameAsBytes()[B
    .locals 4

    .prologue
    .line 12705
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12706
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 12707
    check-cast v2, Ljava/lang/String;

    .line 12708
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 12709
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12712
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

    .line 13181
    const/4 v1, 0x0

    .line 13182
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 13183
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getProto1NameAsBytes()[B

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 13186
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 13187
    iget-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 13190
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 13191
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 13194
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 13195
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 13196
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 13195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13200
    .end local v0           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 13201
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 13202
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->cachedSize:I

    .line 13203
    return v1
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 12958
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 12923
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
    .line 12933
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 12934
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 12936
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
    .line 12805
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
    .line 12860
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

    .line 12650
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
    .line 12617
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
    .line 13229
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 13230
    const-string v0, "com.google.protobuf.DescriptorProtos$EnumOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 13232
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 13046
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 13047
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 13052
    :cond_0
    :goto_1
    return v1

    .line 13046
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13051
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13052
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12589
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 3
    .parameter "other"

    .prologue
    .line 13070
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13071
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 13094
    :goto_0
    return-object p0

    .line 13072
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->hasProto1Name()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13073
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13074
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 13075
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 13081
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->hasAllowAlias()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13082
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getAllowAlias()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->setAllowAlias(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 13084
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13085
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .line 13087
    :cond_3
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13088
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 13089
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13092
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 13093
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto :goto_0

    .line 13077
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 13078
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
    .line 13061
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13062
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    if-eqz v0, :cond_0

    .line 13063
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    .line 13065
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12589
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 13100
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13102
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 13105
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 13106
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 13107
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 13108
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 13113
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 13115
    const/4 v0, 0x1

    goto :goto_0

    .line 13110
    :sswitch_0
    const/4 v0, 0x1

    .line 13111
    goto :goto_0

    .line 13120
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13121
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    goto :goto_0

    .line 13142
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 13143
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 13125
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13126
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    goto :goto_0

    .line 13130
    :sswitch_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 13131
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    goto :goto_0

    .line 13135
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 13140
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13141
    const/4 v4, 0x1

    goto :goto_1

    .line 13108
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
    .line 12597
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 12589
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 12589
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public setAllowAlias(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12827
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12828
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12829
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    .line 12830
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12886
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12887
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12888
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    .line 12889
    return-object p0
.end method

.method public setProto1Name(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12735
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12736
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12737
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12738
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12739
    return-object p0
.end method

.method public setProto1NameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12762
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 12763
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12764
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    .line 12765
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->proto1Name_:Ljava/lang/Object;

    .line 12766
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13024
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->assertMutable()V

    .line 13025
    if-nez p2, :cond_0

    .line 13026
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13028
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->ensureUninterpretedOptionInitialized()V

    .line 13029
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13030
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
    .line 13210
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

    .line 13150
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 13153
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 13154
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_0

    .line 13155
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getProto1NameAsBytes()[B

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 13157
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_1

    .line 13158
    iget-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->allowAlias_:Z

    invoke-virtual {p1, v6, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13160
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 13161
    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13163
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 13164
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 13165
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 13164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13169
    .end local v3           #i:I
    :cond_3
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 13170
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 13171
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 13172
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$EnumOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_4

    .line 13173
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 13178
    :cond_4
    return-void
.end method
