.class public final Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ApkGlasswareMetadata.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;,
        Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;,
        Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;
    }
.end annotation


# static fields
.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private packageName_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private version_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 955
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1613
    new-instance v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->defaultInstance:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 1614
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->defaultInstance:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->initFields()V

    .line 1615
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
    const/4 v6, -0x1

    const/4 v8, 0x2

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 907
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->memoizedIsInitialized:B

    .line 928
    iput v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->initFields()V

    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 48
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 49
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 51
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 58
    const/4 v1, 0x1

    goto :goto_0

    .line 53
    :sswitch_0
    const/4 v1, 0x1

    .line 54
    goto :goto_0

    .line 63
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 64
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->bitField0_:I

    .line 65
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->packageName_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 78
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 79
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    and-int/lit8 v7, v3, 0x2

    if-ne v7, v8, :cond_1

    .line 85
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    .line 87
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 88
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->makeExtensionsImmutable()V

    throw v6

    .line 69
    .restart local v4       #tag:I
    :sswitch_2
    and-int/lit8 v6, v3, 0x2

    if-eq v6, v8, :cond_2

    .line 70
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    .line 71
    or-int/lit8 v3, v3, 0x2

    .line 73
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    sget-object v7, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 80
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 81
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

    .line 84
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    and-int/lit8 v6, v3, 0x2

    if-ne v6, v8, :cond_4

    .line 85
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    .line 87
    :cond_4
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 88
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->makeExtensionsImmutable()V

    .line 90
    return-void

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$1;)V
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
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 19
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 907
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->memoizedIsInitialized:B

    .line 928
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 907
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->memoizedIsInitialized:B

    .line 928
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->packageName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->packageName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->bitField0_:I

    return p1
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->defaultInstance:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_ApkGlasswareMetadata_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 904
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->packageName_:Ljava/lang/Object;

    .line 905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    .line 906
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 1017
    #calls: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->create()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->access$900()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1020
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->newBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 997
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1003
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 967
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 973
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1008
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1014
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 987
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 993
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 977
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 983
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->defaultInstance:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 814
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->packageName_:Ljava/lang/Object;

    .line 815
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 816
    check-cast v1, Ljava/lang/String;

    .line 824
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 818
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 820
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 822
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->packageName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 824
    goto :goto_0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 836
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->packageName_:Ljava/lang/Object;

    .line 837
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 838
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 841
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->packageName_:Ljava/lang/Object;

    .line 844
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
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 930
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->memoizedSerializedSize:I

    .line 931
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 944
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 933
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 934
    iget v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 935
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getPackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 938
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 939
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 938
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 942
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 943
    iput v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->memoizedSerializedSize:I

    move v2, v1

    .line 944
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion(I)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1
    .parameter "index"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method

.method public getVersionCount()I
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVersionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    return-object v0
.end method

.method public getVersionOrBuilder(I)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;

    return-object v0
.end method

.method public getVersionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    return-object v0
.end method

.method public hasPackageName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 804
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->bitField0_:I

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
    .line 98
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_ApkGlasswareMetadata_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    const-class v2, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 958
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 959
    const-string v0, "com.google.googlex.glass.common.proto.MutableGlassware$ApkGlasswareMetadata"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 961
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 909
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->memoizedIsInitialized:B

    .line 910
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 913
    :goto_0
    return v1

    .line 910
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 912
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 1018
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->newBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 1027
    new-instance v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$1;)V

    .line 1028
    .local v0, builder:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 1022
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->newBuilder(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->toBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->toBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

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
    .line 951
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
    const/4 v2, 0x1

    .line 918
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getSerializedSize()I

    .line 919
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getPackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 922
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 923
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 922
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 925
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 926
    return-void
.end method
