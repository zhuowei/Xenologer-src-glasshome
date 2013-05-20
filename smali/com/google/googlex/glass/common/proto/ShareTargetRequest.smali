.class public final Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ShareTargetRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ShareTargetRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ShareTargetRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 329
    new-instance v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    .line 330
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->initFields()V

    .line 331
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

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 104
    iput-byte v4, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->memoizedIsInitialized:B

    .line 119
    iput v4, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->memoizedSerializedSize:I

    .line 45
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->initFields()V

    .line 46
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 49
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 50
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 52
    .local v2, tag:I
    packed-switch v2, :pswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :pswitch_0
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 71
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 72
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->makeExtensionsImmutable()V

    .line 74
    return-void

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 72
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->makeExtensionsImmutable()V

    throw v4

    .line 67
    :catch_1
    move-exception v1

    .line 68
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/ShareTargetRequest$1;)V
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
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 21
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 104
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->memoizedIsInitialized:B

    .line 119
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->memoizedSerializedSize:I

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ShareTargetRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 104
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->memoizedIsInitialized:B

    .line 119
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->memoizedSerializedSize:I

    .line 24
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sharetargetquery;->internal_static_googlex_glass_common_proto_ShareTargetRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    .locals 1

    .prologue
    .line 200
    #calls: Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->access$100()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/ShareTargetRequest;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 203
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ShareTargetRequest;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

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
            "Lcom/google/googlex/glass/common/proto/ShareTargetRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 121
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->memoizedSerializedSize:I

    .line 122
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 127
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 124
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 126
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 127
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sharetargetquery;->internal_static_googlex_glass_common_proto_ShareTargetRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 142
    const-string v0, "com.google.googlex.glass.common.proto.MutableSharetargetquery$ShareTargetRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 144
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 106
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->memoizedIsInitialized:B

    .line 107
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 110
    :goto_0
    return v1

    .line 107
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 109
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 210
    new-instance v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ShareTargetRequest$1;)V

    .line 211
    .local v0, builder:Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    .locals 1

    .prologue
    .line 205
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->newBuilder(Lcom/google/googlex/glass/common/proto/ShareTargetRequest;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

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
    .line 134
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->getSerializedSize()I

    .line 116
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 117
    return-void
.end method
