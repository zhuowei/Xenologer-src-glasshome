.class public final Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "EntitySyncRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/EntitySyncRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    }
.end annotation


# static fields
.field public static final ALL_SHARE_TARGETS_FIELD_NUMBER:I = 0x6

.field public static final DEVICE_ID_FIELD_NUMBER:I = 0x5

.field public static final ENABLED_TARGETS_ONLY_FIELD_NUMBER:I = 0x7

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/EntitySyncRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private allShareTargets_:Z

.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private enabledTargetsOnly_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 286
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 719
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    .line 720
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->initFields()V

    .line 721
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 231
    iput-byte v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->memoizedIsInitialized:B

    .line 255
    iput v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->initFields()V

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 48
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 49
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 51
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :sswitch_0
    const/4 v0, 0x1

    .line 54
    goto :goto_0

    .line 63
    :sswitch_1
    iget v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    .line 64
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->deviceId_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 79
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 86
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->makeExtensionsImmutable()V

    throw v5

    .line 68
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    .line 69
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->allShareTargets_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 81
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 82
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    .line 74
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->enabledTargetsOnly_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 85
    .end local v3           #tag:I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 86
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->makeExtensionsImmutable()V

    .line 88
    return-void

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2a -> :sswitch_1
        0x30 -> :sswitch_2
        0x38 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/EntitySyncRequest$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 231
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->memoizedIsInitialized:B

    .line 255
    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/EntitySyncRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 231
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->memoizedIsInitialized:B

    .line 255
    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->deviceId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->deviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->allShareTargets_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->enabledTargetsOnly_:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySync;->internal_static_googlex_glass_common_proto_EntitySyncRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->deviceId_:Ljava/lang/Object;

    .line 228
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->allShareTargets_:Z

    .line 229
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->enabledTargetsOnly_:Z

    .line 230
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1

    .prologue
    .line 348
    #calls: Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->access$100()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 351
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 314
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    return-object v0
.end method


# virtual methods
.method public getAllShareTargets()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->allShareTargets_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->deviceId_:Ljava/lang/Object;

    .line 140
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 141
    check-cast v1, Ljava/lang/String;

    .line 149
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 143
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 145
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->deviceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 149
    goto :goto_0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->deviceId_:Ljava/lang/Object;

    .line 163
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 164
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 167
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->deviceId_:Ljava/lang/Object;

    .line 170
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

.method public getEnabledTargetsOnly()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->enabledTargetsOnly_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/EntitySyncRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 257
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->memoizedSerializedSize:I

    .line 258
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 275
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 260
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 261
    iget v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 262
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 265
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 266
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->allShareTargets_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 269
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 270
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->enabledTargetsOnly_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 273
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 274
    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 275
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAllShareTargets()Z
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnabledTargetsOnly()Z
    .locals 2

    .prologue
    .line 210
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

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
    .line 96
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySync;->internal_static_googlex_glass_common_proto_EntitySyncRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 290
    const-string v0, "com.google.googlex.glass.common.proto.MutableEntitySync$EntitySyncRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 292
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 233
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->memoizedIsInitialized:B

    .line 234
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 237
    :goto_0
    return v1

    .line 234
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 358
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/EntitySyncRequest$1;)V

    .line 359
    .local v0, builder:Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->newBuilder(Lcom/google/googlex/glass/common/proto/EntitySyncRequest;)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

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
    .line 282
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
    .line 242
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getSerializedSize()I

    .line 243
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 244
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 246
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 247
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->allShareTargets_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 249
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 250
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->enabledTargetsOnly_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 253
    return-void
.end method
