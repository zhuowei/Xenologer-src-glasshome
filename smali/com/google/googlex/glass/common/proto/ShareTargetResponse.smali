.class public final Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ShareTargetResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ShareTargetResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;,
        Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ShareTargetResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_CODE_FIELD_NUMBER:I = 0x1

.field public static final TARGETS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

.field private targets_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 311
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 832
    new-instance v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    .line 833
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->initFields()V

    .line 834
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
    const/4 v7, -0x1

    const/4 v9, 0x2

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 263
    iput-byte v7, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->memoizedIsInitialized:B

    .line 284
    iput v7, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->memoizedSerializedSize:I

    .line 45
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->initFields()V

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 50
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 51
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 52
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 53
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 58
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :sswitch_0
    const/4 v0, 0x1

    .line 56
    goto :goto_0

    .line 65
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 66
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->valueOf(I)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    move-result-object v6

    .line 67
    .local v6, value:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    if-nez v6, :cond_2

    .line 68
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 85
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    and-int/lit8 v8, v2, 0x2

    if-ne v8, v9, :cond_1

    .line 92
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    .line 94
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 95
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->makeExtensionsImmutable()V

    throw v7

    .line 70
    .restart local v3       #rawValue:I
    .restart local v4       #tag:I
    .restart local v6       #value:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    :cond_2
    :try_start_2
    iget v7, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->bitField0_:I

    .line 71
    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 87
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    :catch_1
    move-exception v1

    .line 88
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

    .line 76
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_2
    and-int/lit8 v7, v2, 0x2

    if-eq v7, v9, :cond_3

    .line 77
    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    .line 78
    or-int/lit8 v2, v2, 0x2

    .line 80
    :cond_3
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    sget-object v8, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 91
    .end local v4           #tag:I
    :cond_4
    and-int/lit8 v7, v2, 0x2

    if-ne v7, v9, :cond_5

    .line 92
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    .line 94
    :cond_5
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 95
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->makeExtensionsImmutable()V

    .line 97
    return-void

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/ShareTargetResponse$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 263
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->memoizedIsInitialized:B

    .line 284
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->memoizedSerializedSize:I

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ShareTargetResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 263
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->memoizedIsInitialized:B

    .line 284
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->memoizedSerializedSize:I

    .line 24
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sharetargetquery;->internal_static_googlex_glass_common_proto_ShareTargetResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    .line 261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    .line 262
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1

    .prologue
    .line 373
    #calls: Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->access$100()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 376
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 323
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 329
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 333
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 339
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

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
            "Lcom/google/googlex/glass/common/proto/ShareTargetResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 286
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->memoizedSerializedSize:I

    .line 287
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 300
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 289
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 290
    iget v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 291
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 294
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 295
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 299
    iput v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 300
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getTargets(I)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "index"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public getTargetsCount()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTargetsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    return-object v0
.end method

.method public getTargetsOrBuilder(I)Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntityOrBuilder;

    return-object v0
.end method

.method public getTargetsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 215
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->bitField0_:I

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
    .line 105
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sharetargetquery;->internal_static_googlex_glass_common_proto_ShareTargetResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 315
    const-string v0, "com.google.googlex.glass.common.proto.MutableSharetargetquery$ShareTargetResponse"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 317
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 265
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->memoizedIsInitialized:B

    .line 266
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 269
    :goto_0
    return v1

    .line 266
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 268
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1

    .prologue
    .line 374
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 383
    new-instance v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ShareTargetResponse$1;)V

    .line 384
    .local v0, builder:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;
    .locals 1

    .prologue
    .line 378
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->newBuilder(Lcom/google/googlex/glass/common/proto/ShareTargetResponse;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$Builder;

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
    .line 307
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

    .line 274
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->getSerializedSize()I

    .line 275
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 276
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 278
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 279
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->targets_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 282
    return-void
.end method
