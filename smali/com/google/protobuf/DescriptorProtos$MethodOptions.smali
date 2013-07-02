.class public final Lcom/google/protobuf/DescriptorProtos$MethodOptions;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;,
        Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;,
        Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;,
        Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLIENT_LOGGING_FIELD_NUMBER:I = 0xb

.field public static final CLIENT_STREAMING_FIELD_NUMBER:I = 0x14

.field public static final DEADLINE_FIELD_NUMBER:I = 0x8

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x21

.field public static final DUPLICATE_SUPPRESSION_FIELD_NUMBER:I = 0x9

.field public static final FAIL_FAST_FIELD_NUMBER:I = 0xa

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_FIELD_NUMBER:I = 0x7

.field public static final REQUEST_FORMAT_FIELD_NUMBER:I = 0x11

.field public static final RESPONSE_FORMAT_FIELD_NUMBER:I = 0xf

.field public static final SECURITY_LABEL_FIELD_NUMBER:I = 0x13

.field public static final SECURITY_LEVEL_FIELD_NUMBER:I = 0xd

.field public static final SERVER_LOGGING_FIELD_NUMBER:I = 0xc

.field public static final SERVER_STREAMING_FIELD_NUMBER:I = 0x15

.field public static final STREAM_TYPE_FIELD_NUMBER:I = 0x12

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientLogging_:I

.field private clientStreaming_:Z

.field private deadline_:D

.field private deprecated_:Z

.field private duplicateSuppression_:Z

.field private failFast_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

.field private requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

.field private responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

.field private securityLabel_:Ljava/lang/Object;

.field private securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

.field private serverLogging_:I

.field private serverStreaming_:Z

