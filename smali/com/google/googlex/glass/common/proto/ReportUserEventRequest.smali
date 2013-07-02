.class public final Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReportUserEventRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ReportUserEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field public static final DATA_FIELD_NUMBER:I = 0x2

.field public static final HARDWARE_VERSION_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x3

.field public static final SOFTWARE_VERSION_FIELD_NUMBER:I = 0x5

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x4

.field public static final USER_EVENT_PROTO_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private action_:Ljava/lang/Object;

.field private bitField0_:I

.field private data_:Ljava/lang/Object;

.field private hardwareVersion_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sessionId_:Ljava/lang/Object;

.field private softwareVersion_:Ljava/lang/Object;

.field private timestamp_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private userEventProto_:Lcom/google/common/logging/GlassUserEventProto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 581
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1581
    new-instance v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    .line 1582
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->initFields()V

    .line 1583
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

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 492
    iput-byte v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedIsInitialized:B

    .line 534
    iput v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->initFields()V

    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 49
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 50
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 52
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 59
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :sswitch_0
    const/4 v1, 0x1

    .line 55
    goto :goto_0

    .line 64
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 65
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    .line 66
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 113
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 114
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 120
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->makeExtensionsImmutable()V

    throw v7

    .line 70
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 71
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    .line 72
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 115
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_1
    move-exception v2

    .line 116
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 77
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    .line 78
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    goto :goto_0

    .line 82
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_4
    iget v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    .line 83
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->timestamp_:J

    goto :goto_0

    .line 87
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 88
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    .line 89
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 93
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 94
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    .line 95
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 99
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_7
    const/4 v4, 0x0

    .line 100
    .local v4, subBuilder:Lcom/google/common/logging/GlassUserEventProto$Builder;
    iget v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v7, v7, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_1

    .line 101
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-virtual {v7}, Lcom/google/common/logging/GlassUserEventProto;->toBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v4

    .line 103
    :cond_1
    sget-object v7, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/common/logging/GlassUserEventProto;

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 104
    if-eqz v4, :cond_2

    .line 105
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-virtual {v4, v7}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    .line 106
    invoke-virtual {v4}, Lcom/google/common/logging/GlassUserEventProto$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 108
    :cond_2
    iget v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 119
    .end local v4           #subBuilder:Lcom/google/common/logging/GlassUserEventProto$Builder;
    .end local v5           #tag:I
    :cond_3
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 120
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->makeExtensionsImmutable()V

    .line 122
    return-void

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$1;)V
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
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 492
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedIsInitialized:B

    .line 534
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 492
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedIsInitialized:B

    .line 534
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_ReportUserEventRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 484
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;

    .line 485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;

    .line 486
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    .line 487
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->timestamp_:J

    .line 488
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    .line 489
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

    .line 490
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 491
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 643
    #calls: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->access$100()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 646
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 593
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 599
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 603
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 609
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;

    .line 172
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 173
    check-cast v1, Ljava/lang/String;

    .line 181
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 175
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 177
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 181
    goto :goto_0
.end method

.method public getActionBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;

    .line 194
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 195
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 198
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;

    .line 201
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

.method public getData()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;

    .line 226
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 227
    check-cast v1, Ljava/lang/String;

    .line 235
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 229
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 231
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 235
    goto :goto_0
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;

    .line 248
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 249
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 252
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;

    .line 255
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 410
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

    .line 411
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 412
    check-cast v1, Ljava/lang/String;

    .line 420
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 414
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 416
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 420
    goto :goto_0
.end method

.method public getHardwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 432
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

    .line 433
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 434
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 437
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

    .line 440
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
            "Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 536
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedSerializedSize:I

    .line 537
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 570
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 539
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 540
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getActionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 544
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 545
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 548
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 549
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 552
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 553
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->timestamp_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 556
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 557
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 560
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 561
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getHardwareVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 564
    :cond_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 565
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 568
    :cond_7
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 569
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 570
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    .line 280
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 281
    check-cast v1, Ljava/lang/String;

    .line 289
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 283
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 285
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 289
    goto :goto_0
.end method

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 301
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    .line 302
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 303
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 306
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    .line 309
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
    .line 356
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    .line 357
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 358
    check-cast v1, Ljava/lang/String;

    .line 366
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 360
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 362
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 366
    goto :goto_0
.end method

.method public getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    .line 379
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 380
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 383
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    .line 386
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

.method public getTimestamp()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->timestamp_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUserEventProto()Lcom/google/common/logging/GlassUserEventProto;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public getUserEventProtoOrBuilder()Lcom/google/common/logging/GlassUserEventProtoOrBuilder;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public hasAction()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 161
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasData()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

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

.method public hasHardwareVersion()Z
    .locals 2

    .prologue
    .line 400
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

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

.method public hasSoftwareVersion()Z
    .locals 2

    .prologue
    .line 346
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 323
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

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

.method public hasUserEventProto()Z
    .locals 2

    .prologue
    .line 456
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

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
    .line 130
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_ReportUserEventRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 585
    const-string v0, "com.google.googlex.glass.common.proto.MutableLogging$ReportUserEventRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 587
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 494
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedIsInitialized:B

    .line 495
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 504
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 495
    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasUserEventProto()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 498
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getUserEventProto()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/logging/GlassUserEventProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 499
    iput-byte v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 500
    goto :goto_0

    .line 503
    :cond_2
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 644
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 653
    new-instance v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$1;)V

    .line 654
    .local v0, builder:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 648
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->newBuilder(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

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
    .line 577
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

    .line 509
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSerializedSize()I

    .line 510
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getActionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 513
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 516
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 517
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 519
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 520
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->timestamp_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 522
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 523
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 525
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 526
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getHardwareVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 528
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 529
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 531
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 532
    return-void
.end method
