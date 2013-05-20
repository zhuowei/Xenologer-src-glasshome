.class public final Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "LocationUpdateResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/LocationUpdateResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;,
        Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_CODE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 245
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 482
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    .line 483
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->initFields()V

    .line 484
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

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 200
    iput-byte v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->memoizedIsInitialized:B

    .line 222
    iput v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->memoizedSerializedSize:I

    .line 39
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->initFields()V

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 44
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 45
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 47
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 52
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :sswitch_0
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 59
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 60
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;->valueOf(I)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    move-result-object v6

    .line 61
    .local v6, value:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;
    if-nez v6, :cond_1

    .line 62
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 71
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 78
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->makeExtensionsImmutable()V

    throw v7

    .line 64
    .restart local v3       #rawValue:I
    .restart local v4       #tag:I
    .restart local v6       #value:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;
    :cond_1
    :try_start_2
    iget v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->bitField0_:I

    .line 65
    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 73
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;
    :catch_1
    move-exception v1

    .line 74
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 78
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->makeExtensionsImmutable()V

    .line 80
    return-void

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$1;)V
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
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 15
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 200
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->memoizedIsInitialized:B

    .line 222
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->memoizedSerializedSize:I

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 200
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->memoizedIsInitialized:B

    .line 222
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->memoizedSerializedSize:I

    .line 18
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationRequest;->internal_static_googlex_glass_common_proto_LocationUpdateResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    .line 199
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 307
    #calls: Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->access$100()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 310
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 257
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 263
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 273
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

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
            "Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 224
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->memoizedSerializedSize:I

    .line 225
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 234
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 227
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 228
    iget v2, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 229
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 233
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 234
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 188
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->bitField0_:I

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
    .line 88
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationRequest;->internal_static_googlex_glass_common_proto_LocationUpdateResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 249
    const-string v0, "com.google.googlex.glass.common.proto.MutableLocationRequest$LocationUpdateResponse"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 251
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 202
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->memoizedIsInitialized:B

    .line 203
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 210
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 203
    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->hasResponseCode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 206
    iput-byte v2, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 207
    goto :goto_0

    .line 209
    :cond_2
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 317
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$1;)V

    .line 318
    .local v0, builder:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 312
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->newBuilder(Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;)Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$Builder;

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
    .line 241
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

    .line 215
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->getSerializedSize()I

    .line 216
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse$ResponseCode;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 220
    return-void
.end method
