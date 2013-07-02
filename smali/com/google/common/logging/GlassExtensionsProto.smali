.class public final Lcom/google/common/logging/GlassExtensionsProto;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GlassExtensionsProto.java"

# interfaces
.implements Lcom/google/common/logging/GlassExtensionsProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/GlassExtensionsProto$Builder;
    }
.end annotation


# static fields
.field public static final HARDWARE_VERSION_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/common/logging/GlassExtensionsProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field public static final SOFTWARE_VERSION_FIELD_NUMBER:I = 0x2

.field public static final USER_EVENT_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/common/logging/GlassExtensionsProto;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sessionId_:Ljava/lang/Object;

.field private softwareVersion_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private userEvent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/google/common/logging/GlassExtensionsProto$1;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsProto$1;-><init>()V

    sput-object v0, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 395
    const/4 v0, 0x0

    sput-object v0, Lcom/google/common/logging/GlassExtensionsProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1232
    new-instance v0, Lcom/google/common/logging/GlassExtensionsProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/logging/GlassExtensionsProto;-><init>(Z)V

    sput-object v0, Lcom/google/common/logging/GlassExtensionsProto;->defaultInstance:Lcom/google/common/logging/GlassExtensionsProto;

    .line 1233
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->defaultInstance:Lcom/google/common/logging/GlassExtensionsProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsProto;->initFields()V

    .line 1234
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x4

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 327
    iput-byte v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->memoizedIsInitialized:B

    .line 360
    iput v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->memoizedSerializedSize:I

    .line 39
    invoke-direct {p0}, Lcom/google/common/logging/GlassExtensionsProto;->initFields()V

    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 44
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 45
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 47
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 52
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/common/logging/GlassExtensionsProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 54
    const/4 v1, 0x1

    goto :goto_0

    .line 49
    :sswitch_0
    const/4 v1, 0x1

    .line 50
    goto :goto_0

    .line 59
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 60
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    .line 61
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->sessionId_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 91
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 92
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit8 v9, v3, 0x4

    if-ne v9, v10, :cond_1

    .line 98
    iget-object v9, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    .line 100
    :cond_1
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/common/logging/GlassExtensionsProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 101
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->makeExtensionsImmutable()V

    throw v8

    .line 65
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 66
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    .line 67
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->softwareVersion_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 93
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_1
    move-exception v2

    .line 94
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

    .line 71
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    and-int/lit8 v8, v3, 0x4

    if-eq v8, v10, :cond_2

    .line 72
    :try_start_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    .line 73
    or-int/lit8 v3, v3, 0x4

    .line 75
    :cond_2
    iget-object v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    sget-object v9, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 80
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;->valueOf(I)Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    move-result-object v7

    .line 81
    .local v7, value:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;
    if-nez v7, :cond_3

    .line 82
    const/4 v8, 0x4

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 84
    :cond_3
    iget v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    .line 85
    iput-object v7, p0, Lcom/google/common/logging/GlassExtensionsProto;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 97
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;
    :cond_4
    and-int/lit8 v8, v3, 0x4

    if-ne v8, v10, :cond_5

    .line 98
    iget-object v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    .line 100
    :cond_5
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/logging/GlassExtensionsProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 101
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->makeExtensionsImmutable()V

    .line 103
    return-void

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/common/logging/GlassExtensionsProto$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/common/logging/GlassExtensionsProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 327
    iput-byte v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->memoizedIsInitialized:B

    .line 360
    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->memoizedSerializedSize:I

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/common/logging/GlassExtensionsProto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/google/common/logging/GlassExtensionsProto;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 327
    iput-byte v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->memoizedIsInitialized:B

    .line 360
    iput v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->memoizedSerializedSize:I

    .line 18
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/common/logging/GlassExtensionsProto;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/common/logging/GlassExtensionsProto;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/common/logging/GlassExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->softwareVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/common/logging/GlassExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto;->softwareVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/common/logging/GlassExtensionsProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/common/logging/GlassExtensionsProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/common/logging/GlassExtensionsProto;Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;)Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/common/logging/GlassExtensionsProto;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/common/logging/GlassExtensionsProto;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->defaultInstance:Lcom/google/common/logging/GlassExtensionsProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassExtensionsProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->sessionId_:Ljava/lang/Object;

    .line 323
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->softwareVersion_:Ljava/lang/Object;

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    .line 325
    sget-object v0, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;->UNVERSIONED:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    .line 326
    return-void
