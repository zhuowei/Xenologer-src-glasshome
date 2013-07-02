.class public final Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
.super Lcom/google/protobuf/GeneratedMessage;
.source "LogsAnnotations.java"

# interfaces
.implements Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    }
.end annotation


# static fields
.field public static final LOG_TYPE_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private logType_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sourceType_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1853
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$1;

    invoke-direct {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$1;-><init>()V

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    .line 2013
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2389
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;-><init>(Z)V

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    .line 2390
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    invoke-direct {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->initFields()V

    .line 2391
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

    .line 1797
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1957
    iput-byte v6, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->memoizedIsInitialized:B

    .line 1986
    iput v6, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->memoizedSerializedSize:I

    .line 1798
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->initFields()V

    .line 1799
    const/4 v3, 0x0

    .line 1800
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 1803
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 1804
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1805
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 1806
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 1811
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1813
    const/4 v1, 0x1

    goto :goto_0

    .line 1808
    :sswitch_0
    const/4 v1, 0x1

    .line 1809
    goto :goto_0

    .line 1818
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1819
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->bitField0_:I

    .line 1820
    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->sourceType_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1831
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 1832
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1837
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1838
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->makeExtensionsImmutable()V

    throw v6

    .line 1824
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1825
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->bitField0_:I

    .line 1826
    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->logType_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1833
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 1834
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1837
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1838
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->makeExtensionsImmutable()V

    .line 1840
    return-void

    .line 1806
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V
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
    .line 1768
    invoke-direct {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessage$Builder;,"Lcom/google/protobuf/GeneratedMessage$Builder<*>;"
    const/4 v0, -0x1

    .line 1774
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1957
    iput-byte v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->memoizedIsInitialized:B

    .line 1986
    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->memoizedSerializedSize:I

    .line 1775
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1776
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1768
    invoke-direct {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1777
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1957
    iput-byte v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->memoizedIsInitialized:B

    .line 1986
    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->memoizedSerializedSize:I

    .line 1777
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 1768
    sget-boolean v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->sourceType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1768
    iput-object p1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->sourceType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->logType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1768
    iput-object p1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->logType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1768
    iput p1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1

    .prologue
    .line 1781
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1843
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1954
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->sourceType_:Ljava/lang/Object;

    .line 1955
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->logType_:Ljava/lang/Object;

    .line 1956
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1

    .prologue
    .line 2075
    #calls: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->create()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->access$1400()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2078
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->newBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2055
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2061
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2025
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2031
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2066
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2072
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2045
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2051
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2035
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2041
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1768
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1768
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1

    .prologue
    .line 1785
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method

.method public getLogType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1923
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->logType_:Ljava/lang/Object;

    .line 1924
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1925
    check-cast v1, Ljava/lang/String;

    .line 1933
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1927
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1929
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1930
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1931
    iput-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->logType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1933
    goto :goto_0
.end method

.method public getLogTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1941
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->logType_:Ljava/lang/Object;

    .line 1942
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1943
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1946
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->logType_:Ljava/lang/Object;

    .line 1949
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1865
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1988
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->memoizedSerializedSize:I

    .line 1989
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2002
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1991
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1992
    iget v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1993
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getSourceTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1996
    :cond_1
    iget v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1997
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getLogTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2000
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2001
    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->memoizedSerializedSize:I

    move v1, v0

    .line 2002
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1881
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->sourceType_:Ljava/lang/Object;

    .line 1882
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1883
    check-cast v1, Ljava/lang/String;

    .line 1891
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1885
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1887
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1888
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1889
    iput-object v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->sourceType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1891
    goto :goto_0
.end method

.method public getSourceTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1899
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->sourceType_:Ljava/lang/Object;

    .line 1900
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1901
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1904
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->sourceType_:Ljava/lang/Object;

    .line 1907
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

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasLogType()Z
    .locals 2

    .prologue
    .line 1917
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->bitField0_:I

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

.method public hasSourceType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1875
    iget v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 1848
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    const-class v2, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 2016
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 2017
    const-string v0, "com.google.protos.logs_proto.MutableLogsAnnotations$MessageDetails$Type"

    invoke-static {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2019
    :cond_0
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1959
    iget-byte v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->memoizedIsInitialized:B

    .line 1960
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 1971
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1960
    goto :goto_0

    .line 1962
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->hasSourceType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1963
    iput-byte v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->memoizedIsInitialized:B

    move v1, v2

    .line 1964
    goto :goto_0

    .line 1966
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->hasLogType()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1967
    iput-byte v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->memoizedIsInitialized:B

    move v1, v2

    .line 1968
    goto :goto_0

    .line 1970
    :cond_3
    iput-byte v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1768
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->newBuilderForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1768
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1768
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->newBuilderForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1

    .prologue
    .line 2076
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->newBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 2085
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V

    .line 2086
    .local v0, builder:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1768
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->toBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1768
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->toBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;
    .locals 1

    .prologue
    .line 2080
    invoke-static {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->newBuilder(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type$Builder;

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
    .line 2009
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1976
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getSerializedSize()I

    .line 1977
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1978
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getSourceTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1980
    :cond_0
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1981
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getLogTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1983
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1984
    return-void
.end method
