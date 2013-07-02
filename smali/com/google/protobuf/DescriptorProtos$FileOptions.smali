.class public final Lcom/google/protobuf/DescriptorProtos$FileOptions;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;,
        Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;,
        Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
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
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PY_API_VERSION_FIELD_NUMBER:I = 0x4

.field public static final PY_GENERIC_SERVICES_FIELD_NUMBER:I = 0x12

.field public static final SZL_API_VERSION_FIELD_NUMBER:I = 0xe

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/DescriptorProtos$FileOptions;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

.field private pyApiVersion_:I

.field private pyGenericServices_:Z

.field private szlApiVersion_:I

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16837
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 18355
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 21018
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 21019
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->initFields()V

    .line 21020
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/high16 v10, 0x400

    .line 16635
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 18117
    iput-byte v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 18227
    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    .line 16636
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->initFields()V

    .line 16637
    const/4 v3, 0x0

    .line 16638
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 16641
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 16642
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 16643
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 16644
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 16649
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 16651
    const/4 v1, 0x1

    goto :goto_0

    .line 16646
    :sswitch_0
    const/4 v1, 0x1

    .line 16647
    goto :goto_0

    .line 16656
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16657
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16658
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 16812
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 16813
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16818
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int v9, v3, v10

    if-ne v9, v10, :cond_1

    .line 16819
    iget-object v9, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16821
    :cond_1
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 16822
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->makeExtensionsImmutable()V

    throw v8

    .line 16662
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16663
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiVersion_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 16814
    .end local v5           #tag:I
    :catch_1
    move-exception v2

    .line 16815
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16667
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16668
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyApiVersion_:I

    goto :goto_0

    .line 16672
    :sswitch_4
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16673
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaApiVersion_:I

    goto :goto_0

    .line 16677
    :sswitch_5
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16678
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    goto :goto_0

    .line 16682
    :sswitch_6
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16683
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaJava5Enums_:Z

    goto/16 :goto_0

    .line 16687
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16688
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16689
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 16693
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 16694
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v7

    .line 16695
    .local v7, value:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    if-nez v7, :cond_2

    .line 16696
    const/16 v8, 0x9

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 16698
    :cond_2
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v9, 0x4

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16699
    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    goto/16 :goto_0

    .line 16704
    .end local v4           #rawValue:I
    .end local v7           #value:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    :sswitch_9
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const v9, 0x8000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16705
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    goto/16 :goto_0

    .line 16709
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16710
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v9, 0x8

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16711
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 16715
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16716
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v9, 0x10

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16717
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 16721
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_c
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16722
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    goto/16 :goto_0

    .line 16726
    :sswitch_d
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v9, 0x20

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16727
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->szlApiVersion_:I

    goto/16 :goto_0

    .line 16731
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 16732
    .restart local v4       #rawValue:I
    invoke-static {v4}, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    move-result-object v7

    .line 16733
    .local v7, value:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;
    if-nez v7, :cond_3

    .line 16734
    const/16 v8, 0xf

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 16736
    :cond_3
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16737
    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    goto/16 :goto_0

    .line 16742
    .end local v4           #rawValue:I
    .end local v7           #value:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;
    :sswitch_f
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v9, 0x40

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16743
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    goto/16 :goto_0

    .line 16747
    :sswitch_10
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v9, 0x80

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16748
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    goto/16 :goto_0

    .line 16752
    :sswitch_11
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v9, 0x100

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16753
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    goto/16 :goto_0

    .line 16757
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16758
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16759
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 16763
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_13
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v9, 0x1

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16764
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    goto/16 :goto_0

    .line 16768
    :sswitch_14
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16769
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    goto/16 :goto_0

    .line 16773
    :sswitch_15
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16774
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    goto/16 :goto_0

    .line 16778
    :sswitch_16
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v9, 0x200

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16779
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 16783
    :sswitch_17
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16784
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    goto/16 :goto_0

    .line 16788
    :sswitch_18
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16789
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    goto/16 :goto_0

    .line 16793
    :sswitch_19
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16794
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    goto/16 :goto_0

    .line 16798
    :sswitch_1a
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v9, 0x2

    or-int/2addr v8, v9

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 16799
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    goto/16 :goto_0

    .line 16803
    :sswitch_1b
    and-int v8, v3, v10

    if-eq v8, v10, :cond_4

    .line 16804
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16805
    or-int/2addr v3, v10

    .line 16807
    :cond_4
    iget-object v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 16818
    .end local v5           #tag:I
    :cond_5
    and-int v8, v3, v10

    if-ne v8, v10, :cond_6

    .line 16819
    iget-object v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 16821
    :cond_6
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 16822
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->makeExtensionsImmutable()V

    .line 16824
    return-void

    .line 16644
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

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16605
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<Lcom/google/protobuf/DescriptorProtos$FileOptions;*>;"
    const/4 v0, -0x1

    .line 16612
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    .line 18117
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 18227
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    .line 16613
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 16614
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16615
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 18117
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 18227
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    .line 16615
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$13202(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiVersion_:I

    return p1
.end method

.method static synthetic access$13302(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;)Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    return-object p1
.end method

.method static synthetic access$13402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    return p1
.end method

.method static synthetic access$13502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    return p1
.end method

.method static synthetic access$13602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    return p1
.end method

.method static synthetic access$13700(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16605
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13802(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyApiVersion_:I

    return p1
.end method

.method static synthetic access$13902(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaApiVersion_:I

    return p1
.end method

.method static synthetic access$14002(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    return p1
.end method

.method static synthetic access$14102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaJava5Enums_:Z

    return p1
.end method

.method static synthetic access$14202(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    return p1
.end method

.method static synthetic access$14302(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    return p1
.end method

.method static synthetic access$14400(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16605
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    return p1
.end method

.method static synthetic access$14600(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16605
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    return p1
.end method

.method static synthetic access$14802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    return p1
.end method

.method static synthetic access$14902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    return p1
.end method

.method static synthetic access$15002(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p1
.end method

.method static synthetic access$15100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16605
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$15102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15200(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16605
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$15202(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15302(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->szlApiVersion_:I

    return p1
.end method

.method static synthetic access$15402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    return p1
.end method

.method static synthetic access$15502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    return p1
.end method

.method static synthetic access$15602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    return p1
.end method

.method static synthetic access$15702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$15800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16605
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15902(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16605
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 16619
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 16827
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$12600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 18089
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiVersion_:I

    .line 18090
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    .line 18091
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    .line 18092
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    .line 18093
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    .line 18094
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 18095
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyApiVersion_:I

    .line 18096
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaApiVersion_:I

    .line 18097
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    .line 18098
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaJava5Enums_:Z

    .line 18099
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    .line 18100
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    .line 18101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 18102
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    .line 18103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 18104
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 18105
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    .line 18106
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    .line 18107
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 18108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 18109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 18110
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->szlApiVersion_:I

    .line 18111
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    .line 18112
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    .line 18113
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    .line 18114
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    .line 18115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 18116
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 18417
    #calls: Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->access$12900()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 18420
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18397
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18403
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18367
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18373
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18408
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18414
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18387
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18393
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18377
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18383
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method


# virtual methods
.method public getCcApiCompatibility()Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;
    .locals 1

    .prologue
    .line 17148
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    return-object v0
.end method

.method public getCcApiVersion()I
    .locals 1

    .prologue
    .line 17133
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiVersion_:I

    return v0
.end method

.method public getCcGenericServices()Z
    .locals 1

    .prologue
    .line 17971
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    return v0
.end method

.method public getCcProto1TextFormat()Z
    .locals 1

    .prologue
    .line 17241
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    return v0
.end method

.method public getCcProtoArrayCompatible()Z
    .locals 1

    .prologue
    .line 17193
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    return v0
.end method

.method public getCcUtf8Verification()Z
    .locals 1

    .prologue
    .line 17218
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 16623
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 16605
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16605
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 18030
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    return v0
.end method

.method public getGoPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 17789
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 17790
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 17791
    check-cast v1, Ljava/lang/String;

    .line 17799
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 17793
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17795
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17796
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17797
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17799
    goto :goto_0
.end method

.method public getGoPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 17812
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 17813
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17814
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17817
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 17820
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getJavaAltApiPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 17481
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 17482
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 17483
    check-cast v1, Ljava/lang/String;

    .line 17491
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 17485
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17487
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17488
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17489
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17491
    goto :goto_0
.end method

.method public getJavaAltApiPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 17512
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 17513
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17514
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17517
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaAltApiPackage_:Ljava/lang/Object;

    .line 17520
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getJavaApiVersion()I
    .locals 1

    .prologue
    .line 17364
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaApiVersion_:I

    return v0
.end method

.method public getJavaEnableDualGenerateMutableApi()Z
    .locals 1

    .prologue
    .line 17576
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    return v0
.end method

.method public getJavaGenerateEqualsAndHash()Z
    .locals 1

    .prologue
    .line 17716
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    return v0
.end method

.method public getJavaGenerateRpcBaseimpl()Z
    .locals 1

    .prologue
    .line 17425
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    return v0
.end method

.method public getJavaGenericServices()Z
    .locals 1

    .prologue
    .line 17986
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    return v0
.end method

.method public getJavaJava5Enums()Z
    .locals 1

    .prologue
    .line 17410
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaJava5Enums_:Z

    return v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .prologue
    .line 17675
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 17607
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 17608
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 17609
    check-cast v1, Ljava/lang/String;

    .line 17617
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 17611
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17613
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17614
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17615
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17617
    goto :goto_0
.end method

.method public getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 17633
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 17634
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17635
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17638
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 17641
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 17278
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 17279
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 17280
    check-cast v1, Ljava/lang/String;

    .line 17288
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 17282
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17284
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17285
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17286
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17288
    goto :goto_0
.end method

.method public getJavaPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 17307
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 17308
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17309
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17312
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 17315
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getJavaStringCheckUtf8()Z
    .locals 1

    .prologue
    .line 17749
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    return v0
.end method

.method public getJavaUseJavaproto2()Z
    .locals 1

    .prologue
    .line 17395
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    return v0
.end method

.method public getJavaUseJavastrings()Z
    .locals 1

    .prologue
    .line 17440
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    return v0
.end method

.method public getJavascriptPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 17848
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 17849
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 17850
    check-cast v1, Ljava/lang/String;

    .line 17858
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 17852
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17854
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17855
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17856
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17858
    goto :goto_0
.end method

.method public getJavascriptPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 17872
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 17873
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17874
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17877
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javascriptPackage_:Ljava/lang/Object;

    .line 17880
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .prologue
    .line 17764
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16849
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPyApiVersion()I
    .locals 1

    .prologue
    .line 17341
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyApiVersion_:I

    return v0
.end method

.method public getPyGenericServices()Z
    .locals 1

    .prologue
    .line 18001
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 18229
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    .line 18230
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 18344
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 18232
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 18233
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 18234
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 18237
    :cond_1
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_2

    .line 18238
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiVersion_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 18241
    :cond_2
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_3

    .line 18242
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyApiVersion_:I

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 18245
    :cond_3
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_4

    .line 18246
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaApiVersion_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 18249
    :cond_4
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_5

    .line 18250
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18253
    :cond_5
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_6

    .line 18254
    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaJava5Enums_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18257
    :cond_6
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_7

    .line 18258
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 18261
    :cond_7
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_8

    .line 18262
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 18265
    :cond_8
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const v4, 0x8000

    and-int/2addr v3, v4

    const v4, 0x8000

    if-ne v3, v4, :cond_9

    .line 18266
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18269
    :cond_9
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    const/high16 v4, 0x8

    if-ne v3, v4, :cond_a

    .line 18270
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 18273
    :cond_a
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_b

    .line 18274
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavascriptPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 18277
    :cond_b
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_c

    .line 18278
    const/16 v3, 0xd

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18281
    :cond_c
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v4, 0x20

    and-int/2addr v3, v4

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_d

    .line 18282
    const/16 v3, 0xe

    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->szlApiVersion_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 18285
    :cond_d
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_e

    .line 18286
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 18289
    :cond_e
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_f

    .line 18290
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    invoke-static {v9, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18293
    :cond_f
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v4, 0x80

    and-int/2addr v3, v4

    const/high16 v4, 0x80

    if-ne v3, v4, :cond_10

    .line 18294
    const/16 v3, 0x11

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18297
    :cond_10
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v4, 0x100

    and-int/2addr v3, v4

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_11

    .line 18298
    const/16 v3, 0x12

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18301
    :cond_11
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_12

    .line 18302
    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaAltApiPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 18305
    :cond_12
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v4, 0x1

    and-int/2addr v3, v4

    const/high16 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 18306
    const/16 v3, 0x14

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18309
    :cond_13
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_14

    .line 18310
    const/16 v3, 0x15

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18313
    :cond_14
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_15

    .line 18314
    const/16 v3, 0x16

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18317
    :cond_15
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v4, 0x200

    and-int/2addr v3, v4

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_16

    .line 18318
    const/16 v3, 0x17

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18321
    :cond_16
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v8, :cond_17

    .line 18322
    const/16 v3, 0x18

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18325
    :cond_17
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-ne v3, v9, :cond_18

    .line 18326
    const/16 v3, 0x19

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18329
    :cond_18
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_19

    .line 18330
    const/16 v3, 0x1a

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18333
    :cond_19
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v4, 0x2

    and-int/2addr v3, v4

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_1a

    .line 18334
    const/16 v3, 0x1b

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18337
    :cond_1a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1b

    .line 18338
    const/16 v4, 0x3e7

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 18337
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18341
    :cond_1b
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->extensionsSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 18342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 18343
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    move v2, v1

    .line 18344
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getSzlApiVersion()I
    .locals 1

    .prologue
    .line 17922
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->szlApiVersion_:I

    return v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 18074
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 18064
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18043
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 18085
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18054
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 16630
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCcApiCompatibility()Z
    .locals 2

    .prologue
    .line 17142
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

    .line 17119
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

    .line 17948
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17231
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17172
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17207
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

    .line 18017
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

    .line 17778
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17462
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17354
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17550
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

    .line 17697
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17419
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

    .line 17980
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17404
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

    .line 17660
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17593
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17261
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

    .line 17734
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17381
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17434
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

    .line 17836
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

    .line 17758
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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
    .line 17330
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

    .line 17995
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

    .line 17903
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 16832
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$12700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 18358
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 18359
    const-string v0, "com.google.protobuf.MutableDescriptorProtos$FileOptions"

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 18361
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 18119
    iget-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 18120
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 18133
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 18120
    goto :goto_0

    .line 18122
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 18123
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 18124
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 18125
    goto :goto_0

    .line 18122
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18128
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 18129
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 18130
    goto :goto_0

    .line 18132
    :cond_4
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 18418
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 18427
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 18428
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 16605
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16605
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16605
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 18422
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 16605
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16605
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 18351
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 18138
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getSerializedSize()I

    .line 18140
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 18142
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<Lcom/google/protobuf/DescriptorProtos$FileOptions;>.ExtensionWriter;"
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 18143
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18145
    :cond_0
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 18146
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiVersion_:I

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 18148
    :cond_1
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    .line 18149
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyApiVersion_:I

    invoke-virtual {p1, v6, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 18151
    :cond_2
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_3

    .line 18152
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaApiVersion_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 18154
    :cond_3
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_4

    .line 18155
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavaproto2_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18157
    :cond_4
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_5

    .line 18158
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaJava5Enums_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18160
    :cond_5
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_6

    .line 18161
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v7, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18163
    :cond_6
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    const/high16 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 18164
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18166
    :cond_7
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_8

    .line 18167
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18169
    :cond_8
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    const/high16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 18170
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18172
    :cond_9
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    const/high16 v3, 0x10

    if-ne v2, v3, :cond_a

    .line 18173
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavascriptPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18175
    :cond_a
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 18176
    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateRpcBaseimpl_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18178
    :cond_b
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_c

    .line 18179
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->szlApiVersion_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 18181
    :cond_c
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_d

    .line 18182
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccApiCompatibility_:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18184
    :cond_d
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x40

    and-int/2addr v2, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_e

    .line 18185
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    invoke-virtual {p1, v8, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18187
    :cond_e
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    const/high16 v3, 0x80

    if-ne v2, v3, :cond_f

    .line 18188
    const/16 v2, 0x11

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18190
    :cond_f
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x100

    and-int/2addr v2, v3

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_10

    .line 18191
    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18193
    :cond_10
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_11

    .line 18194
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaAltApiPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18196
    :cond_11
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 18197
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18199
    :cond_12
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_13

    .line 18200
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaUseJavastrings_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18202
    :cond_13
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_14

    .line 18203
    const/16 v2, 0x16

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProtoArrayCompatible_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18205
    :cond_14
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x200

    and-int/2addr v2, v3

    const/high16 v3, 0x200

    if-ne v2, v3, :cond_15

    .line 18206
    const/16 v2, 0x17

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18208
    :cond_15
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_16

    .line 18209
    const/16 v2, 0x18

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccUtf8Verification_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18211
    :cond_16
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v8, :cond_17

    .line 18212
    const/16 v2, 0x19

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccProto1TextFormat_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18214
    :cond_17
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_18

    .line 18215
    const/16 v2, 0x1a

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18217
    :cond_18
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_19

    .line 18218
    const/16 v2, 0x1b

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18220
    :cond_19
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 18221
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18223
    :cond_1a
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 18224
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 18225
    return-void
.end method
