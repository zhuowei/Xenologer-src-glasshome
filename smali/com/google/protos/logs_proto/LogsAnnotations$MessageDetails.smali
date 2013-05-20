.class public final Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
.super Lcom/google/protobuf/GeneratedMessage;
.source "LogsAnnotations.java"

# interfaces
.implements Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/logs_proto/LogsAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;,
        Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;,
        Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;
    }
.end annotation


# static fields
.field public static final MAY_APPEAR_IN_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private mayAppearIn_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1713
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$1;

    invoke-direct {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$1;-><init>()V

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    .line 2498
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 3067
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;-><init>(Z)V

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    .line 3068
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    invoke-direct {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->initFields()V

    .line 3069
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
    const/4 v5, -0x1

    const/4 v7, 0x1

    .line 1658
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2451
    iput-byte v5, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->memoizedIsInitialized:B

    .line 2475
    iput v5, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->memoizedSerializedSize:I

    .line 1659
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->initFields()V

    .line 1660
    const/4 v2, 0x0

    .line 1661
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 1664
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 1665
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1666
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1667
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1672
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1674
    const/4 v0, 0x1

    goto :goto_0

    .line 1669
    :sswitch_0
    const/4 v0, 0x1

    .line 1670
    goto :goto_0

    .line 1679
    :sswitch_1
    and-int/lit8 v5, v2, 0x1

    if-eq v5, v7, :cond_1

    .line 1680
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    .line 1681
    or-int/lit8 v2, v2, 0x1

    .line 1683
    :cond_1
    iget-object v5, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    sget-object v6, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1688
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 1689
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1694
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v7, :cond_2

    .line 1695
    iget-object v6, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    .line 1697
    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1698
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->makeExtensionsImmutable()V

    throw v5

    .line 1694
    :cond_3
    and-int/lit8 v5, v2, 0x1

    if-ne v5, v7, :cond_4

    .line 1695
    iget-object v5, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    .line 1697
    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1698
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->makeExtensionsImmutable()V

    .line 1700
    return-void

    .line 1690
    :catch_1
    move-exception v1

    .line 1691
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1667
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 1629
    invoke-direct {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1635
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2451
    iput-byte v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->memoizedIsInitialized:B

    .line 2475
    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->memoizedSerializedSize:I

    .line 1636
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1637
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1629
    invoke-direct {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1638
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2451
    iput-byte v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->memoizedIsInitialized:B

    .line 2475
    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->memoizedSerializedSize:I

    .line 1638
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 1629
    sget-boolean v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 1629
    sget-boolean v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1

    .prologue
    .line 1642
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1703
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2449
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    .line 2450
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1

    .prologue
    .line 2560
    #calls: Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->create()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->access$2100()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2563
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->newBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2540
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2546
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2510
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2516
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2551
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2557
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2530
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2536
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2520
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2526
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;
    .locals 1

    .prologue
    .line 1646
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    return-object v0
.end method

.method public getMayAppearIn(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;
    .locals 1
    .parameter "index"

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    return-object v0
.end method

.method public getMayAppearInCount()I
    .locals 1

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMayAppearInList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    return-object v0
.end method

.method public getMayAppearInOrBuilder(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;

    return-object v0
.end method

.method public getMayAppearInOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$TypeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1725
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2477
    iget v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->memoizedSerializedSize:I

    .line 2478
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 2487
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 2480
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 2481
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2482
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2481
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2485
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 2486
    iput v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->memoizedSerializedSize:I

    move v2, v1

    .line 2487
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 1708
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;

    const-class v2, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 2501
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 2502
    const-string v0, "com.google.protos.logs_proto.MutableLogsAnnotations$MessageDetails"

    invoke-static {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2504
    :cond_0
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2453
    iget-byte v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->memoizedIsInitialized:B

    .line 2454
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 2463
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 2454
    goto :goto_0

    .line 2456
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getMayAppearInCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 2457
    invoke-virtual {p0, v0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getMayAppearIn(I)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Type;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2458
    iput-byte v3, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->memoizedIsInitialized:B

    move v2, v3

    .line 2459
    goto :goto_0

    .line 2456
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2462
    :cond_3
    iput-byte v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->newBuilderForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1629
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->newBuilderForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1

    .prologue
    .line 2561
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->newBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 2570
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V

    .line 2571
    .local v0, builder:Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->toBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->toBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;
    .locals 1

    .prologue
    .line 2565
    invoke-static {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->newBuilder(Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails$Builder;

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
    .line 2494
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
    .line 2468
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getSerializedSize()I

    .line 2469
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2470
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->mayAppearIn_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2472
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$MessageDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2473
    return-void
.end method
