.class public final Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
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
    name = "FileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;,
        Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final CC_API_COMPATIBILITY_FIELD_NUMBER:I = 0xf

.field public static final CC_API_VERSION_FIELD_NUMBER:I = 0x2

.field public static final CC_GENERIC_SERVICES_FIELD_NUMBER:I = 0x10

.field public static final CC_PROTO1_TEXT_FORMAT_FIELD_NUMBER:I = 0x19

.field public static final CC_PROTO_ARRAY_COMPATIBLE_FIELD_NUMBER:I = 0x16

.field public static final CC_UTF8_VERIFICATION_FIELD_NUMBER:I = 0x18

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x17

.field public static final GO_PACKAGE_FIELD_NUMBER:I = 0xb

.field public static final JAVASCRIPT_PACKAGE_FIELD_NUMBER:I = 0xc

.field public static final JAVA_ALT_API_PACKAGE_FIELD_NUMBER:I = 0x13

.field public static final JAVA_API_VERSION_FIELD_NUMBER:I = 0x5

.field public static final JAVA_DUAL_GENERATE_MUTABLE_API_FIELD_NUMBER:I = 0x1a

.field public static final JAVA_GENERATE_EQUALS_AND_HASH_FIELD_NUMBER:I = 0x14

.field public static final JAVA_GENERATE_RPC_BASEIMPL_FIELD_NUMBER:I = 0xd

.field public static final JAVA_GENERIC_SERVICES_FIELD_NUMBER:I = 0x11

.field public static final JAVA_JAVA5_ENUMS_FIELD_NUMBER:I = 0x7

.field public static final JAVA_MULTIPLE_FILES_FIELD_NUMBER:I = 0xa

.field public static final JAVA_OUTER_CLASSNAME_FIELD_NUMBER:I = 0x8

.field public static final JAVA_PACKAGE_FIELD_NUMBER:I = 0x1

.field public static final JAVA_USE_JAVAPROTO2_FIELD_NUMBER:I = 0x6

.field public static final JAVA_USE_JAVASTRINGS_FIELD_NUMBER:I = 0x15

.field public static final OPTIMIZE_FOR_FIELD_NUMBER:I = 0x9

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PY_API_VERSION_FIELD_NUMBER:I = 0x4

.field public static final PY_GENERIC_SERVICES_FIELD_NUMBER:I = 0x12

.field public static final SZL_API_VERSION_FIELD_NUMBER:I = 0xe

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

.field private ccApiVersion_:I

.field private ccGenericServices_:Z

.field private ccProto1TextFormat_:Z

.field private ccProtoArrayCompatible_:Z

.field private ccUtf8Verification_:Z

.field private deprecated_:Z

.field private goPackage_:Ljava/lang/Object;

.field private javaAltApiPackage_:Ljava/lang/Object;

.field private javaApiVersion_:I

.field private javaDualGenerateMutableApi_:Z

.field private javaGenerateEqualsAndHash_:Z

.field private javaGenerateRpcBaseimpl_:Z

.field private javaGenericServices_:Z

.field private javaJava5Enums_:Z

.field private javaMultipleFiles_:Z

.field private javaOuterClassname_:Ljava/lang/Object;

.field private javaPackage_:Ljava/lang/Object;

.field private javaUseJavaproto2_:Z

.field private javaUseJavastrings_:Z

.field private javascriptPackage_:Ljava/lang/Object;

.field private optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

.field private pyApiVersion_:I

.field private pyGenericServices_:Z

