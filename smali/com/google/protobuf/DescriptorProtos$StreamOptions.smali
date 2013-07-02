.class public final Lcom/google/protobuf/DescriptorProtos$StreamOptions;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$StreamOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;,
        Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$StreamOptions;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$StreamOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLIENT_INITIAL_TOKENS_FIELD_NUMBER:I = 0x1

.field public static final CLIENT_LOGGING_FIELD_NUMBER:I = 0x6

.field public static final DEADLINE_FIELD_NUMBER:I = 0x8

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x21

.field public static final FAIL_FAST_FIELD_NUMBER:I = 0x9

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$StreamOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECURITY_LABEL_FIELD_NUMBER:I = 0x5

.field public static final SECURITY_LEVEL_FIELD_NUMBER:I = 0x4

.field public static final SERVER_INITIAL_TOKENS_FIELD_NUMBER:I = 0x2

.field public static final SERVER_LOGGING_FIELD_NUMBER:I = 0x7

.field public static final TOKEN_UNIT_FIELD_NUMBER:I = 0x3

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientInitialTokens_:J

.field private clientLogging_:I

.field private deadline_:D

.field private deprecated_:Z

.field private failFast_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private securityLabel_:Ljava/lang/Object;

.field private securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

.field private serverInitialTokens_:J

.field private serverLogging_:I

