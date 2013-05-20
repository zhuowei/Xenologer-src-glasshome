.class public final Lcom/google/common/logging/GlassUserEventFrequencyStat;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GlassUserEventFrequencyStat.java"

# interfaces
.implements Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    }
.end annotation


# static fields
.field public static final DURATION_MS_FIELD_NUMBER:I = 0x2

.field public static final FREQUENCY_HZ_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/common/logging/GlassUserEventFrequencyStat;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private durationMs_:J

.field private frequencyHz_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/google/common/logging/GlassUserEventFrequencyStat$1;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$1;-><init>()V

    sput-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    .line 220
    const/4 v0, 0x0

    sput-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 539
    new-instance v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/logging/GlassUserEventFrequencyStat;-><init>(Z)V

    sput-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->defaultInstance:Lcom/google/common/logging/GlassUserEventFrequencyStat;

    .line 540
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->defaultInstance:Lcom/google/common/logging/GlassUserEventFrequencyStat;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->initFields()V

    .line 541
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 164
    iput-byte v5, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->memoizedIsInitialized:B

    .line 193
    iput v5, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->initFields()V

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
    if-nez v0, :cond_1

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 51
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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
    iget v5, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->bitField0_:I

    .line 64
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->frequencyHz_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 74
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 81
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->makeExtensionsImmutable()V

    throw v5

    .line 68
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->bitField0_:I

    .line 69
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->durationMs_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 76
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 77
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

    .line 80
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 81
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->makeExtensionsImmutable()V

    .line 83
    return-void

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/common/logging/GlassUserEventFrequencyStat$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventFrequencyStat;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 164
    iput-byte v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->memoizedIsInitialized:B

    .line 193
    iput v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/common/logging/GlassUserEventFrequencyStat$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 164
    iput-byte v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->memoizedIsInitialized:B

    .line 193
    iput v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/common/logging/GlassUserEventFrequencyStat;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->frequencyHz_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/common/logging/GlassUserEventFrequencyStat;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->durationMs_:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/common/logging/GlassUserEventFrequencyStat;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->defaultInstance:Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventFrequencyStat_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 161
    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->frequencyHz_:J

    .line 162
    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->durationMs_:J

    .line 163
    return-void
.end method

.method public static newBuilder()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 1

    .prologue
    .line 282
    #calls: Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->create()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    invoke-static {}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->access$100()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/common/logging/GlassUserEventFrequencyStat;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 285
    invoke-static {}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->newBuilder()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventFrequencyStat;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 232
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 238
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 248
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->defaultInstance:Lcom/google/common/logging/GlassUserEventFrequencyStat;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMs()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->durationMs_:J

    return-wide v0
.end method

.method public getFrequencyHz()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->frequencyHz_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 195
    iget v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->memoizedSerializedSize:I

    .line 196
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 209
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 198
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 199
    iget v2, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 200
    iget-wide v2, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->frequencyHz_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 203
    :cond_1
    iget v2, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 204
    iget-wide v2, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->durationMs_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 208
    iput v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->memoizedSerializedSize:I

    move v1, v0

    .line 209
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDurationMs()Z
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->bitField0_:I

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

.method public hasFrequencyHz()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 123
    iget v1, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->bitField0_:I

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
    .line 91
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventFrequencyStat_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    const-class v2, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 224
    const-string v0, "com.google.common.logging.MutableGlassExtensions$GlassUserEventFrequencyStat"

    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 226
    :cond_0
    sget-object v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    iget-byte v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->memoizedIsInitialized:B

    .line 167
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 178
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 167
    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->hasFrequencyHz()Z

    move-result v3

    if-nez v3, :cond_2

    .line 170
    iput-byte v2, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->memoizedIsInitialized:B

    move v1, v2

    .line 171
    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->hasDurationMs()Z

    move-result v3

    if-nez v3, :cond_3

    .line 174
    iput-byte v2, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->memoizedIsInitialized:B

    move v1, v2

    .line 175
    goto :goto_0

    .line 177
    :cond_3
    iput-byte v1, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->newBuilder()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 292
    new-instance v0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/common/logging/GlassUserEventFrequencyStat$1;)V

    .line 293
    .local v0, builder:Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->newBuilderForType()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->newBuilderForType()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 1

    .prologue
    .line 287
    invoke-static {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->newBuilder(Lcom/google/common/logging/GlassUserEventFrequencyStat;)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->toBuilder()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->toBuilder()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

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
    .line 216
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 183
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->getSerializedSize()I

    .line 184
    iget v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 185
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->frequencyHz_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 187
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 188
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventFrequencyStat;->durationMs_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 191
    return-void
.end method
