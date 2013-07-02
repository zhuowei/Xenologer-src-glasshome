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

.field public static final JAVA_ENABLE_DUAL_GENERATE_MUTABLE_API_FIELD_NUMBER:I = 0x1a

.field public static final JAVA_GENERATE_EQUALS_AND_HASH_FIELD_NUMBER:I = 0x14

.field public static final JAVA_GENERATE_RPC_BASEIMPL_FIELD_NUMBER:I = 0xd

.field public static final JAVA_GENERIC_SERVICES_FIELD_NUMBER:I = 0x11

.field public static final JAVA_JAVA5_ENUMS_FIELD_NUMBER:I = 0x7

.field public static final JAVA_MULTIPLE_FILES_FIELD_NUMBER:I = 0xa

.field public static final JAVA_OUTER_CLASSNAME_FIELD_NUMBER:I = 0x8

.field public static final JAVA_PACKAGE_FIELD_NUMBER:I = 0x1

.field public static final JAVA_STRING_CHECK_UTF8_FIELD_NUMBER:I = 0x1b

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

.field private javaEnableDualGenerateMutableApi_:Z

.field private javaGenerateEqualsAndHash_:Z

.field private javaGenerateRpcBaseimpl_:Z

.field private javaGenericServices_:Z

.field private javaJava5Enums_:Z

.field private javaMultipleFiles_:Z

.field private javaOuterClassname_:Ljava/lang/Object;

.field private javaPackage_:Ljava/lang/Object;

.field private javaStringCheckUtf8_:Z

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
    .line 10338
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 10348
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 10349
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->initFields()V

    .line 10350
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->makeImmutable()V

    .line 10351
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 10353
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 7450
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 7739
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    .line 7804
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    .line 7840
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    .line 7933
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    .line 8035
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 8171
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    .line 8224
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    .line 8273
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    .line 8338
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    .line 8437
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8585
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    .line 8698
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 9039
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 9075
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 9175
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 9281
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    .line 9594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 7450
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .parameter "noInit"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 7451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;-><init>()V

    .line 7739
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    .line 7804
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    .line 7840
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    .line 7933
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    .line 8035
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 8171
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    .line 8224
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    .line 8273
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    .line 8338
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    .line 8437
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8585
    iput-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    .line 8698
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 9039
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 9075
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 9175
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 9281
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    .line 9594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 7451
    return-void
.end method

.method private ensureUninterpretedOptionInitialized()V
    .locals 1

    .prologue
    .line 9596
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 9599
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7464
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7471
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7459
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    .line 7460
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 7461
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7456
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
    .line 9694
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9695
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ensureUninterpretedOptionInitialized()V

    .line 9696
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9698
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 9677
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9678
    if-nez p1, :cond_0

    .line 9679
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9681
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ensureUninterpretedOptionInitialized()V

    .line 9682
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9683
    return-object p0
.end method

.method public addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 2

    .prologue
    .line 9663
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9664
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ensureUninterpretedOptionInitialized()V

    .line 9665
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 9666
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9667
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1

    .prologue
    .line 7445
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 7445
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

    .line 10280
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 10281
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    .line 10282
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    .line 10283
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10284
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    .line 10285
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10286
    iput-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    .line 10287
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10288
    iput-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    .line 10289
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10290
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    .line 10291
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10292
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 10293
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10294
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    .line 10295
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10296
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    .line 10297
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10298
    iput-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    .line 10299
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10300
    iput-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    .line 10301
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10302
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    .line 10303
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10304
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    .line 10305
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10306
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 10307
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10308
    iput-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    .line 10309
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10310
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 10311
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10312
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 10313
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10314
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    .line 10315
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10316
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    .line 10317
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10318
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 10319
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10320
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 10321
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10322
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 10323
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10324
    iput v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    .line 10325
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10326
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    .line 10327
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10328
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    .line 10329
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10330
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    .line 10331
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10332
    iput-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    .line 10333
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 10335
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 7445
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 7445
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public clearCcApiCompatibility()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7834
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7835
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    .line 7836
    return-object p0
.end method

.method public clearCcApiVersion()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7797
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7798
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7799
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    .line 7800
    return-object p0
.end method