.end method

.method public static newBuilder()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 457
    #calls: Lcom/google/common/logging/GlassExtensionsProto$Builder;->create()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->access$100()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/common/logging/GlassExtensionsProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 460
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->newBuilder()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassExtensionsProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassExtensionsProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 407
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 413
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 417
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 423
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsProto;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/common/logging/GlassExtensionsProto;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->defaultInstance:Lcom/google/common/logging/GlassExtensionsProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->getDefaultInstanceForType()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->getDefaultInstanceForType()Lcom/google/common/logging/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareVersion()Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/common/logging/GlassExtensionsProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 362
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->memoizedSerializedSize:I

    .line 363
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 384
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 365
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 366
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 370
    :cond_1
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 374
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 375
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 378
    :cond_3
    iget v3, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4

    .line 379
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsProto;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;->getNumber()I

    move-result v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 382
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 383
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->memoizedSerializedSize:I

    move v2, v1

    .line 384
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->sessionId_:Ljava/lang/Object;

    .line 155
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 156
    check-cast v1, Ljava/lang/String;

    .line 164
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 158
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 160
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    iput-object v2, p0, Lcom/google/common/logging/GlassExtensionsProto;->sessionId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 164
    goto :goto_0
.end method

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->sessionId_:Ljava/lang/Object;

    .line 178
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 179
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 182
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->sessionId_:Ljava/lang/Object;

    .line 185
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

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->softwareVersion_:Ljava/lang/Object;

    .line 210
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 211
    check-cast v1, Ljava/lang/String;

    .line 219
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 213
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 215
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    iput-object v2, p0, Lcom/google/common/logging/GlassExtensionsProto;->softwareVersion_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 219
    goto :goto_0
.end method

.method public getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->softwareVersion_:Ljava/lang/Object;

    .line 232
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 233
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 236
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->softwareVersion_:Ljava/lang/Object;

    .line 239
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
    .line 33
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUserEvent(I)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public getUserEventCount()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    return-object v0
.end method

.method public getUserEventOrBuilder(I)Lcom/google/common/logging/GlassUserEventProtoOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProtoOrBuilder;

    return-object v0
.end method

.method public getUserEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/common/logging/GlassUserEventProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    return-object v0
.end method

.method public hasHardwareVersion()Z
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 143
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSoftwareVersion()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

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
    .line 111
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassExtensionsProto_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/common/logging/GlassExtensionsProto;

    const-class v2, Lcom/google/common/logging/GlassExtensionsProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 399
    const-string v0, "com.google.common.logging.MutableGlassExtensions$GlassExtensionsProto"

    invoke-static {v0}, Lcom/google/common/logging/GlassExtensionsProto;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/common/logging/GlassExtensionsProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 401
    :cond_0
    sget-object v0, Lcom/google/common/logging/GlassExtensionsProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 329
    iget-byte v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->memoizedIsInitialized:B

    .line 330
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 339
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 330
    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->getUserEventCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 333
    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassExtensionsProto;->getUserEvent(I)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/logging/GlassUserEventProto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 334
    iput-byte v3, p0, Lcom/google/common/logging/GlassExtensionsProto;->memoizedIsInitialized:B

    move v2, v3

    .line 335
    goto :goto_0

    .line 332
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_3
    iput-byte v2, p0, Lcom/google/common/logging/GlassExtensionsProto;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 458
    invoke-static {}, Lcom/google/common/logging/GlassExtensionsProto;->newBuilder()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 467
    new-instance v0, Lcom/google/common/logging/GlassExtensionsProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/logging/GlassExtensionsProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/common/logging/GlassExtensionsProto$1;)V

    .line 468
    .local v0, builder:Lcom/google/common/logging/GlassExtensionsProto$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->newBuilderForType()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsProto;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->newBuilderForType()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/common/logging/GlassExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 462
    invoke-static {p0}, Lcom/google/common/logging/GlassExtensionsProto;->newBuilder(Lcom/google/common/logging/GlassExtensionsProto;)Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->toBuilder()Lcom/google/common/logging/GlassExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->toBuilder()Lcom/google/common/logging/GlassExtensionsProto$Builder;

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
    .line 391
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 344
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->getSerializedSize()I

    .line 345
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 348
    :cond_0
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 351
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 352
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->userEvent_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_2
    iget v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 355
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsProto;->hardwareVersion_:Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;->getNumber()I

    move-result v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 357
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 358
    return-void
.end method
