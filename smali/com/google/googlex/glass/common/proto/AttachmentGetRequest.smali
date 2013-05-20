.class public final Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AttachmentGetRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AttachmentGetRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;,
        Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;,
        Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensionsOrBuilder;
    }
.end annotation


# static fields
.field public static final ATTACHMENT_ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_DIMENSIONS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private attachmentId_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 731
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1142
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    .line 1143
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->initFields()V

    .line 1144
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

    .line 683
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->memoizedIsInitialized:B

    .line 704
    iput v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->initFields()V

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 48
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 49
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 51
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

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
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I

    .line 64
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->attachmentId_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 82
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 89
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->makeExtensionsImmutable()V

    throw v6

    .line 68
    .restart local v4       #tag:I
    :sswitch_2
    const/4 v3, 0x0

    .line 69
    .local v3, subBuilder:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    :try_start_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 70
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->toBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    move-result-object v3

    .line 72
    :cond_1
    sget-object v6, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 73
    if-eqz v3, :cond_2

    .line 74
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;

    .line 75
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 77
    :cond_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 84
    .end local v3           #subBuilder:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 85
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 89
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->makeExtensionsImmutable()V

    .line 91
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

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 683
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->memoizedIsInitialized:B

    .line 704
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 683
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->memoizedIsInitialized:B

    .line 704
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->attachmentId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->attachmentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 680
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->attachmentId_:Ljava/lang/Object;

    .line 681
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    .line 682
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 793
    #calls: Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->access$900()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 796
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 779
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 743
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 749
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 790
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 753
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 759
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    return-object v0
.end method


# virtual methods
.method public getAttachmentId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 628
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->attachmentId_:Ljava/lang/Object;

    .line 629
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 630
    check-cast v1, Ljava/lang/String;

    .line 638
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 632
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 634
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 636
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->attachmentId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 638
    goto :goto_0
.end method

.method public getAttachmentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 646
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->attachmentId_:Ljava/lang/Object;

    .line 647
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 648
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 651
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->attachmentId_:Ljava/lang/Object;

    .line 654
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

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
            "Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getScreenDimensions()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    return-object v0
.end method

.method public getScreenDimensionsOrBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensionsOrBuilder;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 706
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->memoizedSerializedSize:I

    .line 707
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 720
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 709
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 710
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 711
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getAttachmentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 714
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 715
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 718
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 719
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 720
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAttachmentId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 622
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScreenDimensions()Z
    .locals 2

    .prologue
    .line 664
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentGetRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 734
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 735
    const-string v0, "com.google.googlex.glass.common.proto.MutableSync$AttachmentGetRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 737
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 685
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->memoizedIsInitialized:B

    .line 686
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 689
    :goto_0
    return v1

    .line 686
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 688
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 794
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 803
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$1;)V

    .line 804
    .local v0, builder:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;
    .locals 1

    .prologue
    .line 798
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->newBuilder(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$Builder;

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
    .line 727
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

    .line 694
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getSerializedSize()I

    .line 695
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getAttachmentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 698
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 699
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->screenDimensions_:Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 701
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentGetRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 702
    return-void
.end method
