.class public final Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
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
    name = "FieldOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;,
        Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;,
        Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;,
        Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final CTYPE_FIELD_NUMBER:I = 0x1

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x3

.field public static final EXPERIMENTAL_MAP_KEY_FIELD_NUMBER:I = 0x9

.field public static final JSTYPE_FIELD_NUMBER:I = 0x6

.field public static final JTYPE_FIELD_NUMBER:I = 0x4

.field public static final LAZY_FIELD_NUMBER:I = 0x5

.field public static final PACKED_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field public static final UPGRADED_OPTION_FIELD_NUMBER:I = 0xb

.field public static final WEAK_FIELD_NUMBER:I = 0xa

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ctype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

.field private deprecated_:Z

.field private experimentalMapKey_:Ljava/lang/Object;

.field private jstype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

.field private jtype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

.field private lazy_:Z

.field private packed_:Z

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

.field private upgradedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;",
            ">;"
        }
    .end annotation
.end field

.field private weak_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13098
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 13108
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 13109
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->initFields()V

    .line 13110
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->makeImmutable()V

    .line 13111
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 13113
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10995
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 11739
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ctype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    .line 11864
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jtype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    .line 11916
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;->JS_NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jstype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    .line 12254
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    .line 12519
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    .line 12656
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    .line 10995
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const/4 v1, 0x0

    .line 10996
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 11739
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ctype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    .line 11864
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jtype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    .line 11916
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;->JS_NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jstype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    .line 12254
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    .line 12519
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    .line 12656
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    .line 10996
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 12658
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 12659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    .line 12661
    :cond_0
    return-void
.end method

.method private ensureUpgradedOptionInitialized()V
    .locals 1

    .prologue
    .line 12521
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 12522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    .line 12524
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 11010
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11017
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 11004
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ctype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    .line 11005
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jtype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    .line 11006
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;->JS_NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jstype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    .line 11007
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 11001
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;"
        }
    .end annotation

    .prologue
    .line 12756
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12757
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ensureUninterpretedOptionInitialized()V

    .line 12758
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12760
    return-object p0
.end method

.method public addAllUpgradedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;"
        }
    .end annotation

    .prologue
    .line 12619
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12620
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ensureUpgradedOptionInitialized()V

    .line 12621
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12623
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12739
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12740
    if-nez p1, :cond_0

    .line 12741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12743
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ensureUninterpretedOptionInitialized()V

    .line 12744
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12745
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 12725
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12726
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ensureUninterpretedOptionInitialized()V

    .line 12727
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 12728
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12729
    return-object v0
.end method

.method public addUpgradedOption()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 2

    .prologue
    .line 12588
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12589
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ensureUpgradedOptionInitialized()V

    .line 12590
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    .line 12591
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12592
    return-object v0
.end method