.method public clearCcGenericServices()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 9460
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9461
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    .line 9463
    return-object p0
.end method

.method public clearCcProto1TextFormat()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8028
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8029
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    .line 8031
    return-object p0
.end method

.method public clearCcProtoArrayCompatible()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7926
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7927
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    .line 7929
    return-object p0
.end method

.method public clearCcUtf8Verification()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7979
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7980
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    .line 7982
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 9587
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9588
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    .line 9590
    return-object p0
.end method

.method public clearGoPackage()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 9168
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9169
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9170
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 9171
    return-object p0
.end method

.method public clearJavaAltApiPackage()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8578
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8579
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8580
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8581
    return-object p0
.end method

.method public clearJavaApiVersion()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8266
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8267
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8268
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    .line 8269
    return-object p0
.end method

.method public clearJavaEnableDualGenerateMutableApi()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8691
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8692
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    .line 8694
    return-object p0
.end method

.method public clearJavaGenerateEqualsAndHash()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 8963
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8964
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    .line 8966
    return-object p0
.end method

.method public clearJavaGenerateRpcBaseimpl()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8397
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8398
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    .line 8400
    return-object p0
.end method

.method public clearJavaGenericServices()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 9493
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9494
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    .line 9496
    return-object p0
.end method

.method public clearJavaJava5Enums()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8364
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8365
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    .line 8367
    return-object p0
.end method

.method public clearJavaMultipleFiles()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 8878
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8879
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 8881
    return-object p0
.end method

.method public clearJavaOuterClassname()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8809
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8810
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8811
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8812
    return-object p0
.end method

.method public clearJavaPackage()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8164
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8165
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8166
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 8167
    return-object p0
.end method

.method public clearJavaStringCheckUtf8()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 9032
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9033
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    .line 9035
    return-object p0
.end method

.method public clearJavaUseJavaproto2()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8332
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    .line 8334
    return-object p0
.end method

.method public clearJavaUseJavastrings()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8430
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8431
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    .line 8433
    return-object p0
.end method

.method public clearJavascriptPackage()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 9274
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9275
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9276
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 9277
    return-object p0
.end method

.method public clearOptimizeFor()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 9068
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9069
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9070
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 9071
    return-object p0
.end method

.method public clearPyApiVersion()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 8217
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8218
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8219
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    .line 8220
    return-object p0
.end method

.method public clearPyGenericServices()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 9526
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9527
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    .line 9529
    return-object p0
.end method

.method public clearSzlApiVersion()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 9359
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9360
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9361
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    .line 9362
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 9725
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 9727
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 7445
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 9741
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 7445
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 7445
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
    .line 7445
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCcApiCompatibility()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;
    .locals 1

    .prologue
    .line 7815
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    return-object v0
.end method

.method public getCcApiVersion()I
    .locals 1

    .prologue
    .line 7766
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    return v0
.end method

.method public getCcGenericServices()Z
    .locals 1

    .prologue
    .line 9411
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    return v0
.end method

.method public getCcProto1TextFormat()Z
    .locals 1

    .prologue
    .line 8005
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    return v0
.end method

.method public getCcProtoArrayCompatible()Z
    .locals 1

    .prologue
    .line 7881
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    return v0
.end method

.method public getCcUtf8Verification()Z
    .locals 1

    .prologue
    .line 7954
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7445
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7445
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7467
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 7445
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 9558
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    return v0
.end method

.method public getGoPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9096
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 9097
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 9098
    check-cast v1, Ljava/lang/String;

    .line 9106
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 9100
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 9101
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 9103
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9104
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9106
    goto :goto_0
.end method

