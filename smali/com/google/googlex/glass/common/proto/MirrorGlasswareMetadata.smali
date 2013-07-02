.class public final Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MirrorGlasswareMetadata.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECT_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private projectId_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 206
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 510
    new-instance v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->defaultInstance:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 511
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->defaultInstance:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->initFields()V

    .line 512
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

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 165
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->memoizedIsInitialized:B

    .line 183
    iput v6, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->initFields()V

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
    if-nez v1, :cond_1

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 51
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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
    iget v6, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->bitField0_:I

    .line 65
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->projectId_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 70
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 71
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 77
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->makeExtensionsImmutable()V

    throw v6

    .line 76
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 77
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->makeExtensionsImmutable()V

    .line 79
    return-void

    .line 72
    :catch_1
    move-exception v2

    .line 73
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 165
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->memoizedIsInitialized:B

    .line 183
    iput v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 165
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->memoizedIsInitialized:B

    .line 183
    iput v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->projectId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->projectId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->defaultInstance:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_MirrorGlasswareMetadata_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->projectId_:Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 268
    #calls: Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->create()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->access$100()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 271
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->newBuilder()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 224
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 228
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 234
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->defaultInstance:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->projectId_:Ljava/lang/Object;

    .line 129
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 130
    check-cast v1, Ljava/lang/String;

    .line 138
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 132
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 134
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->projectId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 138
    goto :goto_0
.end method

.method public getProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->projectId_:Ljava/lang/Object;

    .line 151
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 152
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 155
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->projectId_:Ljava/lang/Object;

    .line 158
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
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 185
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->memoizedSerializedSize:I

    .line 186
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 195
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 188
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 189
    iget v2, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getProjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 194
    iput v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->memoizedSerializedSize:I

    move v1, v0

    .line 195
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasProjectId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 118
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->bitField0_:I

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
    .line 87
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_MirrorGlasswareMetadata_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    const-class v2, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 210
    const-string v0, "com.google.googlex.glass.common.proto.MutableGlassware$MirrorGlasswareMetadata"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 212
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 167
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->memoizedIsInitialized:B

    .line 168
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 171
    :goto_0
    return v1

    .line 168
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 170
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->newBuilder()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 278
    new-instance v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$1;)V

    .line 279
    .local v0, builder:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->newBuilderForType()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->newBuilderForType()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 273
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->newBuilder(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->toBuilder()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->toBuilder()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

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
    .line 202
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getSerializedSize()I

    .line 177
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getProjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 181
    return-void
.end method
