.class public final Lcom/google/common/logging/GlassUserEventProto;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GlassUserEventProto.java"

# interfaces
.implements Lcom/google/common/logging/GlassUserEventProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/GlassUserEventProto$Builder;
    }
.end annotation


# static fields
.field public static final EVENT_DATA_FIELD_NUMBER:I = 0x3

.field public static final EVENT_SERIAL_FIELD_NUMBER:I = 0x5

.field public static final EVENT_TIME_MS_FIELD_NUMBER:I = 0x1

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/common/logging/GlassUserEventProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERFORMANCE_STATS_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/common/logging/GlassUserEventProto;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private eventData_:Ljava/lang/Object;

.field private eventSerial_:J

.field private eventTimeMs_:J

.field private eventType_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/google/common/logging/GlassUserEventProto$1;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventProto$1;-><init>()V

    sput-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 420
    const/4 v0, 0x0

    sput-object v0, Lcom/google/common/logging/GlassUserEventProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1153
    new-instance v0, Lcom/google/common/logging/GlassUserEventProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/logging/GlassUserEventProto;-><init>(Z)V

    sput-object v0, Lcom/google/common/logging/GlassUserEventProto;->defaultInstance:Lcom/google/common/logging/GlassUserEventProto;

    .line 1154
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->defaultInstance:Lcom/google/common/logging/GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventProto;->initFields()V

    .line 1155
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

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 345
    iput-byte v7, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedIsInitialized:B

    .line 381
    iput v7, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventProto;->initFields()V

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
    if-nez v1, :cond_3

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 51
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/common/logging/GlassUserEventProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

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
    iget v7, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    .line 64
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 99
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 100
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/logging/GlassUserEventProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 106
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->makeExtensionsImmutable()V

    throw v7

    .line 68
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 69
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    .line 70
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 101
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_1
    move-exception v2

    .line 102
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

    .line 74
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 75
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    .line 76
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    goto :goto_0

    .line 80
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_4
    const/4 v4, 0x0

    .line 81
    .local v4, subBuilder:Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    iget v7, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_1

    .line 82
    iget-object v7, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-virtual {v7}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->toBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v4

    .line 84
    :cond_1
    sget-object v7, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    iput-object v7, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 85
    if-eqz v4, :cond_2

    .line 86
    iget-object v7, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-virtual {v4, v7}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 87
    invoke-virtual {v4}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 89
    :cond_2
    iget v7, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    goto/16 :goto_0

    .line 93
    .end local v4           #subBuilder:Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    :sswitch_5
    iget v7, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    .line 94
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/common/logging/GlassUserEventProto;->eventSerial_:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 105
    .end local v5           #tag:I
    :cond_3
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/GlassUserEventProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 106
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->makeExtensionsImmutable()V

    .line 108
    return-void

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/common/logging/GlassUserEventProto$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 345
    iput-byte v0, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedIsInitialized:B

    .line 381
    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/common/logging/GlassUserEventProto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/common/logging/GlassUserEventProto;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 345
    iput-byte v0, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedIsInitialized:B

    .line 381
    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/common/logging/GlassUserEventProto;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/common/logging/GlassUserEventProto;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/common/logging/GlassUserEventProto;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/common/logging/GlassUserEventProto;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventSerial_:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/google/common/logging/GlassUserEventProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/common/logging/GlassUserEventProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/common/logging/GlassUserEventProto;Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->defaultInstance:Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 339
    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J

    .line 340
    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventSerial_:J

    .line 341
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    .line 343
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 344
    return-void
.end method

.method public static newBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 482
    #calls: Lcom/google/common/logging/GlassUserEventProto$Builder;->create()Lcom/google/common/logging/GlassUserEventProto$Builder;
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto$Builder;->access$100()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 485
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->newBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 432
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 438
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 442
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 448
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventProto;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->defaultInstance:Lcom/google/common/logging/GlassUserEventProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public getEventData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 271
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    .line 272
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 273
    check-cast v1, Ljava/lang/String;

    .line 281
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 275
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 277
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    iput-object v2, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 281
    goto :goto_0
.end method

.method public getEventDataBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    .line 294
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 295
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 298
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    .line 301
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

.method public getEventSerial()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventSerial_:J

    return-wide v0
.end method

.method public getEventTimeMs()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J

    return-wide v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 217
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;

    .line 218
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 219
    check-cast v1, Ljava/lang/String;

    .line 227
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 221
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 223
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    iput-object v2, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 227
    goto :goto_0
.end method

.method public getEventTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;

    .line 240
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 241
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 244
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;

    .line 247
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
            "Lcom/google/common/logging/GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPerformanceStats()Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public getPerformanceStatsOrBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStatsOrBuilder;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 383
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedSerializedSize:I

    .line 384
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 409
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 386
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 387
    iget v2, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 388
    iget-wide v2, p0, Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 391
    :cond_1
    iget v2, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getEventTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 395
    :cond_2
    iget v2, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 396
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getEventDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 399
    :cond_3
    iget v2, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 400
    iget-object v2, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 403
    :cond_4
    iget v2, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_5

    .line 404
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/common/logging/GlassUserEventProto;->eventSerial_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 407
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 408
    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedSerializedSize:I

    move v1, v0

    .line 409
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasEventData()Z
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

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

.method public hasEventSerial()Z
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

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

.method public hasEventTimeMs()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 150
    iget v1, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventType()Z
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

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

.method public hasPerformanceStats()Z
    .locals 2

    .prologue
    .line 315
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 116
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventProto_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/common/logging/GlassUserEventProto;

    const-class v2, Lcom/google/common/logging/GlassUserEventProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 424
    const-string v0, "com.google.common.logging.MutableGlassExtensions$GlassUserEventProto"

    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventProto;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/common/logging/GlassUserEventProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 426
    :cond_0
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 347
    iget-byte v0, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedIsInitialized:B

    .line 348
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 357
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 348
    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->hasPerformanceStats()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getPerformanceStats()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 352
    iput-byte v2, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedIsInitialized:B

    move v1, v2

    .line 353
    goto :goto_0

    .line 356
    :cond_2
    iput-byte v1, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 483
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->newBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 492
    new-instance v0, Lcom/google/common/logging/GlassUserEventProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/logging/GlassUserEventProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/common/logging/GlassUserEventProto$1;)V

    .line 493
    .local v0, builder:Lcom/google/common/logging/GlassUserEventProto$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->newBuilderForType()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventProto;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->newBuilderForType()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-static {p0}, Lcom/google/common/logging/GlassUserEventProto;->newBuilder(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->toBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->toBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;

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
    .line 416
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

    .line 362
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getSerializedSize()I

    .line 363
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 364
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 366
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getEventTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 369
    :cond_1
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 370
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getEventDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 372
    :cond_2
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 373
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 375
    :cond_3
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_4

    .line 376
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventSerial_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 378
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 379
    return-void
.end method
