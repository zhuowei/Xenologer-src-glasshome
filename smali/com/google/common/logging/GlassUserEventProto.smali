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
    .line 119
    new-instance v0, Lcom/google/common/logging/GlassUserEventProto$1;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventProto$1;-><init>()V

    sput-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 418
    const/4 v0, 0x0

    sput-object v0, Lcom/google/common/logging/GlassUserEventProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1145
    new-instance v0, Lcom/google/common/logging/GlassUserEventProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/logging/GlassUserEventProto;-><init>(Z)V

    sput-object v0, Lcom/google/common/logging/GlassUserEventProto;->defaultInstance:Lcom/google/common/logging/GlassUserEventProto;

    .line 1146
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->defaultInstance:Lcom/google/common/logging/GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventProto;->initFields()V

    .line 1147
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

    .line 343
    iput-byte v6, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedIsInitialized:B

    .line 379
    iput v6, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventProto;->initFields()V

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
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/common/logging/GlassUserEventProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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
    iget v6, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    .line 64
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 97
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/GlassUserEventProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 104
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->makeExtensionsImmutable()V

    throw v6

    .line 68
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    .line 69
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 99
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 100
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

    .line 73
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    iget v6, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    .line 74
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    goto :goto_0

    .line 78
    :sswitch_4
    const/4 v3, 0x0

    .line 79
    .local v3, subBuilder:Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    iget v6, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1

    .line 80
    iget-object v6, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-virtual {v6}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->toBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v3

    .line 82
    :cond_1
    sget-object v6, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    iput-object v6, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 83
    if-eqz v3, :cond_2

    .line 84
    iget-object v6, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-virtual {v3, v6}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 85
    invoke-virtual {v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 87
    :cond_2
    iget v6, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    goto/16 :goto_0

    .line 91
    .end local v3           #subBuilder:Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    :sswitch_5
    iget v6, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    .line 92
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/common/logging/GlassUserEventProto;->eventSerial_:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 103
    .end local v4           #tag:I
    :cond_3
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassUserEventProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 104
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->makeExtensionsImmutable()V

    .line 106
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

    .line 343
    iput-byte v0, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedIsInitialized:B

    .line 379
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

    .line 343
    iput-byte v0, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedIsInitialized:B

    .line 379
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
    .line 109
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 337
    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J

    .line 338
    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventSerial_:J

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    .line 341
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 342
    return-void
.end method

.method public static newBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 480
    #calls: Lcom/google/common/logging/GlassUserEventProto$Builder;->create()Lcom/google/common/logging/GlassUserEventProto$Builder;
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto$Builder;->access$100()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 483
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
    .line 460
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
    .line 466
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
    .line 430
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
    .line 436
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
    .line 471
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
    .line 477
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
    .line 450
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
    .line 456
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
    .line 440
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
    .line 446
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
    .line 269
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    .line 270
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 271
    check-cast v1, Ljava/lang/String;

    .line 279
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 273
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 275
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    iput-object v2, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 279
    goto :goto_0
.end method

.method public getEventDataBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    .line 292
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 293
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 296
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;

    .line 299
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
    .line 192
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventSerial_:J

    return-wide v0
.end method

.method public getEventTimeMs()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J

    return-wide v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;

    .line 216
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 217
    check-cast v1, Ljava/lang/String;

    .line 225
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 219
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 221
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    iput-object v2, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 225
    goto :goto_0
.end method

.method public getEventTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 237
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;

    .line 238
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 239
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 242
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;

    .line 245
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
    .line 131
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPerformanceStats()Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public getPerformanceStatsOrBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStatsOrBuilder;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 381
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedSerializedSize:I

    .line 382
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 407
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 384
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 385
    iget v2, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 386
    iget-wide v2, p0, Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 389
    :cond_1
    iget v2, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_2

    .line 390
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getEventTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 393
    :cond_2
    iget v2, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 394
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getEventDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 397
    :cond_3
    iget v2, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 398
    iget-object v2, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 401
    :cond_4
    iget v2, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_5

    .line 402
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/common/logging/GlassUserEventProto;->eventSerial_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 405
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 406
    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedSerializedSize:I

    move v1, v0

    .line 407
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
    .line 259
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
    .line 178
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

    .line 148
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
    .line 205
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
    .line 313
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
    .line 114
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
    .line 421
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 422
    const-string v0, "com.google.common.logging.MutableGlassExtensions$GlassUserEventProto"

    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventProto;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/common/logging/GlassUserEventProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 424
    :cond_0
    sget-object v0, Lcom/google/common/logging/GlassUserEventProto;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 345
    iget-byte v0, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedIsInitialized:B

    .line 346
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 355
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 346
    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->hasPerformanceStats()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getPerformanceStats()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 350
    iput-byte v2, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedIsInitialized:B

    move v1, v2

    .line 351
    goto :goto_0

    .line 354
    :cond_2
    iput-byte v1, p0, Lcom/google/common/logging/GlassUserEventProto;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 481
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->newBuilder()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 490
    new-instance v0, Lcom/google/common/logging/GlassUserEventProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/logging/GlassUserEventProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/common/logging/GlassUserEventProto$1;)V

    .line 491
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
    .line 485
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
    .line 414
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

    .line 360
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getSerializedSize()I

    .line 361
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 362
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 364
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getEventTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 367
    :cond_1
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 368
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getEventDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 370
    :cond_2
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 371
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 373
    :cond_3
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_4

    .line 374
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/common/logging/GlassUserEventProto;->eventSerial_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 376
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 377
    return-void
.end method