.method public getGoPackageAsBytes()[B
    .locals 4

    .prologue
    .line 9118
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 9119
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 9120
    check-cast v2, Ljava/lang/String;

    .line 9121
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 9122
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 9125
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
    .line 8474
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8475
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8476
    check-cast v1, Ljava/lang/String;

    .line 8484
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 8478
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 8479
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 8481
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8482
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8484
    goto :goto_0
.end method

.method public getJavaAltApiPackageAsBytes()[B
    .locals 4

    .prologue
    .line 8504
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8505
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 8506
    check-cast v2, Ljava/lang/String;

    .line 8507
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 8508
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8511
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
    .line 8243
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    return v0
.end method

.method public getJavaEnableDualGenerateMutableApi()Z
    .locals 1

    .prologue
    .line 8636
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    return v0
.end method

.method public getJavaGenerateEqualsAndHash()Z
    .locals 1

    .prologue
    .line 8922
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    return v0
.end method

.method public getJavaGenerateRpcBaseimpl()Z
    .locals 1

    .prologue
    .line 8382
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    return v0
.end method

.method public getJavaGenericServices()Z
    .locals 1

    .prologue
    .line 9478
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    return v0
.end method

.method public getJavaJava5Enums()Z
    .locals 1

    .prologue
    .line 8349
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    return v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .prologue
    .line 8845
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8725
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8726
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8727
    check-cast v1, Ljava/lang/String;

    .line 8735
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 8729
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 8730
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 8732
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8733
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8735
    goto :goto_0
.end method

.method public getJavaOuterClassnameAsBytes()[B
    .locals 4

    .prologue
    .line 8750
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8751
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 8752
    check-cast v2, Ljava/lang/String;

    .line 8753
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 8754
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8757
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
    .line 8068
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 8069
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8070
    check-cast v1, Ljava/lang/String;

    .line 8078
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 8072
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 8073
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 8075
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8076
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8078
    goto :goto_0
.end method

.method public getJavaPackageAsBytes()[B
    .locals 4

    .prologue
    .line 8096
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 8097
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 8098
    check-cast v2, Ljava/lang/String;

    .line 8099
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 8100
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 8103
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

.method public getJavaStringCheckUtf8()Z
    .locals 1

    .prologue
    .line 8999
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    return v0
.end method

.method public getJavaUseJavaproto2()Z
    .locals 1

    .prologue
    .line 8300
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    return v0
.end method

.method public getJavaUseJavastrings()Z
    .locals 1

    .prologue
    .line 8415
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    return v0
.end method

.method public getJavascriptPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9198
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 9199
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 9200
    check-cast v1, Ljava/lang/String;

    .line 9208
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 9202
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 9203
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 9205
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9206
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9208
    goto :goto_0
.end method

.method public getJavascriptPackageAsBytes()[B
    .locals 4

    .prologue
    .line 9221
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 9222
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 9223
    check-cast v2, Ljava/lang/String;

    .line 9224
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 9225
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 9228
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
    .line 9653
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
    .line 9631
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9632
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ensureUninterpretedOptionInitialized()V

    .line 9633
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getOptimizeFor()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .prologue
    .line 9050
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
    .line 7482
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPyApiVersion()I
    .locals 1

    .prologue
    .line 8192
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    return v0
.end method

.method public getPyGenericServices()Z
    .locals 1

    .prologue
    .line 9511
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

    .line 10155
    const/4 v1, 0x0

    .line 10156
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_0

    .line 10157
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 10160
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v3, :cond_1

    .line 10161
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 10164
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    .line 10165
    const/16 v2, 0x16

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10168
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_3

    .line 10169
    const/16 v2, 0x18

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10172
    :cond_3
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_4

    .line 10173
    const/16 v2, 0x19

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10176
    :cond_4
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 10177
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaPackageAsBytes()[B

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 10180
    :cond_5
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 10181
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 10184
    :cond_6
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 10185
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 10188
    :cond_7
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 10189
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10192
    :cond_8
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 10193
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10196
    :cond_9
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 10197
    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10200
    :cond_a
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 10201
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10204
    :cond_b
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    .line 10205
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaAltApiPackageAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 10208
    :cond_c
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_d

    .line 10209
    const/16 v2, 0x1a

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10212
    :cond_d
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_e

    .line 10213
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaOuterClassnameAsBytes()[B

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 10216
    :cond_e
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_f

    .line 10217
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10220
    :cond_f
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 10221
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10224
    :cond_10
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 10225
    const/16 v2, 0x1b

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10228
    :cond_11
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    const/high16 v3, 0x4

    if-ne v2, v3, :cond_12

    .line 10229
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 10232
    :cond_12
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    const/high16 v3, 0x8

    if-ne v2, v3, :cond_13

    .line 10233
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getGoPackageAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 10236
    :cond_13
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    const/high16 v3, 0x10

    if-ne v2, v3, :cond_14

    .line 10237
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavascriptPackageAsBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 10240
    :cond_14
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_15

    .line 10241
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 10244
    :cond_15
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x40

    and-int/2addr v2, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_16

    .line 10245
    iget-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10248
    :cond_16
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    const/high16 v3, 0x80

    if-ne v2, v3, :cond_17

    .line 10249
    const/16 v2, 0x11

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10252
    :cond_17
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x100

    and-int/2addr v2, v3

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_18

    .line 10253
    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10256
    :cond_18
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x200

    and-int/2addr v2, v3

    const/high16 v3, 0x200

    if-ne v2, v3, :cond_19

    .line 10257
    const/16 v2, 0x17

    iget-boolean v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 10260
    :cond_19
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v2, :cond_1a

    .line 10261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 10262
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 10261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10266
    .end local v0           #i:I
    :cond_1a
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 10267
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 10268
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->cachedSize:I

    .line 10269
    return v1
.end method

.method public getSzlApiVersion()I
    .locals 1

    .prologue
    .line 9318
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    return v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 9643
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 9608
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
    .line 9618
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9619
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 9621
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
    .line 7809
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

    .line 7752
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
    const/high16 v1, 0x40

    .line 9388
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
    .line 7995
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
    .line 7860
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
    .line 7943
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
    const/high16 v1, 0x200

    .line 9545
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
    const/high16 v1, 0x8

    .line 9085
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
    .line 8455
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
    .line 8233
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

.method public hasJavaEnableDualGenerateMutableApi()Z
    .locals 2

    .prologue
    .line 8610
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

    .line 8903
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
    .line 8376
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
    const/high16 v1, 0x80

    .line 9472
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
    .line 8343
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

    .line 8830
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
    .line 8711
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
    .line 8051
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

.method public hasJavaStringCheckUtf8()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 8984
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

.method public hasJavaUseJavaproto2()Z
    .locals 2

    .prologue
    .line 8286
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
    .line 8409
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
    const/high16 v1, 0x10

    .line 9186
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
    const/high16 v1, 0x4

    .line 9044
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
    .line 8181
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
    const/high16 v1, 0x100

    .line 9505
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
    const/high16 v1, 0x20

    .line 9299
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
    .line 7475
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$2300()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10341
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 10342
    const-string v0, "com.google.protobuf.DescriptorProtos$FileOptions"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->immutableDefault:Lcom/google/protobuf/Message;

    .line 10344
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 9731
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 9732
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getUninterpretedOption(I)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9737
    :cond_0
    :goto_1
    return v1

    .line 9731
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9736
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9737
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7445
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 3
    .parameter "other"

    .prologue
    .line 9755
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9756
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 9872
    :goto_0
    return-object p0

    .line 9757
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9758
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9759
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 9760
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 9766
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasCcApiVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9767
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCcApiVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setCcApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9769
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasPyApiVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9770
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getPyApiVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setPyApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9772
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaApiVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9773
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaApiVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9775
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaUseJavaproto2()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9776
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaUseJavaproto2()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaUseJavaproto2(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9778
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaJava5Enums()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9779
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaJava5Enums()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaJava5Enums(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9781
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9782
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9783
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 9784
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 9790
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9791
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getOptimizeFor()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setOptimizeFor(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9793
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 9794
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaMultipleFiles(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9796
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 9797
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v2, 0x8

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9798
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 9799
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 9805
    :cond_a
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavascriptPackage()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 9806
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v2, 0x10

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9807
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 9808
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 9814
    :cond_b
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaGenerateRpcBaseimpl()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 9815
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaGenerateRpcBaseimpl()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaGenerateRpcBaseimpl(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9817
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasSzlApiVersion()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 9818
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getSzlApiVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setSzlApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9820
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasCcApiCompatibility()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 9821
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCcApiCompatibility()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setCcApiCompatibility(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9823
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 9824
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setCcGenericServices(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9826
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 9827
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaGenericServices(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9829
    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 9830
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setPyGenericServices(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9832
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaAltApiPackage()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 9833
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9834
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 9835
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 9841
    :cond_12
    :goto_5
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 9842
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaGenerateEqualsAndHash(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9844
    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaUseJavastrings()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 9845
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaUseJavastrings()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaUseJavastrings(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9847
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasCcProtoArrayCompatible()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 9848
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCcProtoArrayCompatible()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setCcProtoArrayCompatible(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9850
    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 9851
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9853
    :cond_16
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasCcUtf8Verification()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 9854
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCcUtf8Verification()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setCcUtf8Verification(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9856
    :cond_17
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasCcProto1TextFormat()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 9857
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCcProto1TextFormat()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setCcProto1TextFormat(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9859
    :cond_18
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaEnableDualGenerateMutableApi()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 9860
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaEnableDualGenerateMutableApi()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaEnableDualGenerateMutableApi(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9862
    :cond_19
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 9863
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setJavaStringCheckUtf8(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 9865
    :cond_1a
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v1, :cond_1b

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 9866
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ensureUninterpretedOptionInitialized()V

    .line 9867
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9870
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V

    .line 9871
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto/16 :goto_0

    .line 9762
    :cond_1c
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 9763
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    goto/16 :goto_1

    .line 9786
    .end local v0           #ba:[B
    :cond_1d
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 9787
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    goto/16 :goto_2

    .line 9801
    .end local v0           #ba:[B
    :cond_1e
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 9802
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    goto/16 :goto_3

    .line 9810
    .end local v0           #ba:[B
    :cond_1f
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 9811
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    goto/16 :goto_4

    .line 9837
    .end local v0           #ba:[B
    :cond_20
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 9838
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
    .line 9746
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9747
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    .line 9748
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    .line 9750
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7445
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 9878
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9880
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 9883
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 9884
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 9885
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 9886
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 9891
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 9893
    const/4 v0, 0x1

    goto :goto_0

    .line 9888
    :sswitch_0
    const/4 v0, 0x1

    .line 9889
    goto :goto_0

    .line 9898
    :sswitch_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9899
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    goto :goto_0

    .line 10047
    .end local v0           #done:Z
    .end local v3           #tag:I
    .end local v4           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 10048
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 9903
    .restart local v0       #done:Z
    .restart local v3       #tag:I
    .restart local v4       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9904
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    goto :goto_0

    .line 9908
    :sswitch_3
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9909
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    goto :goto_0

    .line 9913
    :sswitch_4
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9914
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    goto :goto_0

    .line 9918
    :sswitch_5
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9919
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    goto :goto_0

    .line 9923
    :sswitch_6
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9924
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    goto :goto_0

    .line 9928
    :sswitch_7
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9929
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    goto :goto_0

    .line 9933
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 9934
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v5

    .line 9935
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;
    if-nez v5, :cond_1

    .line 9936
    const/16 v6, 0x9

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 9938
    :cond_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9939
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    goto/16 :goto_0

    .line 9944
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;
    :sswitch_9
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9945
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    goto/16 :goto_0

    .line 9949
    :sswitch_a
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9950
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 9954
    :sswitch_b
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x10

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9955
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 9959
    :sswitch_c
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9960
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    goto/16 :goto_0

    .line 9964
    :sswitch_d
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x20

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9965
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    goto/16 :goto_0

    .line 9969
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 9970
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    move-result-object v5

    .line 9971
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;
    if-nez v5, :cond_2

    .line 9972
    const/16 v6, 0xf

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 9974
    :cond_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9975
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    goto/16 :goto_0

    .line 9980
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;
    :sswitch_f
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x40

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9981
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    goto/16 :goto_0

    .line 9985
    :sswitch_10
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9986
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    goto/16 :goto_0

    .line 9990
    :sswitch_11
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x100

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9991
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    goto/16 :goto_0

    .line 9995
    :sswitch_12
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9996
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 10000
    :sswitch_13
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x1

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10001
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    goto/16 :goto_0

    .line 10005
    :sswitch_14
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10006
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    goto/16 :goto_0

    .line 10010
    :sswitch_15
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10011
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    goto/16 :goto_0

    .line 10015
    :sswitch_16
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x200

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10016
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 10020
    :sswitch_17
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10021
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    goto/16 :goto_0

    .line 10025
    :sswitch_18
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10026
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    goto/16 :goto_0

    .line 10030
    :sswitch_19
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10031
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    goto/16 :goto_0

    .line 10035
    :sswitch_1a
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v7, 0x2

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 10036
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    goto/16 :goto_0

    .line 10040
    :sswitch_1b
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->addUninterpretedOption()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 10045
    .end local v3           #tag:I
    :cond_3
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10046
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 9886
    nop

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
        0xd8 -> :sswitch_1a
        0x1f3a -> :sswitch_1b
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 7453
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 7445
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 7445
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public setCcApiCompatibility(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7821
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7822
    if-nez p1, :cond_0

    .line 7823
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7825
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7826
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    .line 7827
    return-object p0
.end method

.method public setCcApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7780
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7781
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7782
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    .line 7783
    return-object p0
.end method

.method public setCcGenericServices(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9434
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9435
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9436
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    .line 9437
    return-object p0
.end method

.method public setCcProto1TextFormat(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8015
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8016
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8017
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    .line 8018
    return-object p0
.end method

.method public setCcProtoArrayCompatible(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7902
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7903
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7904
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    .line 7905
    return-object p0
.end method

.method public setCcUtf8Verification(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 7965
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 7966
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 7967
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    .line 7968
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9571
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9572
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9573
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    .line 9574
    return-object p0
.end method

.method public setGoPackage(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9137
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9138
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9139
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9140
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 9141
    return-object p0
.end method

.method public setGoPackageAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9153
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9154
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9155
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9156
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 9157
    return-object p0
.end method

.method public setJavaAltApiPackage(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8531
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8532
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8533
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8534
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8535
    return-object p0
.end method

.method public setJavaAltApiPackageAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8555
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8556
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8557
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8558
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 8559
    return-object p0
.end method

.method public setJavaApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8253
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8254
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8255
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    .line 8256
    return-object p0
.end method

.method public setJavaEnableDualGenerateMutableApi(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8662
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8663
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8664
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    .line 8665
    return-object p0
.end method

.method public setJavaGenerateEqualsAndHash(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 8941
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8942
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8943
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    .line 8944
    return-object p0
.end method

.method public setJavaGenerateRpcBaseimpl(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8388
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8389
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8390
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    .line 8391
    return-object p0
.end method

.method public setJavaGenericServices(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9484
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9485
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9486
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    .line 9487
    return-object p0
.end method

.method public setJavaJava5Enums(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8355
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8356
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8357
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    .line 8358
    return-object p0
.end method

.method public setJavaMultipleFiles(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 8860
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8861
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8862
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 8863
    return-object p0
.end method

.method public setJavaOuterClassname(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8772
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8773
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8774
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8775
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8776
    return-object p0
.end method

.method public setJavaOuterClassnameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8791
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8792
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8793
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8794
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 8795
    return-object p0
.end method

.method public setJavaPackage(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8121
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8122
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8123
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8124
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 8125
    return-object p0
.end method

.method public setJavaPackageAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8143
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8144
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8145
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8146
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 8147
    return-object p0
.end method

.method public setJavaStringCheckUtf8(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9014
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9015
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9016
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    .line 9017
    return-object p0
.end method

.method public setJavaUseJavaproto2(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8314
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8315
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8316
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    .line 8317
    return-object p0
.end method

.method public setJavaUseJavastrings(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8421
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8422
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8423
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    .line 8424
    return-object p0
.end method

.method public setJavascriptPackage(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9241
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9242
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9243
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9244
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 9245
    return-object p0
.end method

.method public setJavascriptPackageAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9258
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9259
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9260
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9261
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 9262
    return-object p0
.end method

.method public setOptimizeFor(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9056
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9057
    if-nez p1, :cond_0

    .line 9058
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9060
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9061
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 9062
    return-object p0
.end method

.method public setPyApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 8203
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 8204
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 8205
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    .line 8206
    return-object p0
.end method

.method public setPyGenericServices(Z)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9517
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9518
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9519
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    .line 9520
    return-object p0
.end method

.method public setSzlApiVersion(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 9337
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9338
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    .line 9339
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    .line 9340
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9709
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->assertMutable()V

    .line 9710
    if-nez p2, :cond_0

    .line 9711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9713
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ensureUninterpretedOptionInitialized()V

    .line 9714
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9715
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
    .line 10276
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

    .line 10055
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 10058
    .local v1, bytesWrittenBefore:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    move-result-object v2

    .line 10059
    .local v2, extensionWriter:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;>.ExtensionWriter;"
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 10060
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaPackageAsBytes()[B

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 10062
    :cond_0
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_1

    .line 10063
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiVersion_:I

    invoke-virtual {p1, v7, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10065
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2

    .line 10066
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyApiVersion_:I

    invoke-virtual {p1, v8, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10068
    :cond_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_3

    .line 10069
    const/4 v4, 0x5

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaApiVersion_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10071
    :cond_3
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_4

    .line 10072
    const/4 v4, 0x6

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10074
    :cond_4
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_5

    .line 10075
    const/4 v4, 0x7

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaJava5Enums_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10077
    :cond_5
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_6

    .line 10078
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaOuterClassnameAsBytes()[B

    move-result-object v4

    invoke-virtual {p1, v9, v4}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 10080
    :cond_6
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    const/high16 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 10081
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10083
    :cond_7
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const v5, 0x8000

    if-ne v4, v5, :cond_8

    .line 10084
    const/16 v4, 0xa

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10086
    :cond_8
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    const/high16 v5, 0x8

    if-ne v4, v5, :cond_9

    .line 10087
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getGoPackageAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 10089
    :cond_9
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    const/high16 v5, 0x10

    if-ne v4, v5, :cond_a

    .line 10090
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavascriptPackageAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 10092
    :cond_a
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_b

    .line 10093
    const/16 v4, 0xd

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10095
    :cond_b
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x20

    and-int/2addr v4, v5

    const/high16 v5, 0x20

    if-ne v4, v5, :cond_c

    .line 10096
    const/16 v4, 0xe

    iget v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->szlApiVersion_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10098
    :cond_c
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_d

    .line 10099
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;

    invoke-virtual {v5}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$CompatibilityLevel;->getNumber()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10101
    :cond_d
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    const/high16 v5, 0x40

    if-ne v4, v5, :cond_e

    .line 10102
    iget-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccGenericServices_:Z

    invoke-virtual {p1, v10, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10104
    :cond_e
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x80

    and-int/2addr v4, v5

    const/high16 v5, 0x80

    if-ne v4, v5, :cond_f

    .line 10105
    const/16 v4, 0x11

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenericServices_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10107
    :cond_f
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    const/high16 v5, 0x100

    if-ne v4, v5, :cond_10

    .line 10108
    const/16 v4, 0x12

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->pyGenericServices_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10110
    :cond_10
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_11

    .line 10111
    const/16 v4, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getJavaAltApiPackageAsBytes()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 10113
    :cond_11
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    const/high16 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 10114
    const/16 v4, 0x14

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10116
    :cond_12
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_13

    .line 10117
    const/16 v4, 0x15

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10119
    :cond_13
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_14

    .line 10120
    const/16 v4, 0x16

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10122
    :cond_14
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x200

    and-int/2addr v4, v5

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_15

    .line 10123
    const/16 v4, 0x17

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->deprecated_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10125
    :cond_15
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v9, :cond_16

    .line 10126
    const/16 v4, 0x18

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10128
    :cond_16
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v10, :cond_17

    .line 10129
    const/16 v4, 0x19

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10131
    :cond_17
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_18

    .line 10132
    const/16 v4, 0x1a

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10134
    :cond_18
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    const/high16 v5, 0x2

    if-ne v4, v5, :cond_19

    .line 10135
    const/16 v4, 0x1b

    iget-boolean v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10137
    :cond_19
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    if-eqz v4, :cond_1a

    .line 10138
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1a

    .line 10139
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 10138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10143
    .end local v3           #i:I
    :cond_1a
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 10144
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 10145
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 10146
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getCachedSize()I

    move-result v4

    sub-int v5, v0, v1

    if-eq v4, v5, :cond_1b

    .line 10147
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 10152
    :cond_1b
    return-void
.end method