.field private szlApiVersion_:I

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
    .line 9806
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 9816
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9817
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->initFields()V

    .line 9818
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->makeImmutable()V

    .line 9819
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 9821
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 7004
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 7293
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    .line 7358
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    .line 7394
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    .line 7487
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    .line 7589
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 7725
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    .line 7778
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    .line 7827
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    .line 7892
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    .line 7991
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8139
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaDualGenerateMutableApi_:Z

    .line 8252
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8524
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 8560
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 8660
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 8766
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    .line 9079
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 7004
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .parameter "noInit"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 7005
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 7293
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    .line 7358
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    .line 7394
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    .line 7487
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    .line 7589
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 7725
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    .line 7778
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    .line 7827
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    .line 7892
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    .line 7991
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8139
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaDualGenerateMutableApi_:Z

    .line 8252
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8524
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 8560
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 8660
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 8766
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    .line 9079
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 7005
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 9081
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9082
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 9084
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7018
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7025
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7013
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    .line 7014
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 7015
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7010
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;"
        }
    .end annotation

    .prologue
    .line 9179
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9180
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ensureUninterpretedOptionInitialized()V

    .line 9181
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9183
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 9162
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9163
    if-nez p1, :cond_0

    .line 9164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9166
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ensureUninterpretedOptionInitialized()V

    .line 9167
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9168
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 9148
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9149
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ensureUninterpretedOptionInitialized()V

    .line 9150
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 9151
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9152
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9750
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9751
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 9752
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    .line 9753
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9754
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    .line 9755
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9756
    iput-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    .line 9757
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9758
    iput-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    .line 9759
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9760
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    .line 9761
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9762
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 9763
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9764
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    .line 9765
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9766
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    .line 9767
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9768
    iput-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    .line 9769
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9770
    iput-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    .line 9771
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9772
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    .line 9773
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9774
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    .line 9775
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9776
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 9777
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9778
    iput-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaDualGenerateMutableApi_:Z

    .line 9779
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9780
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 9781
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9782
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 9783
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9784
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    .line 9785
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9786
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 9787
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9788
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 9789
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9790
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 9791
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9792
    iput v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    .line 9793
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9794
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    .line 9795
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9796
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    .line 9797
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9798
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    .line 9799
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9800
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    .line 9801
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 9803
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearCcApiCompatibility()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7387
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7388
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7389
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    .line 7390
    return-object p0
.end method

.method public clearCcApiVersion()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7351
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7352
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7353
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    .line 7354
    return-object p0
.end method

.method public clearCcGenericServices()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 8945
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8946
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8947
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    .line 8948
    return-object p0
.end method

.method public clearCcProto1TextFormat()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7582
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7583
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    .line 7585
    return-object p0
.end method

.method public clearCcProtoArrayCompatible()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7480
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7481
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    .line 7483
    return-object p0
.end method

.method public clearCcUtf8Verification()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7533
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7534
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    .line 7536
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 9072
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9073
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9074
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    .line 9075
    return-object p0
.end method

.method public clearGoPackage()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 8653
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8654
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8655
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 8656
    return-object p0
.end method

.method public clearJavaAltApiPackage()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8132
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8133
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8134
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8135
    return-object p0
.end method

.method public clearJavaApiVersion()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7820
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7821
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7822
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    .line 7823
    return-object p0
.end method

.method public clearJavaDualGenerateMutableApi()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8245
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8246
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaDualGenerateMutableApi_:Z

    .line 8248
    return-object p0
.end method

.method public clearJavaGenerateEqualsAndHash()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 8517
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8518
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    .line 8520
    return-object p0
.end method

.method public clearJavaGenerateRpcBaseimpl()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7951
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7952
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    .line 7954
    return-object p0
.end method

.method public clearJavaGenericServices()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 8978
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8979
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    .line 8981
    return-object p0
.end method

.method public clearJavaJava5Enums()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7919
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    .line 7921
    return-object p0
.end method

.method public clearJavaMultipleFiles()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 8432
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8433
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 8435
    return-object p0
.end method

.method public clearJavaOuterClassname()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8363
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8364
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8365
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8366
    return-object p0
.end method

.method public clearJavaPackage()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7718
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7719
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7720
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 7721
    return-object p0
.end method

.method public clearJavaUseJavaproto2()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7885
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7886
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    .line 7888
    return-object p0
.end method

.method public clearJavaUseJavastrings()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7984
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7985
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7986
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    .line 7987
    return-object p0
.end method

.method public clearJavascriptPackage()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 8759
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8760
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8761
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 8762
    return-object p0
.end method

.method public clearOptimizeFor()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 8553
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8554
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8555
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 8556
    return-object p0
.end method

.method public clearPyApiVersion()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7771
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7772
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7773
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    .line 7774
    return-object p0
.end method

.method public clearPyGenericServices()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 9011
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9012
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9013
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    .line 9014
    return-object p0
.end method

.method public clearSzlApiVersion()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 8844
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8845
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8846
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    .line 8847
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 9210
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 9212
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 9226
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

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
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCcApiCompatibility()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;
    .locals 1

    .prologue
    .line 7369
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    return-object v0
.end method

.method public getCcApiVersion()I
    .locals 1

    .prologue
    .line 7320
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    return v0
.end method

