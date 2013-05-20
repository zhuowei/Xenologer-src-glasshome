.class public final Lcom/google/common/logging/GlassUserEventPerformanceStats;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GlassUserEventPerformanceStats.java"

# interfaces
.implements Lcom/google/common/logging/GlassUserEventPerformanceStatsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    }
.end annotation


# static fields
.field public static final BATTERY_CHARGE_WHEN_FULL_MAH_FIELD_NUMBER:I = 0x5

.field public static final BATTERY_STATE_OF_CHARGE_MAH_FIELD_NUMBER:I = 0x4

.field public static final BATTERY_TEMPERATURE_MILLI_CENTIGRADE_FIELD_NUMBER:I = 0x6

.field public static final BOARD_TEMPERATURE_MILLI_CENTIGRADE_FIELD_NUMBER:I = 0x3

.field public static final FREQUENCY_STAT_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/common/logging/GlassUserEventPerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOTAL_BYTES_SENT_FIELD_NUMBER:I = 0x7

.field public static final TOTAL_KERNEL_MS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/common/logging/GlassUserEventPerformanceStats;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private batteryChargeWhenFullMah_:I

.field private batteryStateOfChargeMah_:I

.field private batteryTemperatureMilliCentigrade_:I

.field private bitField0_:I

.field private boardTemperatureMilliCentigrade_:I

.field private frequencyStat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private totalBytesSent_:J

.field private totalKernelMs_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/google/common/logging/GlassUserEventPerformanceStats$1;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$1;-><init>()V

    sput-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    .line 436
    const/4 v0, 0x0

    sput-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1335
    new-instance v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;-><init>(Z)V

    sput-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->defaultInstance:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 1336
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->defaultInstance:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->initFields()V

    .line 1337
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
    const/4 v5, -0x1

    const/4 v7, 0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 347
    iput-byte v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->memoizedIsInitialized:B

    .line 389
    iput v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->initFields()V

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 48
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 49
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 51
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

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
    and-int/lit8 v5, v2, 0x1

    if-eq v5, v7, :cond_1

    .line 64
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    .line 65
    or-int/lit8 v2, v2, 0x1

    .line 67
    :cond_1
    iget-object v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    sget-object v6, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 102
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v7, :cond_2

    .line 109
    iget-object v6, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    .line 111
    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 112
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->makeExtensionsImmutable()V

    throw v5

    .line 71
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    .line 72
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalKernelMs_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 104
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 105
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    .line 77
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    goto :goto_0

    .line 81
    :sswitch_4
    iget v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    .line 82
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryStateOfChargeMah_:I

    goto :goto_0

    .line 86
    :sswitch_5
    iget v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    .line 87
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryChargeWhenFullMah_:I

    goto/16 :goto_0

    .line 91
    :sswitch_6
    iget v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    .line 92
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    goto/16 :goto_0

    .line 96
    :sswitch_7
    iget v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    .line 97
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalBytesSent_:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 108
    .end local v3           #tag:I
    :cond_3
    and-int/lit8 v5, v2, 0x1

    if-ne v5, v7, :cond_4

    .line 109
    iget-object v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    .line 111
    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 112
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->makeExtensionsImmutable()V

    .line 114
    return-void

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/common/logging/GlassUserEventPerformanceStats$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventPerformanceStats;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 347
    iput-byte v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->memoizedIsInitialized:B

    .line 389
    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/common/logging/GlassUserEventPerformanceStats$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 347
    iput-byte v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->memoizedIsInitialized:B

    .line 389
    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/google/common/logging/GlassUserEventPerformanceStats;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalBytesSent_:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    return p1
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/common/logging/GlassUserEventPerformanceStats;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/common/logging/GlassUserEventPerformanceStats;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalKernelMs_:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryStateOfChargeMah_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryChargeWhenFullMah_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->defaultInstance:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventPerformanceStats_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 339
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    .line 340
    iput-wide v2, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalKernelMs_:J

    .line 341
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    .line 342
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryStateOfChargeMah_:I

    .line 343
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryChargeWhenFullMah_:I

    .line 344
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    .line 345
    iput-wide v2, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalBytesSent_:J

    .line 346
    return-void
.end method

.method public static newBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 498
    #calls: Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->create()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->access$100()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 501
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->newBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 448
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 454
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 458
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 464
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method


# virtual methods
.method public getBatteryChargeWhenFullMah()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryChargeWhenFullMah_:I

    return v0
.end method

.method public getBatteryStateOfChargeMah()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryStateOfChargeMah_:I

    return v0
.end method

.method public getBatteryTemperatureMilliCentigrade()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    return v0
.end method

.method public getBoardTemperatureMilliCentigrade()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->defaultInstance:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyStat(I)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "index"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method

.method public getFrequencyStatCount()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFrequencyStatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    return-object v0
.end method

.method public getFrequencyStatOrBuilder(I)Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;

    return-object v0
.end method

.method public getFrequencyStatOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/common/logging/GlassUserEventPerformanceStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 391
    iget v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->memoizedSerializedSize:I

    .line 392
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 425
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 394
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 395
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 396
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 399
    :cond_1
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    .line 400
    iget-wide v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalKernelMs_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 403
    :cond_2
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3

    .line 404
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 407
    :cond_3
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4

    .line 408
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryStateOfChargeMah_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 411
    :cond_4
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 412
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryChargeWhenFullMah_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 415
    :cond_5
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    .line 416
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 419
    :cond_6
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7

    .line 420
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalBytesSent_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 423
    :cond_7
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 424
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->memoizedSerializedSize:I

    move v2, v1

    .line 425
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getTotalBytesSent()J
    .locals 2

    .prologue
    .line 335
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalBytesSent_:J

    return-wide v0
.end method

.method public getTotalKernelMs()J
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalKernelMs_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBatteryChargeWhenFullMah()Z
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

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

.method public hasBatteryStateOfChargeMah()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

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

.method public hasBatteryTemperatureMilliCentigrade()Z
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

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

.method public hasBoardTemperatureMilliCentigrade()Z
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

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

.method public hasTotalBytesSent()Z
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

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

.method public hasTotalKernelMs()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 209
    iget v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

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
    .line 122
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventPerformanceStats_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    const-class v2, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 439
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 440
    const-string v0, "com.google.common.logging.MutableGlassExtensions$GlassUserEventPerformanceStats"

    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 442
    :cond_0
    sget-object v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 349
    iget-byte v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->memoizedIsInitialized:B

    .line 350
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 359
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 350
    goto :goto_0

    .line 352
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getFrequencyStatCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 353
    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getFrequencyStat(I)Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 354
    iput-byte v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->memoizedIsInitialized:B

    move v2, v3

    .line 355
    goto :goto_0

    .line 352
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    :cond_3
    iput-byte v2, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 499
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->newBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 508
    new-instance v0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/common/logging/GlassUserEventPerformanceStats$1;)V

    .line 509
    .local v0, builder:Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->newBuilderForType()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->newBuilderForType()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-static {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->newBuilder(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->toBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->toBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

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
    .line 432
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

    .line 364
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getSerializedSize()I

    .line 365
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    iget v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 369
    iget-wide v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalKernelMs_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 371
    :cond_1
    iget v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 372
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 374
    :cond_2
    iget v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 375
    iget v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryStateOfChargeMah_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 377
    :cond_3
    iget v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 378
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryChargeWhenFullMah_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 380
    :cond_4
    iget v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 381
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 383
    :cond_5
    iget v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 384
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalBytesSent_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 386
    :cond_6
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 387
    return-void
.end method