.field private tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

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
    .line 34218
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 34735
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 35845
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 35846
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->initFields()V

    .line 35847
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

    const/16 v10, 0x400

    .line 34100
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 34609
    iput-byte v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    .line 34671
    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedSerializedSize:I

    .line 34101
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->initFields()V

    .line 34102
    const/4 v3, 0x0

    .line 34103
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 34106
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 34107
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 34108
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 34109
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 34114
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 34116
    const/4 v1, 0x1

    goto :goto_0

    .line 34111
    :sswitch_0
    const/4 v1, 0x1

    .line 34112
    goto :goto_0

    .line 34121
    :sswitch_1
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 34122
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 34193
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 34194
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34199
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit16 v9, v3, 0x400

    if-ne v9, v10, :cond_1

    .line 34200
    iget-object v9, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 34202
    :cond_1
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 34203
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->makeExtensionsImmutable()V

    throw v8

    .line 34126
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 34127
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 34195
    .end local v5           #tag:I
    :catch_1
    move-exception v2

    .line 34196
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

    .line 34131
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 34132
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    move-result-object v7

    .line 34133
    .local v7, value:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    if-nez v7, :cond_2

    .line 34134
    const/4 v8, 0x3

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 34136
    :cond_2
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 34137
    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    goto :goto_0

    .line 34142
    .end local v4           #rawValue:I
    .end local v7           #value:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 34143
    .restart local v4       #rawValue:I
    invoke-static {v4}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v7

    .line 34144
    .local v7, value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    if-nez v7, :cond_3

    .line 34145
    const/4 v8, 0x4

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 34147
    :cond_3
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 34148
    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    goto/16 :goto_0

    .line 34153
    .end local v4           #rawValue:I
    .end local v7           #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34154
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 34155
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 34159
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_6
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 34160
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I

    goto/16 :goto_0

    .line 34164
    :sswitch_7
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 34165
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I

    goto/16 :goto_0

    .line 34169
    :sswitch_8
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 34170
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deadline_:D

    goto/16 :goto_0

    .line 34174
    :sswitch_9
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 34175
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->failFast_:Z

    goto/16 :goto_0

    .line 34179
    :sswitch_a
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 34180
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 34184
    :sswitch_b
    and-int/lit16 v8, v3, 0x400

    if-eq v8, v10, :cond_4

    .line 34185
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 34186
    or-int/lit16 v3, v3, 0x400

    .line 34188
    :cond_4
    iget-object v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 34199
    .end local v5           #tag:I
    :cond_5
    and-int/lit16 v8, v3, 0x400

    if-ne v8, v10, :cond_6

    .line 34200
    iget-object v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 34202
    :cond_6
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 34203
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->makeExtensionsImmutable()V

    .line 34205
    return-void

    .line 34109
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x41 -> :sswitch_8
        0x48 -> :sswitch_9
        0x108 -> :sswitch_a
        0x1f3a -> :sswitch_b
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
    .line 34070
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
            "Lcom/google/protobuf/DescriptorProtos$StreamOptions;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<Lcom/google/protobuf/DescriptorProtos$StreamOptions;*>;"
    const/4 v0, -0x1

    .line 34077
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    .line 34609
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    .line 34671
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedSerializedSize:I

    .line 34078
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 34079
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 34080
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 34609
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    .line 34671
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedSerializedSize:I

    .line 34080
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$25602(Lcom/google/protobuf/DescriptorProtos$StreamOptions;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J

    return-wide p1
.end method

.method static synthetic access$25702(Lcom/google/protobuf/DescriptorProtos$StreamOptions;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J

    return-wide p1
.end method

.method static synthetic access$25802(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    return-object p1
.end method

.method static synthetic access$25902(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    return-object p1
.end method

.method static synthetic access$26000(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34070
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$26002(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26102(Lcom/google/protobuf/DescriptorProtos$StreamOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I

    return p1
.end method

.method static synthetic access$26202(Lcom/google/protobuf/DescriptorProtos$StreamOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I

    return p1
.end method

.method static synthetic access$26302(Lcom/google/protobuf/DescriptorProtos$StreamOptions;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deadline_:D

    return-wide p1
.end method

.method static synthetic access$26402(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->failFast_:Z

    return p1
.end method

.method static synthetic access$26502(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$26600(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34070
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$26602(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$26702(Lcom/google/protobuf/DescriptorProtos$StreamOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34070
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 34084
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 34208
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$25000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/16 v1, 0x100

    const/4 v2, 0x0

    .line 34597
    iput-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 34598
    iput-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 34599
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 34600
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 34601
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 34602
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I

    .line 34603
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I

    .line 34604
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deadline_:D

    .line 34605
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->failFast_:Z

    .line 34606
    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z

    .line 34607
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 34608
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 34797
    #calls: Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->access$25300()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 34800
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34777
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34783
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34747
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34753
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34788
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34794
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34767
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34773
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34757
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34763
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method


# virtual methods
.method public getClientInitialTokens()J
    .locals 2

    .prologue
    .line 34342
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J

    return-wide v0
.end method

.method public getClientLogging()I
    .locals 1

    .prologue
    .line 34464
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I

    return v0
.end method

.method public getDeadline()D
    .locals 2

    .prologue
    .line 34494
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deadline_:D

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 34088
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 34070
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34070
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 34538
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z

    return v0
.end method

.method public getFailFast()Z
    .locals 1

    .prologue
    .line 34509
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->failFast_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$StreamOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34230
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34422
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 34423
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 34424
    check-cast v1, Ljava/lang/String;

    .line 34432
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 34426
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34428
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34429
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34430
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 34432
    goto :goto_0
.end method

.method public getSecurityLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 34440
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 34441
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 34442
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34445
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 34448
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
    .line 34407
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 34673
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedSerializedSize:I

    .line 34674
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 34724
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 34676
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 34677
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1

    .line 34678
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 34681
    :cond_1
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_2

    .line 34682
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 34685
    :cond_2
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_3

    .line 34686
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 34689
    :cond_3
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v8, :cond_4

    .line 34690
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 34693
    :cond_4
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 34694
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getSecurityLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 34697
    :cond_5
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 34698
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 34701
    :cond_6
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    .line 34702
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 34705
    :cond_7
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8

    .line 34706
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deadline_:D

    invoke-static {v8, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 34709
    :cond_8
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9

    .line 34710
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->failFast_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 34713
    :cond_9
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_a

    .line 34714
    const/16 v3, 0x21

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 34717
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 34718
    const/16 v4, 0x3e7

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 34717
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34721
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->extensionsSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 34722
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 34723
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedSerializedSize:I

    move v2, v1

    .line 34724
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getServerInitialTokens()J
    .locals 2

    .prologue
    .line 34357
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J

    return-wide v0
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 34479
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I

    return v0
.end method

.method public getTokenUnit()Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    .locals 1

    .prologue
    .line 34384
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 34582
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 34572
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 34551
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 34593
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 34562
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 34095
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasClientInitialTokens()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 34331
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientLogging()Z
    .locals 2

    .prologue
    .line 34458
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasDeadline()Z
    .locals 2

    .prologue
    .line 34488
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 34525
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasFailFast()Z
    .locals 2

    .prologue
    .line 34503
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasSecurityLabel()Z
    .locals 2

    .prologue
    .line 34416
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasSecurityLevel()Z
    .locals 2

    .prologue
    .line 34397
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasServerInitialTokens()Z
    .locals 2

    .prologue
    .line 34351
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasServerLogging()Z
    .locals 2

    .prologue
    .line 34473
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

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

.method public hasTokenUnit()Z
    .locals 2

    .prologue
    .line 34372
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 34213
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$25100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 34738
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 34739
    const-string v0, "com.google.protobuf.MutableDescriptorProtos$StreamOptions"

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 34741
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34611
    iget-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    .line 34612
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 34625
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 34612
    goto :goto_0

    .line 34614
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getUninterpretedOptionCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 34615
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 34616
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 34617
    goto :goto_0

    .line 34614
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34620
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 34621
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 34622
    goto :goto_0

    .line 34624
    :cond_4
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 34798
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 34807
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 34808
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 34070
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34070
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34070
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 34802
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 34070
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34070
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

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
    .line 34731
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 34630
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getSerializedSize()I

    .line 34632
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 34634
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<Lcom/google/protobuf/DescriptorProtos$StreamOptions;>.ExtensionWriter;"
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_0

    .line 34635
    iget-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 34637
    :cond_0
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_1

    .line 34638
    iget-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J

    invoke-virtual {p1, v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 34640
    :cond_1
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_2

    .line 34641
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 34643
    :cond_2
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_3

    .line 34644
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v2

    invoke-virtual {p1, v6, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 34646
    :cond_3
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 34647
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getSecurityLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34649
    :cond_4
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 34650
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 34652
    :cond_5
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 34653
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 34655
    :cond_6
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 34656
    iget-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deadline_:D

    invoke-virtual {p1, v7, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 34658
    :cond_7
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 34659
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->failFast_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 34661
    :cond_8
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 34662
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 34664
    :cond_9
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 34665
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 34664
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34667
    :cond_a
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 34668
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 34669
    return-void
.end method