.method public getCcGenericServices()Z
    .locals 1

    .prologue
    .line 8896
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    return v0
.end method

.method public getCcProto1TextFormat()Z
    .locals 1

    .prologue
    .line 7559
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    return v0
.end method

.method public getCcProtoArrayCompatible()Z
    .locals 1

    .prologue
    .line 7435
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    return v0
.end method

.method public getCcUtf8Verification()Z
    .locals 1

    .prologue
    .line 7508
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7021
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 9043
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    return v0
.end method

.method public getGoPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8581
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 8582
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8583
    check-cast v1, Ljava/lang/String;

    .line 8591
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 8585
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 8586
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 8588
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8589
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8591
    goto :goto_0
.end method

.method public getGoPackageAsBytes()[B
    .locals 4

    .prologue
    .line 8603
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 8604
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 8605
    check-cast v2, Ljava/lang/String;

    .line 8606
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 8607
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 8610
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

.method public getJavaAltApiPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8028
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8029
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8030
    check-cast v1, Ljava/lang/String;

    .line 8038
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 8032
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 8033
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 8035
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8036
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8038
    goto :goto_0
.end method

.method public getJavaAltApiPackageAsBytes()[B
    .locals 4

    .prologue
    .line 8058
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8059
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 8060
    check-cast v2, Ljava/lang/String;

    .line 8061
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 8062
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8065
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

.method public getJavaApiVersion()I
    .locals 1

    .prologue
    .line 7797
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    return v0
.end method

.method public getJavaDualGenerateMutableApi()Z
    .locals 1

    .prologue
    .line 8190
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaDualGenerateMutableApi_:Z

    return v0
.end method

.method public getJavaGenerateEqualsAndHash()Z
    .locals 1

    .prologue
    .line 8476
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    return v0
.end method

.method public getJavaGenerateRpcBaseimpl()Z
    .locals 1

    .prologue
    .line 7936
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    return v0
.end method

.method public getJavaGenericServices()Z
    .locals 1

    .prologue
    .line 8963
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    return v0
.end method

.method public getJavaJava5Enums()Z
    .locals 1

    .prologue
    .line 7903
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    return v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .prologue
    .line 8399
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8279
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8280
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8281
    check-cast v1, Ljava/lang/String;

    .line 8289
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 8283
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 8284
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 8286
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8287
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8289
    goto :goto_0
.end method

.method public getJavaOuterClassnameAsBytes()[B
    .locals 4

    .prologue
    .line 8304
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8305
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 8306
    check-cast v2, Ljava/lang/String;

    .line 8307
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 8308
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8311
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

.method public getJavaPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7622
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 7623
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7624
    check-cast v1, Ljava/lang/String;

    .line 7632
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 7626
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 7627
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 7629
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7630
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7632
    goto :goto_0
.end method

.method public getJavaPackageAsBytes()[B
    .locals 4

    .prologue
    .line 7650
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 7651
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 7652
    check-cast v2, Ljava/lang/String;

    .line 7653
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 7654
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 7657
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

.method public getJavaUseJavaproto2()Z
    .locals 1

    .prologue
    .line 7854
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    return v0
.end method

.method public getJavaUseJavastrings()Z
    .locals 1

    .prologue
    .line 7969
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    return v0
.end method

.method public getJavascriptPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8683
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 8684
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8685
    check-cast v1, Ljava/lang/String;

    .line 8693
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 8687
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 8688
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 8690
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8691
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8693
    goto :goto_0
.end method

.method public getJavascriptPackageAsBytes()[B
    .locals 4

    .prologue
    .line 8706
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 8707
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 8708
    check-cast v2, Ljava/lang/String;

    .line 8709
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 8710
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 8713
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

.method public getMutableUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 9138
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 9116
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9117
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ensureUninterpretedOptionInitialized()V

    .line 9118
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getOptimizeFor()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .prologue
    .line 8535
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7036
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPyApiVersion()I
    .locals 1

    .prologue
    .line 7746
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    return v0
.end method

.method public getPyGenericServices()Z
    .locals 1

    .prologue
    .line 8996
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 9629
    const/4 v1, 0x0

    .line 9630
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_0

    .line 9631
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 9634
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v3, :cond_1

    .line 9635
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 9638
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    .line 9639
    const/16 v2, 0x16

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9642
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_3

    .line 9643
    const/16 v2, 0x18

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9646
    :cond_3
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_4

    .line 9647
    const/16 v2, 0x19

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9650
    :cond_4
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 9651
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaPackageAsBytes()[B

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 9654
    :cond_5
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 9655
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 9658
    :cond_6
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 9659
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 9662
    :cond_7
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 9663
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9666
    :cond_8
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 9667
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9670
    :cond_9
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 9671
    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9674
    :cond_a
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 9675
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9678
    :cond_b
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    .line 9679
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaAltApiPackageAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 9682
    :cond_c
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_d

    .line 9683
    const/16 v2, 0x1a

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaDualGenerateMutableApi_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9686
    :cond_d
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_e

    .line 9687
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaOuterClassnameAsBytes()[B

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 9690
    :cond_e
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_f

    .line 9691
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9694
    :cond_f
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 9695
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9698
    :cond_10
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 9699
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 9702
    :cond_11
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    const/high16 v3, 0x4

    if-ne v2, v3, :cond_12

    .line 9703
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getGoPackageAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 9706
    :cond_12
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    const/high16 v3, 0x8

    if-ne v2, v3, :cond_13

    .line 9707
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavascriptPackageAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 9710
    :cond_13
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    const/high16 v3, 0x10

    if-ne v2, v3, :cond_14

    .line 9711
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 9714
    :cond_14
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_15

    .line 9715
    iget-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9718
    :cond_15
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x40

    and-int/2addr v2, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_16

    .line 9719
    const/16 v2, 0x11

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9722
    :cond_16
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    const/high16 v3, 0x80

    if-ne v2, v3, :cond_17

    .line 9723
    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9726
    :cond_17
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x100

    and-int/2addr v2, v3

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_18

    .line 9727
    const/16 v2, 0x17

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 9730
    :cond_18
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_19

    .line 9731
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 9732
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 9731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9736
    .end local v0           #i:I
    :cond_19
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 9737
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 9738
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->cachedSize:I

    .line 9739
    return v1
.end method

.method public getSzlApiVersion()I
    .locals 1

    .prologue
    .line 8803
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    return v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 9128
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 9093
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 9103
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 9106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCcApiCompatibility()Z
    .locals 2

    .prologue
    .line 7363
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

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

.method public hasCcApiVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7306
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCcGenericServices()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 8873
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCcProto1TextFormat()Z
    .locals 2

    .prologue
    .line 7549
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

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

.method public hasCcProtoArrayCompatible()Z
    .locals 2

    .prologue
    .line 7414
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

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

.method public hasCcUtf8Verification()Z
    .locals 2

    .prologue
    .line 7497
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

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

.method public hasDeprecated()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 9030
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGoPackage()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 8570
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaAltApiPackage()Z
    .locals 2

    .prologue
    .line 8009
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaApiVersion()Z
    .locals 2

    .prologue
    .line 7787
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

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

.method public hasJavaDualGenerateMutableApi()Z
    .locals 2

    .prologue
    .line 8164
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaGenerateEqualsAndHash()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 8457
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaGenerateRpcBaseimpl()Z
    .locals 2

    .prologue
    .line 7930
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaGenericServices()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 8957
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaJava5Enums()Z
    .locals 2

    .prologue
    .line 7897
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaMultipleFiles()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 8384
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaOuterClassname()Z
    .locals 2

    .prologue
    .line 8265
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaPackage()Z
    .locals 2

    .prologue
    .line 7605
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

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

.method public hasJavaUseJavaproto2()Z
    .locals 2

    .prologue
    .line 7840
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaUseJavastrings()Z
    .locals 2

    .prologue
    .line 7963
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavascriptPackage()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8

    .line 8671
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOptimizeFor()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 8529
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPyApiVersion()Z
    .locals 2

    .prologue
    .line 7735
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

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

.method public hasPyGenericServices()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80

    .line 8990
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSzlApiVersion()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10

    .line 8784
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 7029
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2100()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9809
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 9810
    const-string v0, "com.google.protobuf.DescriptorProtos$FileOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 9812
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 9216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 9217
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9222
    :cond_0
    :goto_1
    return v1

    .line 9216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9221
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9222
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6999
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 3
    .parameter "other"

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9241
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 9354
    :goto_0
    return-object p0

    .line 9242
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9243
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9244
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 9245
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 9251
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasCcApiVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9252
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCcApiVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setCcApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9254
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasPyApiVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9255
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getPyApiVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setPyApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9257
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaApiVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9258
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaApiVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9260
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaUseJavaproto2()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9261
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaUseJavaproto2()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaUseJavaproto2(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9263
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaJava5Enums()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9264
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaJava5Enums()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaJava5Enums(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9266
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9267
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9268
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 9269
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 9275
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9276
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getOptimizeFor()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setOptimizeFor(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9278
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 9279
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaMultipleFiles(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9281
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 9282
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v2, 0x4

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9283
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 9284
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 9290
    :cond_a
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavascriptPackage()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 9291
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v2, 0x8

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9292
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 9293
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 9299
    :cond_b
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaGenerateRpcBaseimpl()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 9300
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaGenerateRpcBaseimpl()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaGenerateRpcBaseimpl(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9302
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasSzlApiVersion()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 9303
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getSzlApiVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setSzlApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9305
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasCcApiCompatibility()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 9306
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCcApiCompatibility()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setCcApiCompatibility(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9308
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 9309
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setCcGenericServices(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9311
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 9312
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaGenericServices(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9314
    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 9315
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setPyGenericServices(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9317
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaAltApiPackage()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 9318
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9319
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 9320
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 9326
    :cond_12
    :goto_5
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 9327
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaGenerateEqualsAndHash(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9329
    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaUseJavastrings()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 9330
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaUseJavastrings()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaUseJavastrings(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9332
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasCcProtoArrayCompatible()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 9333
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCcProtoArrayCompatible()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setCcProtoArrayCompatible(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9335
    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 9336
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9338
    :cond_16
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasCcUtf8Verification()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 9339
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCcUtf8Verification()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setCcUtf8Verification(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9341
    :cond_17
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasCcProto1TextFormat()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 9342
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCcProto1TextFormat()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setCcProto1TextFormat(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9344
    :cond_18
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaDualGenerateMutableApi()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 9345
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaDualGenerateMutableApi()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaDualGenerateMutableApi(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9347
    :cond_19
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v1, :cond_1a

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 9348
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ensureUninterpretedOptionInitialized()V

    .line 9349
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9352
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 9353
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto/16 :goto_0

    .line 9247
    :cond_1b
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 9248
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    goto/16 :goto_1

    .line 9271
    .end local v0           #ba:[B
    :cond_1c
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 9272
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    goto/16 :goto_2

    .line 9286
    .end local v0           #ba:[B
    :cond_1d
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 9287
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    goto/16 :goto_3

    .line 9295
    .end local v0           #ba:[B
    :cond_1e
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 9296
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    goto/16 :goto_4

    .line 9322
    .end local v0           #ba:[B
    :cond_1f
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 9323
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    goto/16 :goto_5
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "other"

    .prologue
    .line 9231
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9232
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    .line 9233
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    .line 9235
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6999
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 9360
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9362
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 9365
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 9366
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 9367
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 9368
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 9373
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 9375
    const/4 v0, 0x1

    goto :goto_0

    .line 9370
    :sswitch_0
    const/4 v0, 0x1

    .line 9371
    goto :goto_0

    .line 9380
    :sswitch_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9381
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    goto :goto_0

    .line 9524
    .end local v0           #done:Z
    .end local v3           #tag:I
    .end local v4           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 9525
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 9385
    .restart local v0       #done:Z
    .restart local v3       #tag:I
    .restart local v4       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9386
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    goto :goto_0

    .line 9390
    :sswitch_3
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9391
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    goto :goto_0

    .line 9395
    :sswitch_4
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9396
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    goto :goto_0

    .line 9400
    :sswitch_5
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9401
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    goto :goto_0

    .line 9405
    :sswitch_6
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9406
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    goto :goto_0

    .line 9410
    :sswitch_7
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9411
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    goto :goto_0

    .line 9415
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 9416
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v5

    .line 9417
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;
    if-nez v5, :cond_1

    .line 9418
    const/16 v6, 0x9

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 9420
    :cond_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x2

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9421
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    goto/16 :goto_0

    .line 9426
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;
    :sswitch_9
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9427
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    goto/16 :goto_0

    .line 9431
    :sswitch_a
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9432
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 9436
    :sswitch_b
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9437
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 9441
    :sswitch_c
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9442
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    goto/16 :goto_0

    .line 9446
    :sswitch_d
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x10

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9447
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    goto/16 :goto_0

    .line 9451
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 9452
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    move-result-object v5

    .line 9453
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;
    if-nez v5, :cond_2

    .line 9454
    const/16 v6, 0xf

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 9456
    :cond_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9457
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    goto/16 :goto_0

    .line 9462
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;
    :sswitch_f
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x20

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9463
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    goto/16 :goto_0

    .line 9467
    :sswitch_10
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x40

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9468
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    goto/16 :goto_0

    .line 9472
    :sswitch_11
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9473
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    goto/16 :goto_0

    .line 9477
    :sswitch_12
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9478
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 9482
    :sswitch_13
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x1

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9483
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    goto/16 :goto_0

    .line 9487
    :sswitch_14
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9488
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    goto/16 :goto_0

    .line 9492
    :sswitch_15
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9493
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    goto/16 :goto_0

    .line 9497
    :sswitch_16
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x100

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9498
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 9502
    :sswitch_17
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9503
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    goto/16 :goto_0

    .line 9507
    :sswitch_18
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9508
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    goto/16 :goto_0

    .line 9512
    :sswitch_19
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9513
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaDualGenerateMutableApi_:Z

    goto/16 :goto_0

    .line 9517
    :sswitch_1a
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 9522
    .end local v3           #tag:I
    :cond_3
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9523
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 9368
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x42 -> :sswitch_7
        0x48 -> :sswitch_8
        0x50 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x68 -> :sswitch_c
        0x70 -> :sswitch_d
        0x78 -> :sswitch_e
        0x80 -> :sswitch_f
        0x88 -> :sswitch_10
        0x90 -> :sswitch_11
        0x9a -> :sswitch_12
        0xa0 -> :sswitch_13
        0xa8 -> :sswitch_14
        0xb0 -> :sswitch_15
        0xb8 -> :sswitch_16
        0xc0 -> :sswitch_17
        0xc8 -> :sswitch_18
        0xd0 -> :sswitch_19
        0x1f3a -> :sswitch_1a
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7007
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 6999
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public setCcApiCompatibility(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7375
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7376
    if-nez p1, :cond_0

    .line 7377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7379
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7380
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    .line 7381
    return-object p0
.end method

.method public setCcApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7334
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7335
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7336
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    .line 7337
    return-object p0
.end method

.method public setCcGenericServices(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 8919
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8920
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8921
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    .line 8922
    return-object p0
.end method

.method public setCcProto1TextFormat(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7569
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7570
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7571
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    .line 7572
    return-object p0
.end method

.method public setCcProtoArrayCompatible(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7456
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7457
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7458
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    .line 7459
    return-object p0
.end method

.method public setCcUtf8Verification(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7519
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7520
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7521
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    .line 7522
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9056
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9057
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9058
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    .line 9059
    return-object p0
.end method

.method public setGoPackage(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 8622
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8623
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8624
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8625
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 8626
    return-object p0
.end method

.method public setGoPackageAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 8638
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8639
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8640
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8641
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 8642
    return-object p0
.end method

.method public setJavaAltApiPackage(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8085
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8086
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8087
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8088
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8089
    return-object p0
.end method

.method public setJavaAltApiPackageAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8109
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8110
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8111
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8112
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8113
    return-object p0
.end method

.method public setJavaApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7807
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7808
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7809
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    .line 7810
    return-object p0
.end method

.method public setJavaDualGenerateMutableApi(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8216
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8217
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8218
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaDualGenerateMutableApi_:Z

    .line 8219
    return-object p0
.end method

.method public setJavaGenerateEqualsAndHash(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 8495
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8496
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8497
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    .line 8498
    return-object p0
.end method

.method public setJavaGenerateRpcBaseimpl(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7942
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7943
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7944
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    .line 7945
    return-object p0
.end method

.method public setJavaGenericServices(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 8969
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8970
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8971
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    .line 8972
    return-object p0
.end method

.method public setJavaJava5Enums(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7909
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7910
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7911
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    .line 7912
    return-object p0
.end method

.method public setJavaMultipleFiles(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 8414
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8415
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8416
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 8417
    return-object p0
.end method

.method public setJavaOuterClassname(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8326
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8327
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8328
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8329
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8330
    return-object p0
.end method

.method public setJavaOuterClassnameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8345
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8346
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8347
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8348
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8349
    return-object p0
.end method

.method public setJavaPackage(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7675
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7676
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7677
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7678
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 7679
    return-object p0
.end method

.method public setJavaPackageAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7697
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7698
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7699
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7700
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 7701
    return-object p0
.end method

.method public setJavaUseJavaproto2(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7868
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7869
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7870
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    .line 7871
    return-object p0
.end method

.method public setJavaUseJavastrings(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7975
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7976
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7977
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    .line 7978
    return-object p0
.end method

.method public setJavascriptPackage(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 8726
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8727
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8728
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8729
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 8730
    return-object p0
.end method

.method public setJavascriptPackageAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 8743
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8744
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8745
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8746
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 8747
    return-object p0
.end method

.method public setOptimizeFor(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 8541
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8542
    if-nez p1, :cond_0

    .line 8543
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8545
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8546
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 8547
    return-object p0
.end method

.method public setPyApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7757
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7758
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7759
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    .line 7760
    return-object p0
.end method

.method public setPyGenericServices(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9002
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9003
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9004
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    .line 9005
    return-object p0
.end method

.method public setSzlApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 8822
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8823
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8824
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    .line 8825
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9194
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9195
    if-nez p2, :cond_0

    .line 9196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9198
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ensureUninterpretedOptionInitialized()V

    .line 9199
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9200
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
    .line 9746
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 11
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 9532
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 9535
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 9536
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 9537
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaPackageAsBytes()[B

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 9539
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_1

    .line 9540
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    invoke-virtual {p1, v7, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9542
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2

    .line 9543
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    invoke-virtual {p1, v8, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9545
    :cond_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_3

    .line 9546
    const/4 v4, 0x5

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9548
    :cond_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_4

    .line 9549
    const/4 v4, 0x6

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9551
    :cond_4
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_5

    .line 9552
    const/4 v4, 0x7

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9554
    :cond_5
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_6

    .line 9555
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaOuterClassnameAsBytes()[B

    move-result-object v4

    invoke-virtual {p1, v9, v4}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 9557
    :cond_6
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    const/high16 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 9558
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9560
    :cond_7
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const v5, 0x8000

    if-ne v4, v5, :cond_8

    .line 9561
    const/16 v4, 0xa

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9563
    :cond_8
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    const/high16 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 9564
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getGoPackageAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 9566
    :cond_9
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    const/high16 v5, 0x8

    if-ne v4, v5, :cond_a

    .line 9567
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavascriptPackageAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 9569
    :cond_a
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_b

    .line 9570
    const/16 v4, 0xd

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9572
    :cond_b
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    const/high16 v5, 0x10

    if-ne v4, v5, :cond_c

    .line 9573
    const/16 v4, 0xe

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9575
    :cond_c
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_d

    .line 9576
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9578
    :cond_d
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x20

    and-int/2addr v4, v5

    const/high16 v5, 0x20

    if-ne v4, v5, :cond_e

    .line 9579
    iget-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    invoke-virtual {p1, v10, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9581
    :cond_e
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    const/high16 v5, 0x40

    if-ne v4, v5, :cond_f

    .line 9582
    const/16 v4, 0x11

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9584
    :cond_f
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x80

    and-int/2addr v4, v5

    const/high16 v5, 0x80

    if-ne v4, v5, :cond_10

    .line 9585
    const/16 v4, 0x12

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9587
    :cond_10
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_11

    .line 9588
    const/16 v4, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaAltApiPackageAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 9590
    :cond_11
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    const/high16 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 9591
    const/16 v4, 0x14

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9593
    :cond_12
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_13

    .line 9594
    const/16 v4, 0x15

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9596
    :cond_13
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_14

    .line 9597
    const/16 v4, 0x16

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9599
    :cond_14
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    const/high16 v5, 0x100

    if-ne v4, v5, :cond_15

    .line 9600
    const/16 v4, 0x17

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9602
    :cond_15
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v9, :cond_16

    .line 9603
    const/16 v4, 0x18

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9605
    :cond_16
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v10, :cond_17

    .line 9606
    const/16 v4, 0x19

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9608
    :cond_17
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_18

    .line 9609
    const/16 v4, 0x1a

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaDualGenerateMutableApi_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9611
    :cond_18
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_19

    .line 9612
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_19

    .line 9613
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 9612
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9617
    .end local v3           #i:I
    :cond_19
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 9618
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 9619
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 9620
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_1a

    .line 9621
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9626
    :cond_1a
    return-void
.end method
