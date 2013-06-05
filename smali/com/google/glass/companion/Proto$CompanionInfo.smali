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
    .line 7730
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 7995
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 8536
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 8537
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->initFields()V

    .line 8538
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 7659
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7915
    iput-byte v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    .line 7952
    iput v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    .line 7660
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->initFields()V

    .line 7661
    const/4 v2, 0x0

    .line 7662
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v5

    .line 7664
    .local v5, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v4

    .line 7668
    .local v4, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 7669
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 7670
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 7671
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 7676
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 7678
    const/4 v0, 0x1

    goto :goto_0

    .line 7673
    :sswitch_0
    const/4 v0, 0x1

    .line 7674
    goto :goto_0

    .line 7683
    :sswitch_1
    iget v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 7684
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 7714
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 7715
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7720
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    .line 7721
    :try_start_2
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 7725
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 7727
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->makeExtensionsImmutable()V

    throw v6

    .line 7688
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_3
    iget v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 7689
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 7716
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 7717
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7693
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_5
    iget v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 7694
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    goto :goto_0

    .line 7698
    :sswitch_4
    iget v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 7699
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    goto :goto_0

    .line 7703
    :sswitch_5
    iget v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 7704
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    goto :goto_0

    .line 7708
    :sswitch_6
    iget v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    .line 7709
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 7721
    .end local v3           #tag:I
    :cond_1
    :try_start_6
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 7725
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 7727
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->makeExtensionsImmutable()V

    .line 7729
    return-void

    .line 7722
    :catch_2
    move-exception v6

    .line 7725
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v6

    .line 7722
    :catch_3
    move-exception v7

    .line 7725
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v6

    .line 7671
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
    .line 7635
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7641
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7915
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    .line 7952
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    .line 7642
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 7643
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7635
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7644
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7915
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    .line 7952
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    .line 7644
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$6902(Lcom/google/glass/companion/Proto$CompanionInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7635
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    return-wide p1
.end method

.method static synthetic access$7002(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7635
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    return p1
.end method

.method static synthetic access$7102(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7635
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    return p1
.end method

.method static synthetic access$7202(Lcom/google/glass/companion/Proto$CompanionInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7635
    iput p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    return p1
.end method

.method static synthetic access$7302(Lcom/google/glass/companion/Proto$CompanionInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7635
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/google/glass/companion/Proto$CompanionInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7635
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/google/glass/companion/Proto$CompanionInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7635
    iput-object p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/google/glass/companion/Proto$CompanionInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7635
    iput p1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    return p1
.end method

.method static synthetic access$7600(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7635
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 7648
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7908
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    .line 7909
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    .line 7910
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    .line 7911
    iput v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    .line 7912
    iput-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    .line 7913
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    .line 7914
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8057
    #calls: Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->create()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo$Builder;->access$6700()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8060
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
    .line 8037
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
    .line 8043
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
    .line 8007
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
    .line 8013
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
    .line 8048
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
    .line 8054
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
    .line 8027
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
    .line 8033
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
    .line 8017
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
    .line 8023
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
    .line 7652
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->defaultInstance:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7635
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 7758
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
    .line 7742
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRequestLog()Z
    .locals 1

    .prologue
    .line 7850
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    return v0
.end method

.method public getRequestNetwork()Z
    .locals 1

    .prologue
    .line 7781
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    return v0
.end method

.method public getResponseAndroidVersion()I
    .locals 1

    .prologue
    .line 7827
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    return v0
.end method

.method public getResponseIsNetworkOk()Z
    .locals 1

    .prologue
    .line 7804
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    return v0
.end method

.method public getResponseLog()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7873
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    .line 7874
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7875
    check-cast v1, Ljava/lang/String;

    .line 7883
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 7877
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7879
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7880
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7881
    iput-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 7883
    goto :goto_0
.end method

.method public getResponseLogBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7895
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    .line 7896
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7897
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7900
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog_:Ljava/lang/Object;

    .line 7903
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

    .line 7954
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    .line 7955
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 7984
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 7957
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 7958
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 7959
    iget-wide v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7962
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 7963
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7966
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 7967
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7970
    :cond_3
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 7971
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7974
    :cond_4
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 7975
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7978
    :cond_5
    iget v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 7979
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7982
    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 7983
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 7984
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7752
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
    .line 7840
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
    .line 7771
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
    .line 7817
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
    .line 7794
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
    .line 7863
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
    .line 7998
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 7999
    const-string v0, "com.google.glass.companion.MutableProto$CompanionInfo"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 8001
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7917
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    .line 7918
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 7925
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 7918
    goto :goto_0

    .line 7920
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7921
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    move v1, v2

    .line 7922
    goto :goto_0

    .line 7924
    :cond_2
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-static {}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7635
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilderForType()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
    .locals 1

    .prologue
    .line 8062
    invoke-static {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->newBuilder(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7635
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
    .line 7991
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

    .line 7930
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getSerializedSize()I

    .line 7931
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 7932
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7934
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 7935
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7937
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 7938
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7940
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 7941
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7943
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 7944
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7946
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 7947
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7949
    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 7950
    return-void
.end method
