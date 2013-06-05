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
    .line 29607
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 30714
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 32621
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 32622
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->initFields()V

    .line 32623
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/16 v9, 0x4000

    .line 29458
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 30560
    iput-byte v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 30634
    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 29459
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->initFields()V

    .line 29460
    const/4 v2, 0x0

    .line 29461
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 29464
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 29465
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_7

    .line 29466
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 29467
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 29472
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 29474
    const/4 v0, 0x1

    goto :goto_0

    .line 29469
    :sswitch_0
    const/4 v0, 0x1

    .line 29470
    goto :goto_0

    .line 29479
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 29480
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    move-result-object v6

    .line 29481
    .local v6, value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    if-nez v6, :cond_2

    .line 29482
    const/4 v7, 0x7

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 29582
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    :catch_0
    move-exception v1

    .line 29583
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29588
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    and-int/lit16 v8, v2, 0x4000

    if-ne v8, v9, :cond_1

    .line 29589
    iget-object v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 29591
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 29592
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->makeExtensionsImmutable()V

    throw v7

    .line 29484
    .restart local v3       #rawValue:I
    .restart local v4       #tag:I
    .restart local v6       #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    :cond_2
    :try_start_2
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29485
    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 29584
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    :catch_1
    move-exception v1

    .line 29585
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29490
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_4
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29491
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D

    goto :goto_0

    .line 29495
    :sswitch_3
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29496
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    goto :goto_0

    .line 29500
    :sswitch_4
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29501
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z

    goto :goto_0

    .line 29505
    :sswitch_5
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29506
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I

    goto/16 :goto_0

    .line 29510
    :sswitch_6
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29511
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I

    goto/16 :goto_0

    .line 29515
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 29516
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v6

    .line 29517
    .local v6, value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    if-nez v6, :cond_3

    .line 29518
    const/16 v7, 0xd

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 29520
    :cond_3
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29521
    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    goto/16 :goto_0

    .line 29526
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 29527
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    move-result-object v6

    .line 29528
    .local v6, value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    if-nez v6, :cond_4

    .line 29529
    const/16 v7, 0xf

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 29531
    :cond_4
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29532
    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    goto/16 :goto_0

    .line 29537
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 29538
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    move-result-object v6

    .line 29539
    .restart local v6       #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    if-nez v6, :cond_5

    .line 29540
    const/16 v7, 0x11

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 29542
    :cond_5
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29543
    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    goto/16 :goto_0

    .line 29548
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    :sswitch_a
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29549
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 29553
    :sswitch_b
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29554
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 29558
    :sswitch_c
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v7, v7, 0x800

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29559
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z

    goto/16 :goto_0

    .line 29563
    :sswitch_d
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29564
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z

    goto/16 :goto_0

    .line 29568
    :sswitch_e
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    or-int/lit16 v7, v7, 0x2000

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    .line 29569
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 29573
    :sswitch_f
    and-int/lit16 v7, v2, 0x4000

    if-eq v7, v9, :cond_6

    .line 29574
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 29575
    or-int/lit16 v2, v2, 0x4000

    .line 29577
    :cond_6
    iget-object v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v8, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 29588
    .end local v4           #tag:I
    :cond_7
    and-int/lit16 v7, v2, 0x4000

    if-ne v7, v9, :cond_8

    .line 29589
    iget-object v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 29591
    :cond_8
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 29592
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->makeExtensionsImmutable()V

    .line 29594
    return-void

    .line 29467
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
    .line 29428
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

    .line 29435
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    .line 30560
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 30634
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 29436
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 29437
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 29438
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 30560
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 30634
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 29438
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$22302(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    return-object p1
.end method

.method static synthetic access$22402(Lcom/google/protobuf/DescriptorProtos$MethodOptions;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D

    return-wide p1
.end method

.method static synthetic access$22502(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    return p1
.end method

.method static synthetic access$22602(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z

    return p1
.end method

.method static synthetic access$22702(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I

    return p1
.end method

.method static synthetic access$22802(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I

    return p1
.end method

.method static synthetic access$22902(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    return-object p1
.end method

.method static synthetic access$23002(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object p1
.end method

.method static synthetic access$23102(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object p1
.end method

.method static synthetic access$23200(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29428
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$23202(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23300(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29428
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$23302(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23402(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z

    return p1
.end method

.method static synthetic access$23502(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z

    return p1
.end method

.method static synthetic access$23602(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$23700(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29428
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$23702(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$23802(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29428
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 29442
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 29597
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$21700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    const/4 v2, 0x0

    .line 30544
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    .line 30545
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D

    .line 30546
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    .line 30547
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z

    .line 30548
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I

    .line 30549
    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I

    .line 30550
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 30551
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 30552
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 30553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 30554
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 30555
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z

    .line 30556
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z

    .line 30557
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    .line 30558
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 30559
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 30776
    #calls: Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->access$22000()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 30779
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
    .line 30756
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
    .line 30762
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
    .line 30726
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
    .line 30732
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
    .line 30767
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
    .line 30773
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
    .line 30746
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
    .line 30752
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
    .line 30736
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
    .line 30742
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
    .line 30141
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I

    return v0
.end method

.method public getClientStreaming()Z
    .locals 1

    .prologue
    .line 30433
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z

    return v0
.end method

.method public getDeadline()D
    .locals 2

    .prologue
    .line 29966
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 29446
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 29428
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 29428
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 30485
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    return v0
.end method

.method public getDuplicateSuppression()Z
    .locals 1

    .prologue
    .line 30031
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    return v0
.end method

.method public getFailFast()Z
    .locals 1

    .prologue
    .line 30070
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
    .line 29619
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProtocol()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;
    .locals 1

    .prologue
    .line 29925
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    return-object v0
.end method

.method public getRequestFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 30275
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getResponseFormat()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 30260
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30372
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 30373
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 30374
    check-cast v1, Ljava/lang/String;

    .line 30382
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 30376
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30378
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30379
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30380
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 30382
    goto :goto_0
.end method

.method public getSecurityLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 30401
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 30402
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 30403
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30406
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLabel_:Ljava/lang/Object;

    .line 30409
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
    .line 30201
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 30636
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 30637
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 30703
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 30639
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 30640
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 30641
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 30644
    :cond_1
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 30645
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 30648
    :cond_2
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 30649
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 30652
    :cond_3
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v5, :cond_4

    .line 30653
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 30656
    :cond_4
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 30657
    const/16 v3, 0xb

    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 30660
    :cond_5
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 30661
    const/16 v3, 0xc

    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 30664
    :cond_6
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    .line 30665
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 30668
    :cond_7
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8

    .line 30669
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 30672
    :cond_8
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9

    .line 30673
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 30676
    :cond_9
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_a

    .line 30677
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getStreamTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30680
    :cond_a
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_b

    .line 30681
    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getSecurityLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30684
    :cond_b
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_c

    .line 30685
    const/16 v3, 0x14

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 30688
    :cond_c
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_d

    .line 30689
    const/16 v3, 0x15

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 30692
    :cond_d
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_e

    .line 30693
    const/16 v3, 0x21

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 30696
    :cond_e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 30697
    const/16 v4, 0x3e7

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30696
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30700
    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->extensionsSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 30701
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 30702
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    move v2, v1

    .line 30703
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 30156
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I

    return v0
.end method

.method public getServerStreaming()Z
    .locals 1

    .prologue
    .line 30456
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z

    return v0
.end method

.method public getStreamType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30302
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 30303
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 30304
    check-cast v1, Ljava/lang/String;

    .line 30312
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 30306
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30308
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30309
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30310
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 30312
    goto :goto_0
.end method

.method public getStreamTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 30326
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 30327
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 30328
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30331
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->streamType_:Ljava/lang/Object;

    .line 30334
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
    .line 30529
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 30519
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
    .line 30498
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 30540
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
    .line 30509
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 29453
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasClientLogging()Z
    .locals 2

    .prologue
    .line 30107
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
    .line 30423
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
    .line 29947
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
    .line 30472
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
    .line 30000
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
    .line 30052
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

    .line 29906
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
    .line 30269
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
    .line 30232
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
    .line 30355
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
    .line 30180
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
    .line 30150
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
    .line 30446
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
    .line 30290
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
    .line 29602
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$21800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

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
    .line 30717
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 30718
    const-string v0, "com.google.protobuf.MutableDescriptorProtos$MethodOptions"

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 30720
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 30562
    iget-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    .line 30563
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 30576
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 30563
    goto :goto_0

    .line 30565
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOptionCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 30566
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 30567
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 30568
    goto :goto_0

    .line 30565
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30571
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 30572
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 30573
    goto :goto_0

    .line 30575
    :cond_4
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 30777
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 30786
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 30787
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 29428
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29428
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 29428
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 30781
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 29428
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 29428
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
    .line 30710
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

    .line 30581
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getSerializedSize()I

    .line 30583
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 30585
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<Lcom/google/protobuf/DescriptorProtos$MethodOptions;>.ExtensionWriter;"
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 30586
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->protocol_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Protocol;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 30588
    :cond_0
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 30589
    iget-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deadline_:D

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 30591
    :cond_1
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 30592
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->duplicateSuppression_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 30594
    :cond_2
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v4, :cond_3

    .line 30595
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->failFast_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 30597
    :cond_3
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 30598
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientLogging_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 30600
    :cond_4
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 30601
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverLogging_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 30603
    :cond_5
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 30604
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 30606
    :cond_6
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 30607
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->responseFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 30609
    :cond_7
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 30610
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->requestFormat_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 30612
    :cond_8
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 30613
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getStreamTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30615
    :cond_9
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 30616
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getSecurityLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30618
    :cond_a
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 30619
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->clientStreaming_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 30621
    :cond_b
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    .line 30622
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->serverStreaming_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 30624
    :cond_c
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_d

    .line 30625
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->deprecated_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 30627
    :cond_d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 30628
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 30627
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30630
    :cond_e
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 30631
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 30632
    return-void
.end method
