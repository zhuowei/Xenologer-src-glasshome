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

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x21

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

.field private deprecated_:Z

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
    .line 32943
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 33414
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 34439
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 34440
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->initFields()V

    .line 34441
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

    const/16 v9, 0x100

    .line 32836
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 33302
    iput-byte v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    .line 33358
    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedSerializedSize:I

    .line 32837
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->initFields()V

    .line 32838
    const/4 v2, 0x0

    .line 32839
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 32842
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 32843
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 32844
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 32845
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 32850
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 32852
    const/4 v0, 0x1

    goto :goto_0

    .line 32847
    :sswitch_0
    const/4 v0, 0x1

    .line 32848
    goto :goto_0

    .line 32857
    :sswitch_1
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 32858
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 32918
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 32919
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32924
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    and-int/lit16 v8, v2, 0x100

    if-ne v8, v9, :cond_1

    .line 32925
    iget-object v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 32927
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 32928
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->makeExtensionsImmutable()V

    throw v7

    .line 32862
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 32863
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 32920
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 32921
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

    .line 32867
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 32868
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    move-result-object v6

    .line 32869
    .local v6, value:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    if-nez v6, :cond_2

    .line 32870
    const/4 v7, 0x3

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 32872
    :cond_2
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 32873
    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    goto :goto_0

    .line 32878
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 32879
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v6

    .line 32880
    .local v6, value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    if-nez v6, :cond_3

    .line 32881
    const/4 v7, 0x4

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 32883
    :cond_3
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 32884
    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    goto/16 :goto_0

    .line 32889
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    :sswitch_5
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 32890
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 32894
    :sswitch_6
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 32895
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I

    goto/16 :goto_0

    .line 32899
    :sswitch_7
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 32900
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I

    goto/16 :goto_0

    .line 32904
    :sswitch_8
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    .line 32905
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 32909
    :sswitch_9
    and-int/lit16 v7, v2, 0x100

    if-eq v7, v9, :cond_4

    .line 32910
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 32911
    or-int/lit16 v2, v2, 0x100

    .line 32913
    :cond_4
    iget-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v8, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 32924
    .end local v4           #tag:I
    :cond_5
    and-int/lit16 v7, v2, 0x100

    if-ne v7, v9, :cond_6

    .line 32925
    iget-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 32927
    :cond_6
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 32928
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->makeExtensionsImmutable()V

    .line 32930
    return-void

    .line 32845
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
        0x108 -> :sswitch_8
        0x1f3a -> :sswitch_9
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
    .line 32806
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

    .line 32813
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    .line 33302
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    .line 33358
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedSerializedSize:I

    .line 32814
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 32815
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32806
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 32816
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 33302
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    .line 33358
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedSerializedSize:I

    .line 32816
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$24502(Lcom/google/protobuf/DescriptorProtos$StreamOptions;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32806
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J

    return-wide p1
.end method

.method static synthetic access$24602(Lcom/google/protobuf/DescriptorProtos$StreamOptions;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32806
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J

    return-wide p1
.end method

.method static synthetic access$24702(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32806
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    return-object p1
.end method

.method static synthetic access$24802(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32806
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    return-object p1
.end method

.method static synthetic access$24900(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32806
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$24902(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32806
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$25002(Lcom/google/protobuf/DescriptorProtos$StreamOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32806
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I

    return p1
.end method

.method static synthetic access$25102(Lcom/google/protobuf/DescriptorProtos$StreamOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32806
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I

    return p1
.end method

.method static synthetic access$25202(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32806
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$25300(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32806
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$25302(Lcom/google/protobuf/DescriptorProtos$StreamOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32806
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$25402(Lcom/google/protobuf/DescriptorProtos$StreamOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32806
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 32820
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 32933
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$23900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0x100

    .line 33292
    iput-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J

    .line 33293
    iput-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J

    .line 33294
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    .line 33295
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    .line 33296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 33297
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I

    .line 33298
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I

    .line 33299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z

    .line 33300
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    .line 33301
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 33476
    #calls: Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->access$24200()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 33479
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
    .line 33456
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
    .line 33462
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
    .line 33426
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
    .line 33432
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
    .line 33467
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
    .line 33473
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
    .line 33446
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
    .line 33452
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
    .line 33436
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
    .line 33442
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
    .line 33067
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J

    return-wide v0
.end method

.method public getClientLogging()I
    .locals 1

    .prologue
    .line 33189
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 32824
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 32806
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32806
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 33233
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z

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
    .line 32955
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSecurityLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33147
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 33148
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 33149
    check-cast v1, Ljava/lang/String;

    .line 33157
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 33151
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 33153
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33154
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33155
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 33157
    goto :goto_0
.end method

.method public getSecurityLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 33165
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 33166
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 33167
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33170
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLabel_:Ljava/lang/Object;

    .line 33173
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
    .line 33132
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 33360
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedSerializedSize:I

    .line 33361
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 33403
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 33363
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 33364
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1

    .line 33365
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 33368
    :cond_1
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_2

    .line 33369
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 33372
    :cond_2
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_3

    .line 33373
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 33376
    :cond_3
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 33377
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 33380
    :cond_4
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 33381
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getSecurityLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 33384
    :cond_5
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 33385
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 33388
    :cond_6
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    .line 33389
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 33392
    :cond_7
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8

    .line 33393
    const/16 v3, 0x21

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 33396
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 33397
    const/16 v4, 0x3e7

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 33396
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33400
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->extensionsSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 33401
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 33402
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedSerializedSize:I

    move v2, v1

    .line 33403
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getServerInitialTokens()J
    .locals 2

    .prologue
    .line 33082
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J

    return-wide v0
.end method

.method public getServerLogging()I
    .locals 1

    .prologue
    .line 33204
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I

    return v0
.end method

.method public getTokenUnit()Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;
    .locals 1

    .prologue
    .line 33109
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 33277
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 33267
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
    .line 33246
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 33288
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
    .line 33257
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 32831
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasClientInitialTokens()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 33056
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
    .line 33183
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

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 33220
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

.method public hasSecurityLabel()Z
    .locals 2

    .prologue
    .line 33141
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
    .line 33122
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
    .line 33076
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
    .line 33198
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
    .line 33097
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
    .line 32938
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$24000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

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
    .line 33417
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 33418
    const-string v0, "com.google.protobuf.MutableDescriptorProtos$StreamOptions"

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 33420
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33304
    iget-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    .line 33305
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 33318
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 33305
    goto :goto_0

    .line 33307
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getUninterpretedOptionCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 33308
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 33309
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 33310
    goto :goto_0

    .line 33307
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33313
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 33314
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 33315
    goto :goto_0

    .line 33317
    :cond_4
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 33477
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 33486
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 33487
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32806
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32806
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32806
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 33481
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32806
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32806
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
    .line 33410
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 33323
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getSerializedSize()I

    .line 33325
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 33327
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<Lcom/google/protobuf/DescriptorProtos$StreamOptions;>.ExtensionWriter;"
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_0

    .line 33328
    iget-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientInitialTokens_:J

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 33330
    :cond_0
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_1

    .line 33331
    iget-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverInitialTokens_:J

    invoke-virtual {p1, v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 33333
    :cond_1
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_2

    .line 33334
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->tokenUnit_:Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$TokenUnit;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 33336
    :cond_2
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 33337
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->securityLevel_:Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$SecurityLevel;->getNumber()I

    move-result v2

    invoke-virtual {p1, v6, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 33339
    :cond_3
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 33340
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getSecurityLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33342
    :cond_4
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 33343
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->clientLogging_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33345
    :cond_5
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 33346
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->serverLogging_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33348
    :cond_6
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 33349
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->deprecated_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 33351
    :cond_7
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 33352
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 33351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33354
    :cond_8
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 33355
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 33356
    return-void
.end method
