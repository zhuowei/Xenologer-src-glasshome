.class public final Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AttachmentInsertRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AttachmentInsertRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x3

.field public static final CREATION_TIME_FIELD_NUMBER:I = 0x6

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x4

.field public static final DEVICE_ID_FIELD_NUMBER:I = 0x1

.field public static final MIME_TYPE_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private content_:Lcom/google/protobuf/ByteString;

.field private creationTime_:J

.field private description_:Ljava/lang/Object;

.field private deviceId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mimeType_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private source_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 558
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1439
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    .line 1440
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->initFields()V

    .line 1441
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

    .line 475
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->memoizedIsInitialized:B

    .line 511
    iput v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->initFields()V

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
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    .line 65
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->deviceId_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 104
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 105
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 111
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->makeExtensionsImmutable()V

    throw v6

    .line 69
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 70
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    .line 71
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mimeType_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 106
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 107
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

    .line 75
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    .line 76
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->content_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 80
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 81
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    .line 82
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 86
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 87
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    .line 88
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 92
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_6
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    .line 93
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->creationTime_:J

    goto :goto_0

    .line 97
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 98
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    .line 99
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->source_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 110
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 111
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->makeExtensionsImmutable()V

    .line 113
    return-void

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 475
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->memoizedIsInitialized:B

    .line 511
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 475
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->memoizedIsInitialized:B

    .line 511
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->creationTime_:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->source_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->source_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->deviceId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->deviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mimeType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mimeType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->content_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->description_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentInsertRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->deviceId_:Ljava/lang/Object;

    .line 468
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mimeType_:Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->content_:Lcom/google/protobuf/ByteString;

    .line 470
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->description_:Ljava/lang/Object;

    .line 471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->name_:Ljava/lang/Object;

    .line 472
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->creationTime_:J

    .line 473
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->source_:Ljava/lang/Object;

    .line 474
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 620
    #calls: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->access$100()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 623
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 570
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 576
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 580
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 586
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    return-object v0
.end method


# virtual methods
.method public getContent()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->content_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 403
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->creationTime_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 293
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->description_:Ljava/lang/Object;

    .line 294
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 295
    check-cast v1, Ljava/lang/String;

    .line 303
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 297
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 299
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->description_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 303
    goto :goto_0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 315
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->description_:Ljava/lang/Object;

    .line 316
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 317
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 320
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->description_:Ljava/lang/Object;

    .line 323
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

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->deviceId_:Ljava/lang/Object;

    .line 163
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 164
    check-cast v1, Ljava/lang/String;

    .line 172
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 166
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 168
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->deviceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 172
    goto :goto_0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->deviceId_:Ljava/lang/Object;

    .line 185
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 186
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 189
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->deviceId_:Ljava/lang/Object;

    .line 192
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

.method public getMimeType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mimeType_:Ljava/lang/Object;

    .line 217
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 218
    check-cast v1, Ljava/lang/String;

    .line 226
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 220
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 222
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mimeType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 226
    goto :goto_0
.end method

.method public getMimeTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mimeType_:Ljava/lang/Object;

    .line 239
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 240
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 243
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mimeType_:Ljava/lang/Object;

    .line 246
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
    .line 347
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->name_:Ljava/lang/Object;

    .line 348
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 349
    check-cast v1, Ljava/lang/String;

    .line 357
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 351
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 353
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 357
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 369
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->name_:Ljava/lang/Object;

    .line 370
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 371
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 374
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->name_:Ljava/lang/Object;

    .line 377
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
            "Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 513
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->memoizedSerializedSize:I

    .line 514
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 547
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 516
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 517
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 521
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 522
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getMimeTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 525
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 526
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->content_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 529
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 530
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 533
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 534
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 537
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 538
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->creationTime_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 541
    :cond_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 542
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 545
    :cond_7
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 546
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 547
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 430
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->source_:Ljava/lang/Object;

    .line 431
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 432
    check-cast v1, Ljava/lang/String;

    .line 440
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 434
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 436
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->source_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 440
    goto :goto_0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 454
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->source_:Ljava/lang/Object;

    .line 455
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 456
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 459
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->source_:Ljava/lang/Object;

    .line 462
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

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasContent()Z
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

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

.method public hasCreationTime()Z
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 152
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMimeType()Z
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 2

    .prologue
    .line 418
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

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
    .line 121
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentInsertRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 562
    const-string v0, "com.google.googlex.glass.common.proto.MutableSync$AttachmentInsertRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 564
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 477
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->memoizedIsInitialized:B

    .line 478
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 481
    :goto_0
    return v1

    .line 478
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 480
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 621
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 630
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$1;)V

    .line 631
    .local v0, builder:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 625
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->newBuilder(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

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
    .line 554
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

    .line 486
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getSerializedSize()I

    .line 487
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 490
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getMimeTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 493
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 494
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->content_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 496
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 499
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 500
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 502
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 503
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->creationTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 505
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 506
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 508
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 509
    return-void
.end method