.method public addUpgradedOption(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12602
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12603
    if-nez p1, :cond_0

    .line 12604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12606
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ensureUpgradedOptionInitialized()V

    .line 12607
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12608
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13075
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 13076
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 13077
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ctype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    .line 13078
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 13079
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->packed_:Z

    .line 13080
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 13081
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jtype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    .line 13082
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 13083
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;->JS_NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jstype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    .line 13084
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 13085
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->lazy_:Z

    .line 13086
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 13087
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->deprecated_:Z

    .line 13088
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 13089
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    .line 13090
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 13091
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->weak_:Z

    .line 13092
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 13093
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    .line 13094
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    .line 13095
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearCtype()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 11796
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 11797
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 11798
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ctype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    .line 11799
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 12247
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12248
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->deprecated_:Z

    .line 12250
    return-object p0
.end method

.method public clearExperimentalMapKey()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 12407
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12408
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12409
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    .line 12410
    return-object p0
.end method

.method public clearJstype()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 11997
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 11998
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 11999
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;->JS_NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jstype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    .line 12000
    return-object p0
.end method

.method public clearJtype()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 11909
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 11910
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 11911
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jtype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    .line 11912
    return-object p0
.end method

.method public clearLazy()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 12186
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12187
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->lazy_:Z

    .line 12189
    return-object p0
.end method

.method public clearPacked()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 11857
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 11858
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 11859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->packed_:Z

    .line 11860
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 12787
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    .line 12789
    return-object p0
.end method

.method public clearUpgradedOption()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 12650
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    .line 12652
    return-object p0
.end method

.method public clearWeak()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 12512
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12513
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->weak_:Z

    .line 12515
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 12803
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

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
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCtype()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;
    .locals 1

    .prologue
    .line 11764
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ctype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 11013
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 12218
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->deprecated_:Z

    return v0
.end method

.method public getExperimentalMapKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 12295
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    .line 12296
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 12297
    check-cast v1, Ljava/lang/String;

    .line 12305
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 12299
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 12300
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 12302
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12303
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 12305
    goto :goto_0
.end method

.method public getExperimentalMapKeyAsBytes()[B
    .locals 4

    .prologue
    .line 12327
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    .line 12328
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 12329
    check-cast v2, Ljava/lang/String;

    .line 12330
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 12331
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    .line 12334
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

.method public getJstype()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;
    .locals 1

    .prologue
    .line 11953
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jstype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    return-object v0
.end method

.method public getJtype()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;
    .locals 1

    .prologue
    .line 11883
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jtype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    return-object v0
.end method

.method public getLazy()Z
    .locals 1

    .prologue
    .line 12093
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->lazy_:Z

    return v0
.end method

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 12715
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 12693
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12694
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ensureUninterpretedOptionInitialized()V

    .line 12695
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableUpgradedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 12578
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public getMutableUpgradedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12556
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12557
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ensureUpgradedOptionInitialized()V

    .line 12558
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getPacked()Z
    .locals 1

    .prologue
    .line 11828
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->packed_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11028
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13016
    const/4 v1, 0x0

    .line 13017
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 13018
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ctype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 13021
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 13022
    iget-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->packed_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 13025
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    .line 13026
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jtype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->getNumber()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 13029
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 13030
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jstype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 13033
    :cond_3
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 13034
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->lazy_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 13037
    :cond_4
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 13038
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 13041
    :cond_5
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 13042
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getExperimentalMapKeyAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 13045
    :cond_6
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 13046
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->weak_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 13049
    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 13050
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 13051
    const/16 v3, 0xb

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 13050
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13055
    .end local v0           #i:I
    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 13056
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 13057
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 13056
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13061
    .end local v0           #i:I
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 13062
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 13063
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->cachedSize:I

    .line 13064
    return v1
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 12705
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 12670
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 12680
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 12681
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 12683
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUpgradedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 12568
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public getUpgradedOptionCount()I
    .locals 1

    .prologue
    .line 12533
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getUpgradedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12543
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 12544
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 12546
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getWeak()Z
    .locals 1

    .prologue
    .line 12461
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->weak_:Z

    return v0
.end method

.method public hasCtype()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11751
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 12205
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExperimentalMapKey()Z
    .locals 2

    .prologue
    .line 12274
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJstype()Z
    .locals 2

    .prologue
    .line 11934
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

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

.method public hasJtype()Z
    .locals 2

    .prologue
    .line 11873
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

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

.method public hasLazy()Z
    .locals 2

    .prologue
    .line 12048
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPacked()Z
    .locals 2

    .prologue
    .line 11815
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

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

.method public hasWeak()Z
    .locals 2

    .prologue
    .line 12437
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

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
    .line 11021
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2700()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13101
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 13102
    const-string v0, "com.google.protobuf.DescriptorProtos$FieldOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 13104
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 12793
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 12794
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 12799
    :cond_0
    :goto_1
    return v1

    .line 12793
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12798
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12799
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10990
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 3
    .parameter "other"

    .prologue
    .line 12817
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12818
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 12861
    :goto_0
    return-object p0

    .line 12819
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12820
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getCtype()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->setCtype(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 12822
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12823
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getPacked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->setPacked(Z)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 12825
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12826
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 12828
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->hasJtype()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12829
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getJtype()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->setJtype(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 12831
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->hasLazy()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12832
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getLazy()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->setLazy(Z)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 12834
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->hasJstype()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12835
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getJstype()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->setJstype(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 12837
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->hasExperimentalMapKey()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12838
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12839
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 12840
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    .line 12846
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->hasWeak()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 12847
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getWeak()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->setWeak(Z)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 12849
    :cond_8
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 12850
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ensureUpgradedOptionInitialized()V

    .line 12851
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12854
    :cond_9
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 12855
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ensureUninterpretedOptionInitialized()V

    .line 12856
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12859
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 12860
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto/16 :goto_0

    .line 12842
    :cond_b
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 12843
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "other"

    .prologue
    .line 12808
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12809
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    if-eqz v0, :cond_0

    .line 12810
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    .line 12812
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10990
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    const/4 v6, 0x1

    .line 12867
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12869
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 12872
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 12873
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 12874
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 12875
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 12880
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 12882
    const/4 v0, 0x1

    goto :goto_0

    .line 12877
    :sswitch_0
    const/4 v0, 0x1

    .line 12878
    goto :goto_0

    .line 12887
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 12888
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    move-result-object v5

    .line 12889
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;
    if-nez v5, :cond_1

    .line 12890
    const/4 v7, 0x1

    invoke-virtual {v4, v7, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 12956
    .end local v0           #done:Z
    .end local v2           #rawValue:I
    .end local v3           #tag:I
    .end local v4           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;
    :catch_0
    move-exception v1

    .line 12957
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 12892
    .restart local v0       #done:Z
    .restart local v2       #rawValue:I
    .restart local v3       #tag:I
    .restart local v4       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local v5       #value:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;
    :cond_1
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12893
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ctype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    goto :goto_0

    .line 12898
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;
    :sswitch_2
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12899
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->packed_:Z

    goto :goto_0

    .line 12903
    :sswitch_3
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12904
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->deprecated_:Z

    goto :goto_0

    .line 12908
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 12909
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    move-result-object v5

    .line 12910
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;
    if-nez v5, :cond_2

    .line 12911
    const/4 v7, 0x4

    invoke-virtual {v4, v7, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 12913
    :cond_2
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12914
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jtype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    goto :goto_0

    .line 12919
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;
    :sswitch_5
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12920
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->lazy_:Z

    goto :goto_0

    .line 12924
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 12925
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    move-result-object v5

    .line 12926
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;
    if-nez v5, :cond_3

    .line 12927
    const/4 v7, 0x6

    invoke-virtual {v4, v7, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 12929
    :cond_3
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12930
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jstype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    goto/16 :goto_0

    .line 12935
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;
    :sswitch_7
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12936
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 12940
    :sswitch_8
    iget v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12941
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->weak_:Z

    goto/16 :goto_0

    .line 12945
    :sswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->addUpgradedOption()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 12949
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 12954
    .end local v3           #tag:I
    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 12875
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x4a -> :sswitch_7
        0x50 -> :sswitch_8
        0x5a -> :sswitch_9
        0x1f3a -> :sswitch_a
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 10998
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public setCtype(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 11777
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 11778
    if-nez p1, :cond_0

    .line 11779
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11781
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 11782
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ctype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    .line 11783
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12231
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12232
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12233
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->deprecated_:Z

    .line 12234
    return-object p0
.end method

.method public setExperimentalMapKey(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12356
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12357
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12358
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12359
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    .line 12360
    return-object p0
.end method

.method public setExperimentalMapKeyAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12382
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12383
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12384
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12385
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/Object;

    .line 12386
    return-object p0
.end method

.method public setJstype(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 11972
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 11973
    if-nez p1, :cond_0

    .line 11974
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11976
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 11977
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jstype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    .line 11978
    return-object p0
.end method

.method public setJtype(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 11893
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 11894
    if-nez p1, :cond_0

    .line 11895
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11897
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 11898
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jtype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    .line 11899
    return-object p0
.end method

.method public setLazy(Z)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12138
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12139
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12140
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->lazy_:Z

    .line 12141
    return-object p0
.end method

.method public setPacked(Z)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 11841
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 11842
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 11843
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->packed_:Z

    .line 11844
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12771
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12772
    if-nez p2, :cond_0

    .line 12773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12775
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ensureUninterpretedOptionInitialized()V

    .line 12776
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12777
    return-object p0
.end method

.method public setUpgradedOption(ILcom/google/protobuf/MutableDescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12634
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12635
    if-nez p2, :cond_0

    .line 12636
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12638
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ensureUpgradedOptionInitialized()V

    .line 12639
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12640
    return-object p0
.end method

.method public setWeak(Z)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 12485
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->assertMutable()V

    .line 12486
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    .line 12487
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->weak_:Z

    .line 12488
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
    .line 13071
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 12964
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 12967
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 12968
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_0

    .line 12969
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->ctype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;

    invoke-virtual {v4}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$CType;->getNumber()I

    move-result v4

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12971
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_1

    .line 12972
    iget-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->packed_:Z

    invoke-virtual {p1, v6, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12974
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 12975
    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12977
    :cond_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3

    .line 12978
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jtype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    invoke-virtual {v4}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->getNumber()I

    move-result v4

    invoke-virtual {p1, v7, v4}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12980
    :cond_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 12981
    const/4 v4, 0x5

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->lazy_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12983
    :cond_4
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 12984
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->jstype_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JSType;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12986
    :cond_5
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    .line 12987
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getExperimentalMapKeyAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 12989
    :cond_6
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_7

    .line 12990
    const/16 v4, 0xa

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->weak_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12992
    :cond_7
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    if-eqz v4, :cond_8

    .line 12993
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 12994
    const/16 v5, 0xb

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->upgradedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 12993
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12998
    .end local v3           #i:I
    :cond_8
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 12999
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 13000
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 12999
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13004
    .end local v3           #i:I
    :cond_9
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 13005
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 13006
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 13007
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_a

    .line 13008
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 13013
    :cond_a
    return-void
.end method
