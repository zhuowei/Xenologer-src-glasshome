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
    .line 130
    new-instance v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 576
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1561
    new-instance v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    .line 1562
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->initFields()V

    .line 1563
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

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 487
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedIsInitialized:B

    .line 529
    iput v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->initFields()V

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 49
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 50
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 52
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :sswitch_0
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 64
    :sswitch_1
    iget v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    .line 65
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 108
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 115
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->makeExtensionsImmutable()V

    throw v6

    .line 69
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    .line 70
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 110
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 111
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

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    iget v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    .line 75
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    goto :goto_0

    .line 79
    :sswitch_4
    iget v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    .line 80
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->timestamp_:J

    goto :goto_0

    .line 84
    :sswitch_5
    iget v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    .line 85
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 89
    :sswitch_6
    iget v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    .line 90
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 94
    :sswitch_7
    const/4 v3, 0x0

    .line 95
    .local v3, subBuilder:Lcom/google/common/logging/GlassUserEventProto$Builder;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v6, v6, 0x40

    const/16 v7, 0x40

    if-ne v6, v7, :cond_1

    .line 96
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-virtual {v6}, Lcom/google/common/logging/GlassUserEventProto;->toBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v3

    .line 98
    :cond_1
    sget-object v6, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/common/logging/GlassUserEventProto;

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 99
    if-eqz v3, :cond_2

    .line 100
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-virtual {v3, v6}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    .line 101
    invoke-virtual {v3}, Lcom/google/common/logging/GlassUserEventProto$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 103
    :cond_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 114
    .end local v3           #subBuilder:Lcom/google/common/logging/GlassUserEventProto$Builder;
    .end local v4           #tag:I
    :cond_3
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 115
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->makeExtensionsImmutable()V

    .line 117
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

    .line 487
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedIsInitialized:B

    .line 529
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

    .line 487
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedIsInitialized:B

    .line 529
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
    .line 120
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_ReportUserEventRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 479
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;

    .line 480
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;

    .line 481
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    .line 482
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->timestamp_:J

    .line 483
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    .line 484
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

    .line 485
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    .line 486
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 638
    #calls: Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;->access$100()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 641
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
    .line 618
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
    .line 624
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
    .line 588
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
    .line 594
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
    .line 629
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
    .line 635
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
    .line 608
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
    .line 614
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
    .line 598
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
    .line 604
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
    .line 166
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;

    .line 167
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 168
    check-cast v1, Ljava/lang/String;

    .line 176
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 170
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 172
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 176
    goto :goto_0
.end method

.method public getActionBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;

    .line 189
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 190
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 193
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->action_:Ljava/lang/Object;

    .line 196
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
    .line 220
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;

    .line 221
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 222
    check-cast v1, Ljava/lang/String;

    .line 230
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 224
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 226
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 230
    goto :goto_0
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;

    .line 243
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 244
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 247
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->data_:Ljava/lang/Object;

    .line 250
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
    .line 405
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

    .line 406
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 407
    check-cast v1, Ljava/lang/String;

    .line 415
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 409
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 411
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 415
    goto :goto_0
.end method

.method public getHardwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 427
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hardwareVersion_:Ljava/lang/Object;

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
    .line 142
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 531
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedSerializedSize:I

    .line 532
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 565
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 534
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 535
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getActionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 539
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 540
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 543
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 544
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 547
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 548
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->timestamp_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 551
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 552
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 555
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 556
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getHardwareVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 559
    :cond_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 560
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 563
    :cond_7
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 564
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 565
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 274
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    .line 275
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 276
    check-cast v1, Ljava/lang/String;

    .line 284
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 278
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 280
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 284
    goto :goto_0
.end method

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 296
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    .line 297
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 298
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 301
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->sessionId_:Ljava/lang/Object;

    .line 304
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
    .line 351
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    .line 352
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 353
    check-cast v1, Ljava/lang/String;

    .line 361
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 355
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 357
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 361
    goto :goto_0
.end method

.method public getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 373
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    .line 374
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 375
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 378
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->softwareVersion_:Ljava/lang/Object;

    .line 381
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
    .line 328
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
    .line 463
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public getUserEventProtoOrBuilder()Lcom/google/common/logging/GlassUserEventProtoOrBuilder;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public hasAction()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 156
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
    .line 210
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
    .line 395
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
    .line 264
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
    .line 341
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
    .line 318
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
    .line 451
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
    .line 125
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
    .line 579
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 580
    const-string v0, "com.google.googlex.glass.common.proto.MutableLogging$ReportUserEventRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 582
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 489
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedIsInitialized:B

    .line 490
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 499
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 490
    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->hasUserEventProto()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 493
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getUserEventProto()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/logging/GlassUserEventProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 494
    iput-byte v2, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 495
    goto :goto_0

    .line 498
    :cond_2
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 1

    .prologue
    .line 639
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 648
    new-instance v0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ReportUserEventRequest$1;)V

    .line 649
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
    .line 643
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
    .line 572
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

    .line 504
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSerializedSize()I

    .line 505
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getActionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 508
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 511
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 512
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 514
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 515
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->timestamp_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 517
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 518
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getSoftwareVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 520
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 521
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getHardwareVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 523
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 524
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->userEventProto_:Lcom/google/common/logging/GlassUserEventProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 526
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ReportUserEventRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 527
    return-void
.end method
