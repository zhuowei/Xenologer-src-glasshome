.class public final Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AttachmentGetResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AttachmentGetResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;,
        Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x3

.field public static final MIME_TYPE_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_CODE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private content_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mimeType_:Ljava/lang/Object;

.field private responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 358
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 766
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    .line 767
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->initFields()V

    .line 768
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

    .line 303
    iput-byte v8, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->memoizedIsInitialized:B

    .line 327
    iput v8, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->initFields()V

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
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->valueOf(I)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    move-result-object v7

    .line 65
    .local v7, value:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;
    if-nez v7, :cond_1

    .line 66
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 86
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;
    :catch_0
    move-exception v2

    .line 87
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 93
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->makeExtensionsImmutable()V

    throw v8

    .line 68
    .restart local v4       #rawValue:I
    .restart local v5       #tag:I
    .restart local v7       #value:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;
    :cond_1
    :try_start_2
    iget v8, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    .line 69
    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 88
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;
    :catch_1
    move-exception v2

    .line 89
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
    iget v8, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    .line 76
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mimeType_:Ljava/lang/Object;

    goto :goto_0

    .line 80
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_3
    iget v8, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    .line 81
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->content_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 92
    .end local v5           #tag:I
    :cond_2
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 93
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->makeExtensionsImmutable()V

    .line 95
    return-void

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 303
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->memoizedIsInitialized:B

    .line 327
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 303
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->memoizedIsInitialized:B

    .line 327
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mimeType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mimeType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->content_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    .line 300
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mimeType_:Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->content_:Lcom/google/protobuf/ByteString;

    .line 302
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 420
    #calls: Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->access$100()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 423
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 370
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 376
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 380
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    return-object v0
.end method


# virtual methods
.method public getContent()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->content_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mimeType_:Ljava/lang/Object;

    .line 242
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 243
    check-cast v1, Ljava/lang/String;

    .line 251
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 245
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 247
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mimeType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 251
    goto :goto_0
.end method

.method public getMimeTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 263
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mimeType_:Ljava/lang/Object;

    .line 264
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 265
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 268
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mimeType_:Ljava/lang/Object;

    .line 271
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
            "Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 329
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->memoizedSerializedSize:I

    .line 330
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 347
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 332
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 333
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 334
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 337
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getMimeTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 341
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 342
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->content_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 345
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 346
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 347
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasContent()Z
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

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

.method public hasMimeType()Z
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

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

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 212
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

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
    .line 103
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 362
    const-string v0, "com.google.googlex.glass.common.proto.MutableSync$AttachmentGetResponse"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 364
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 305
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->memoizedIsInitialized:B

    .line 306
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 309
    :goto_0
    return v1

    .line 306
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 308
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 421
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 430
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$1;)V

    .line 431
    .local v0, builder:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->newBuilder(Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;)Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$Builder;

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
    .line 354
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

    .line 314
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getSerializedSize()I

    .line 315
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse$ResponseCode;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 318
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getMimeTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 321
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 322
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->content_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 325
    return-void
.end method