.field private streamType_:Ljava/lang/Object;

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
    .line 30847
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 31954
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 33867
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 33868
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->initFields()V

    .line 33869
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

    const/16 v10, 0x4000

    .line 30696
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 31800
    iput-byte v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 31874
    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 30697
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->initFields()V

    .line 30698
    const/4 v3, 0x0

    .line 30699
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 30702
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 30703
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 30704
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 30705
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 30710
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 30712
    const/4 v1, 0x1

    goto :goto_0

    .line 30707
    :sswitch_0
    const/4 v1, 0x1

    .line 30708
    goto :goto_0

    .line 30717
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 30718
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    move-result-object v7

    .line 30719
    .local v7, value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    if-nez v7, :cond_2

    .line 30720
    const/4 v8, 0x7

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 30822
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    :catch_0
    move-exception v2

    .line 30823
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30828
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit16 v9, v3, 0x4000

    if-ne v9, v10, :cond_1

    .line 30829
    iget-object v9, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 30831
    :cond_1
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 30832
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->makeExtensionsImmutable()V

    throw v8

    .line 30722
    .restart local v4       #rawValue:I
    .restart local v5       #tag:I
    .restart local v7       #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    :cond_2
    :try_start_2
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30723
    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 30824
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    :catch_1
    move-exception v2

    .line 30825
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

    .line 30728
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_4
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30729
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D

    goto :goto_0

    .line 30733
    :sswitch_3
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30734
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    goto :goto_0

    .line 30738
    :sswitch_4
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30739
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z

    goto :goto_0

    .line 30743
    :sswitch_5
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30744
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I

    goto/16 :goto_0

    .line 30748
    :sswitch_6
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30749
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I

    goto/16 :goto_0

    .line 30753
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 30754
    .restart local v4       #rawValue:I
    invoke-static {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v7

    .line 30755
    .local v7, value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    if-nez v7, :cond_3

    .line 30756
    const/16 v8, 0xd

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 30758
    :cond_3
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30759
    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    goto/16 :goto_0

    .line 30764
    .end local v4           #rawValue:I
    .end local v7           #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 30765
    .restart local v4       #rawValue:I
    invoke-static {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    move-result-object v7

    .line 30766
    .local v7, value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    if-nez v7, :cond_4

    .line 30767
    const/16 v8, 0xf

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 30769
    :cond_4
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30770
    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    goto/16 :goto_0

    .line 30775
    .end local v4           #rawValue:I
    .end local v7           #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 30776
    .restart local v4       #rawValue:I
    invoke-static {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    move-result-object v7

    .line 30777
    .restart local v7       #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    if-nez v7, :cond_5

    .line 30778
    const/16 v8, 0x11

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 30780
    :cond_5
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30781
    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    goto/16 :goto_0

    .line 30786
    .end local v4           #rawValue:I
    .end local v7           #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30787
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30788
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 30792
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30793
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30794
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 30798
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_c
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30799
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z

    goto/16 :goto_0

    .line 30803
    :sswitch_d
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30804
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z

    goto/16 :goto_0

    .line 30808
    :sswitch_e
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 30809
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 30813
    :sswitch_f
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v10, :cond_6

    .line 30814
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 30815
    or-int/lit16 v3, v3, 0x4000

    .line 30817
    :cond_6
    iget-object v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 30828
    .end local v5           #tag:I
    :cond_7
    and-int/lit16 v8, v3, 0x4000

    if-ne v8, v10, :cond_8

    .line 30829
    iget-object v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 30831
    :cond_8
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 30832
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->makeExtensionsImmutable()V

    .line 30834
    return-void

    .line 30705
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x38 -> :sswitch_1
        0x41 -> :sswitch_2
        0x48 -> :sswitch_3
        0x50 -> :sswitch_4
        0x58 -> :sswitch_5
        0x60 -> :sswitch_6
        0x68 -> :sswitch_7
        0x78 -> :sswitch_8
        0x88 -> :sswitch_9
        0x92 -> :sswitch_a
        0x9a -> :sswitch_b
        0xa0 -> :sswitch_c
        0xa8 -> :sswitch_d
        0x108 -> :sswitch_e
        0x1f3a -> :sswitch_f
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
    .line 30666
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<Lcom/google/protobuf/DescriptorProtos$MethodOptions;*>;"
    const/4 v0, -0x1

    .line 30673
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    .line 31800
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 31874
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 30674
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 30675
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 30676
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 31800
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 31874
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 30676
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$23402(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    return-object p1
.end method

.method static synthetic access$23502(Lcom/google/protobuf/DescriptorProtos$MethodOptions;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D

    return-wide p1
.end method

.method static synthetic access$23602(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    return p1
.end method

.method static synthetic access$23702(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z

    return p1
.end method

.method static synthetic access$23802(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I

    return p1
.end method

.method static synthetic access$23902(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I

    return p1
.end method

.method static synthetic access$24002(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    return-object p1
.end method

.method static synthetic access$24102(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object p1
.end method

.method static synthetic access$24202(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object p1
.end method

.method static synthetic access$24300(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30666
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$24302(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$24400(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30666
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$24402(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$24502(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z

    return p1
.end method

.method static synthetic access$24602(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z

    return p1
.end method

.method static synthetic access$24702(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$24800(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30666
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$24802(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$24902(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30666
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 30680
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30837
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$22800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 31784
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 31785
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D

    .line 31786
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    .line 31787
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z

    .line 31788
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I

    .line 31789
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I

    .line 31790
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 31791
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 31792
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 31793
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 31794
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 31795
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z

    .line 31796
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z

    .line 31797
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    .line 31798
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 31799
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32016
    #calls: Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->access$23100()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 32019
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31996
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32002
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 31966
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 31972
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32007
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32013
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31986
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31992
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 31976
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 31982
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method


# virtual methods
.method public getClientLogging()I
    .locals 1

    .prologue
    .line 31381
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I

    return v0
.end method

.method public getClientStreaming()Z
    .locals 1

    .prologue
    .line 31673
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z

    return v0
.end method

.method public getDeadline()D
    .locals 2

    .prologue
    .line 31206
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 30684
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 30666
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30666
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 31725
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    return v0
.end method

.method public getDuplicateSuppression()Z
    .locals 1

    .prologue
    .line 31271
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    return v0
.end method

.method public getFailFast()Z
    .locals 1

    .prologue
    .line 31310
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30859
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProtocol()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    .locals 1

    .prologue
    .line 31165
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    return-object v0
.end method

.method public getRequestFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 31515
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getResponseFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 31500
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31612
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 31613
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 31614
    check-cast v1, Ljava/lang/String;

    .line 31622
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 31616
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31618
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 31619
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31620
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 31622
    goto :goto_0
.end method

.method public getSecurityLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 31641
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 31642
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 31643
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31646
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 31649
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

.method public getSecurityLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    .locals 1

    .prologue
    .line 31441
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 31876
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 31877
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 31943
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 31879
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 31880
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 31881
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 31884
    :cond_1
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 31885
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 31888
    :cond_2
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 31889
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 31892
    :cond_3
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v5, :cond_4

    .line 31893
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 31896
    :cond_4
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 31897
    const/16 v3, 0xb

    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 31900
    :cond_5
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 31901
    const/16 v3, 0xc

    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 31904
    :cond_6
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    .line 31905
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 31908
    :cond_7
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8

    .line 31909
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 31912
    :cond_8
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9

    .line 31913
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 31916
    :cond_9
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_a

    .line 31917
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getStreamTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 31920
    :cond_a
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_b

    .line 31921
    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getSecurityLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 31924
    :cond_b
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_c

    .line 31925
    const/16 v3, 0x14

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 31928
    :cond_c
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_d

    .line 31929
    const/16 v3, 0x15

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 31932
    :cond_d
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_e

    .line 31933
    const/16 v3, 0x21

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 31936
    :cond_e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 31937
    const/16 v4, 0x3e7

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 31936
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31940
    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->extensionsSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 31941
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 31942
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    move v2, v1

    .line 31943
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 31396
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I

    return v0
.end method

.method public getServerStreaming()Z
    .locals 1

    .prologue
    .line 31696
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z

    return v0
.end method

.method public getStreamType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31542
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 31543
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 31544
    check-cast v1, Ljava/lang/String;

    .line 31552
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 31546
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31548
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 31549
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31550
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 31552
    goto :goto_0
.end method

.method public getStreamTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 31566
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 31567
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 31568
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31571
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 31574
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

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 31769
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 31759
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 31738
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 31780
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 31749
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 30691
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasClientLogging()Z
    .locals 2

    .prologue
    .line 31347
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasClientStreaming()Z
    .locals 2

    .prologue
    .line 31663
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasDeadline()Z
    .locals 2

    .prologue
    .line 31187
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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
    .line 31712
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasDuplicateSuppression()Z
    .locals 2

    .prologue
    .line 31240
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasFailFast()Z
    .locals 2

    .prologue
    .line 31292
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasProtocol()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 31146
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestFormat()Z
    .locals 2

    .prologue
    .line 31509
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasResponseFormat()Z
    .locals 2

    .prologue
    .line 31472
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasSecurityLabel()Z
    .locals 2

    .prologue
    .line 31595
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasSecurityLevel()Z
    .locals 2

    .prologue
    .line 31420
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasServerLogging()Z
    .locals 2

    .prologue
    .line 31390
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasServerStreaming()Z
    .locals 2

    .prologue
    .line 31686
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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

.method public hasStreamType()Z
    .locals 2

    .prologue
    .line 31530
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 30842
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$22900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 31957
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 31958
    const-string v0, "com.google.protobuf.MutableDescriptorProtos$MethodOptions"

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 31960
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 31802
    iget-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 31803
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 31816
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 31803
    goto :goto_0

    .line 31805
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOptionCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 31806
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 31807
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 31808
    goto :goto_0

    .line 31805
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31811
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 31812
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 31813
    goto :goto_0

    .line 31815
    :cond_4
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32017
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 32026
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 32027
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30666
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30666
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30666
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 32021
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30666
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30666
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

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
    .line 31950
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 31821
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getSerializedSize()I

    .line 31823
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 31825
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<Lcom/google/protobuf/DescriptorProtos$MethodOptions;>.ExtensionWriter;"
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 31826
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 31828
    :cond_0
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 31829
    iget-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 31831
    :cond_1
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 31832
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 31834
    :cond_2
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v4, :cond_3

    .line 31835
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 31837
    :cond_3
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 31838
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 31840
    :cond_4
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 31841
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 31843
    :cond_5
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 31844
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 31846
    :cond_6
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 31847
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 31849
    :cond_7
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 31850
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 31852
    :cond_8
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 31853
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getStreamTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 31855
    :cond_9
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 31856
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getSecurityLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 31858
    :cond_a
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 31859
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 31861
    :cond_b
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    .line 31862
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 31864
    :cond_c
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_d

    .line 31865
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 31867
    :cond_d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 31868
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 31867
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31870
    :cond_e
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 31871
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 31872
    return-void
.end method
