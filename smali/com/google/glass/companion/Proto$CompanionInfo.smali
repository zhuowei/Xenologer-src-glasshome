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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7631
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 7894
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 8434
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 8435
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->initFields()V

    .line 8436
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 7572
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7816
    iput-byte v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    .line 7852
    iput v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    .line 7573
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->initFields()V

    .line 7574
    const/4 v2, 0x0

    .line 7576
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 7577
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 7578
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 7579
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 7584
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7586
    const/4 v0, 0x1

    goto :goto_0

    .line 7581
    :sswitch_0
    const/4 v0, 0x1

    .line 7582
    goto :goto_0

    .line 7591
    :sswitch_1
    iget v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 7592
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 7622
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 7623
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7628
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->makeExtensionsImmutable()V

    throw v4

    .line 7596
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 7597
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 7624
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 7625
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7601
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 7602
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    goto :goto_0

    .line 7606
    :sswitch_4
    iget v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 7607
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    goto :goto_0

    .line 7611
    :sswitch_5
    iget v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 7612
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    goto :goto_0

    .line 7616
    :sswitch_6
    iget v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 7617
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 7628
    .end local v3           #tag:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->makeExtensionsImmutable()V

    .line 7630
    return-void

    .line 7579
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
    .line 7549
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7555
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7816
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    .line 7852
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    .line 7557
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7549
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7558
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7816
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    .line 7852
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    .line 7558
    return-void
.end method

.method static synthetic access$6402(Lcom/google/glass/companion/Proto$CompanionInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7549
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    return-wide p1
.end method

.method static synthetic access$6502(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7549
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    return p1
.end method

.method static synthetic access$6602(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7549
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    return p1
.end method

.method static synthetic access$6702(Lcom/google/glass/companion/Proto$CompanionInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7549
    iput p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    return p1
.end method

.method static synthetic access$6802(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7549
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/google/glass/companion/Proto$CompanionInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7549
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/google/glass/companion/Proto$CompanionInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7549
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/google/glass/companion/Proto$CompanionInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7549
    iput p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 7562
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7809
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    .line 7810
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 7811
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 7812
    iput v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 7813
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 7814
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    .line 7815
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 7956
    #calls: Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->create()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->access$6200()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 7959
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
    .line 7936
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
    .line 7942
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
    .line 7906
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
    .line 7912
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
    .line 7947
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
    .line 7953
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
    .line 7926
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
    .line 7932
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
    .line 7916
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
    .line 7922
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
    .line 7566
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7549
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 7659
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
    .line 7643
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRequestLog()Z
    .locals 1

    .prologue
    .line 7751
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    return v0
.end method

.method public getRequestNetwork()Z
    .locals 1

    .prologue
    .line 7682
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    return v0
.end method

.method public getResponseAndroidVersion()I
    .locals 1

    .prologue
    .line 7728
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    return v0
.end method

.method public getResponseIsNetworkOk()Z
    .locals 1

    .prologue
    .line 7705
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    return v0
.end method

.method public getResponseLog()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7774
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    .line 7775
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7776
    check-cast v1, Ljava/lang/String;

    .line 7784
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 7778
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7780
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7781
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7782
    iput-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7784
    goto :goto_0
.end method

.method public getResponseLogBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7796
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    .line 7797
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7798
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7801
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    .line 7804
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

    .line 7854
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    .line 7855
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 7883
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 7857
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 7858
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 7859
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7862
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 7863
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7866
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 7867
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7870
    :cond_3
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 7871
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7874
    :cond_4
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 7875
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7878
    :cond_5
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 7879
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7882
    :cond_6
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 7883
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7653
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
    .line 7741
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
    .line 7672
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
    .line 7718
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
    .line 7695
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
    .line 7764
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
    .line 7897
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 7898
    const-string v0, "com.google.glass.companion.MutableProto$CompanionInfo"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 7900
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7818
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    .line 7819
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 7826
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 7819
    goto :goto_0

    .line 7821
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7822
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    move v1, v2

    .line 7823
    goto :goto_0

    .line 7825
    :cond_2
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 7957
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7549
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilderForType()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 7961
    invoke-static {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilder(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7549
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
    .line 7890
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

    .line 7831
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getSerializedSize()I

    .line 7832
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 7833
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7835
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 7836
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7838
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 7839
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7841
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 7842
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7844
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 7845
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7847
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 7848
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7850
    :cond_5
    return-void
.end method
