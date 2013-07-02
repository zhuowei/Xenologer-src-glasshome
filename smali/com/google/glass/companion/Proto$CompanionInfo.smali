.class public final Lcom/google/glass/companion/Proto$CompanionInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$CompanionInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompanionInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$CompanionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_LOG_FIELD_NUMBER:I = 0x5

.field public static final REQUEST_NETWORK_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_ANDROID_VERSION_FIELD_NUMBER:I = 0x4

.field public static final RESPONSE_IS_NETWORK_OK_FIELD_NUMBER:I = 0x3

.field public static final RESPONSE_LOG_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestLog_:Z

.field private requestNetwork_:Z

.field private responseAndroidVersion_:I

.field private responseIsNetworkOk_:Z

.field private responseLog_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11073
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 11338
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 11882
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 11883
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->initFields()V

    .line 11884
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 11001
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11258
    iput-byte v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    .line 11295
    iput v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    .line 11002
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->initFields()V

    .line 11003
    const/4 v3, 0x0

    .line 11004
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v6

    .line 11006
    .local v6, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    .line 11010
    .local v5, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v1, 0x0

    .line 11011
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 11012
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 11013
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 11018
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/glass/companion/Proto$CompanionInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 11020
    const/4 v1, 0x1

    goto :goto_0

    .line 11015
    :sswitch_0
    const/4 v1, 0x1

    .line 11016
    goto :goto_0

    .line 11025
    :sswitch_1
    iget v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 11026
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 11057
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 11058
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11063
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    .line 11064
    :try_start_2
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 11068
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 11070
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->makeExtensionsImmutable()V

    throw v7

    .line 11030
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_3
    iget v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 11031
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 11059
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 11060
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11035
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_5
    iget v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 11036
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    goto :goto_0

    .line 11040
    :sswitch_4
    iget v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 11041
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    goto :goto_0

    .line 11045
    :sswitch_5
    iget v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 11046
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    goto :goto_0

    .line 11050
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11051
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 11052
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 11064
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :cond_1
    :try_start_6
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 11068
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 11070
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->makeExtensionsImmutable()V

    .line 11072
    return-void

    .line 11065
    :catch_2
    move-exception v7

    .line 11068
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v7

    .line 11065
    :catch_3
    move-exception v8

    .line 11068
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v7

    .line 11013
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/glass/companion/Proto$1;)V
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
    .line 10977
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10983
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11258
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    .line 11295
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    .line 10984
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 10985
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10977
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10986
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11258
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    .line 11295
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    .line 10986
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$11002(Lcom/google/glass/companion/Proto$CompanionInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10977
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    return-wide p1
.end method

.method static synthetic access$11102(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10977
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    return p1
.end method

.method static synthetic access$11202(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10977
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    return p1
.end method

.method static synthetic access$11302(Lcom/google/glass/companion/Proto$CompanionInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10977
    iput p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    return p1
.end method

.method static synthetic access$11402(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10977
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    return p1
.end method

.method static synthetic access$11500(Lcom/google/glass/companion/Proto$CompanionInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10977
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11502(Lcom/google/glass/companion/Proto$CompanionInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10977
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11602(Lcom/google/glass/companion/Proto$CompanionInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10977
    iput p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    return p1
.end method

.method static synthetic access$11700(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10977
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 10990
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11251
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    .line 11252
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 11253
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 11254
    iput v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 11255
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 11256
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    .line 11257
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 11400
    #calls: Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->create()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->access$10800()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 11403
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11380
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11386
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11350
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11356
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11391
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11397
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11370
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11376
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11360
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11366
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 10994
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10977
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 11101
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$CompanionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11085
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRequestLog()Z
    .locals 1

    .prologue
    .line 11193
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    return v0
.end method

.method public getRequestNetwork()Z
    .locals 1

    .prologue
    .line 11124
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    return v0
.end method

.method public getResponseAndroidVersion()I
    .locals 1

    .prologue
    .line 11170
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    return v0
.end method

.method public getResponseIsNetworkOk()Z
    .locals 1

    .prologue
    .line 11147
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    return v0
.end method

.method public getResponseLog()Ljava/lang/String;
    .locals 4

    .prologue
    .line 11216
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    .line 11217
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 11218
    check-cast v1, Ljava/lang/String;

    .line 11226
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 11220
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11222
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11223
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11224
    iput-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 11226
    goto :goto_0
.end method

.method public getResponseLogBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 11238
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    .line 11239
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11240
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11243
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    .line 11246
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

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 11297
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    .line 11298
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 11327
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 11300
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 11301
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 11302
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11305
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 11306
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11309
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 11310
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11313
    :cond_3
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 11314
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11317
    :cond_4
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 11318
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11321
    :cond_5
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 11322
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11325
    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 11326
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 11327
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11095
    iget v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestLog()Z
    .locals 2

    .prologue
    .line 11183
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

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

.method public hasRequestNetwork()Z
    .locals 2

    .prologue
    .line 11114
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

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

.method public hasResponseAndroidVersion()Z
    .locals 2

    .prologue
    .line 11160
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

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

.method public hasResponseIsNetworkOk()Z
    .locals 2

    .prologue
    .line 11137
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

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

.method public hasResponseLog()Z
    .locals 2

    .prologue
    .line 11206
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

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

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 11341
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 11342
    const-string v0, "com.google.glass.companion.MutableProto$CompanionInfo"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 11344
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 11260
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    .line 11261
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 11268
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 11261
    goto :goto_0

    .line 11263
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 11264
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    move v1, v2

    .line 11265
    goto :goto_0

    .line 11267
    :cond_2
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 11401
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10977
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilderForType()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 11405
    invoke-static {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilder(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10977
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->toBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

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
    .line 11334
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11273
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getSerializedSize()I

    .line 11274
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 11275
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11277
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 11278
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11280
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 11281
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11283
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 11284
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11286
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 11287
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11289
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 11290
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11292
    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 11293
    return-void
.end method
