.class public final Lcom/google/googlex/glass/common/proto/ResourceRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ResourceRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ResourceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;,
        Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    }
.end annotation


# static fields
.field public static final FINGERPRINT_FIELD_NUMBER:I = 0x3

.field public static final LANGUAGE_CODE_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ResourceRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/ResourceRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private fingerprint_:J

.field private languageCode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 507
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1037
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ResourceRequest;

    .line 1038
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ResourceRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->initFields()V

    .line 1039
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
    const/4 v8, -0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 445
    iput-byte v8, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->memoizedIsInitialized:B

    .line 472
    iput v8, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->initFields()V

    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 48
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 49
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 51
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

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
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 64
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->valueOf(I)Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    move-result-object v7

    .line 65
    .local v7, value:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    if-nez v7, :cond_1

    .line 66
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 92
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    :catch_0
    move-exception v2

    .line 93
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 99
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->makeExtensionsImmutable()V

    throw v8

    .line 68
    .restart local v4       #rawValue:I
    .restart local v5       #tag:I
    .restart local v7       #value:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    :cond_1
    :try_start_2
    iget v8, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    .line 69
    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 94
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    :catch_1
    move-exception v2

    .line 95
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

    .line 74
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 75
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    .line 76
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 80
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_3
    iget v8, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    .line 81
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->fingerprint_:J

    goto :goto_0

    .line 85
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 86
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    .line 87
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->languageCode_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 98
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :cond_2
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 99
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->makeExtensionsImmutable()V

    .line 101
    return-void

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/ResourceRequest$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ResourceRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 445
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->memoizedIsInitialized:B

    .line 472
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ResourceRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 445
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->memoizedIsInitialized:B

    .line 472
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/ResourceRequest;Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/ResourceRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/ResourceRequest;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->fingerprint_:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->languageCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/ResourceRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->languageCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/ResourceRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ResourceRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/google/googlex/glass/common/proto/Resource;->internal_static_googlex_glass_common_proto_ResourceRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 440
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 441
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->name_:Ljava/lang/Object;

    .line 442
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->fingerprint_:J

    .line 443
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->languageCode_:Ljava/lang/Object;

    .line 444
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1

    .prologue
    .line 569
    #calls: Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->access$100()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 572
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 519
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 525
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 529
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 535
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResourceRequest;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ResourceRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprint()J
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->fingerprint_:J

    return-wide v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 404
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->languageCode_:Ljava/lang/Object;

    .line 405
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 406
    check-cast v1, Ljava/lang/String;

    .line 414
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 408
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 410
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->languageCode_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 414
    goto :goto_0
.end method

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 427
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->languageCode_:Ljava/lang/Object;

    .line 428
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 429
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 432
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->languageCode_:Ljava/lang/Object;

    .line 435
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

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 321
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->name_:Ljava/lang/Object;

    .line 322
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 323
    check-cast v1, Ljava/lang/String;

    .line 331
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 325
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 327
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 331
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->name_:Ljava/lang/Object;

    .line 344
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 345
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 348
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->name_:Ljava/lang/Object;

    .line 351
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
            "Lcom/google/googlex/glass/common/proto/ResourceRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 474
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->memoizedSerializedSize:I

    .line 475
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 496
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 477
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 478
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 479
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 482
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 483
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 486
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 487
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->fingerprint_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 490
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 491
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getLanguageCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 494
    :cond_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 495
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 496
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasFingerprint()Z
    .locals 2

    .prologue
    .line 367
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

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

.method public hasLanguageCode()Z
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 311
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 292
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

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
    .line 109
    sget-object v0, Lcom/google/googlex/glass/common/proto/Resource;->internal_static_googlex_glass_common_proto_ResourceRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ResourceRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 510
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 511
    const-string v0, "com.google.googlex.glass.common.proto.MutableResource$ResourceRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 513
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 447
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->memoizedIsInitialized:B

    .line 448
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 451
    :goto_0
    return v1

    .line 448
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 450
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1

    .prologue
    .line 570
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 579
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ResourceRequest$1;)V

    .line 580
    .local v0, builder:Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;
    .locals 1

    .prologue
    .line 574
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->newBuilder(Lcom/google/googlex/glass/common/proto/ResourceRequest;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

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
    .line 503
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 456
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getSerializedSize()I

    .line 457
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->type_:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 460
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 463
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 464
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->fingerprint_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 466
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 467
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getLanguageCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 469
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 470
    return-void
.end method
