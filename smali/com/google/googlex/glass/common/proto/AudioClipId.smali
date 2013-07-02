.class public final Lcom/google/googlex/glass/common/proto/AudioClipId;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AudioClipId.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AudioClipIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    }
.end annotation


# static fields
.field public static final EMAIL_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipId;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANDOM_FIELD_NUMBER:I = 0x3

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipId;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private emailAddress_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private random_:Lcom/google/protobuf/ByteString;

.field private timestamp_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipId$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AudioClipId$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    .line 279
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 701
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/AudioClipId;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 702
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipId;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->initFields()V

    .line 703
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

    .line 224
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->memoizedIsInitialized:B

    .line 248
    iput v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->initFields()V

    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 49
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 50
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 52
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/AudioClipId;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

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
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    .line 66
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->emailAddress_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 81
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 88
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->makeExtensionsImmutable()V

    throw v6

    .line 70
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    .line 71
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->timestamp_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 83
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 84
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
    iget v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    .line 76
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->random_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 87
    .end local v4           #tag:I
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 88
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->makeExtensionsImmutable()V

    .line 90
    return-void

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/AudioClipId$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipId;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 224
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->memoizedIsInitialized:B

    .line 248
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AudioClipId$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipId;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 224
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->memoizedIsInitialized:B

    .line 248
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/AudioClipId;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->emailAddress_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/AudioClipId;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->emailAddress_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/AudioClipId;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/AudioClipId;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->random_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/AudioClipId;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->emailAddress_:Ljava/lang/Object;

    .line 221
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->timestamp_:J

    .line 222
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->random_:Lcom/google/protobuf/ByteString;

    .line 223
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1

    .prologue
    .line 341
    #calls: Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->create()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->access$100()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 344
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->newBuilder()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 291
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 297
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 301
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 307
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->emailAddress_:Ljava/lang/Object;

    .line 140
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 141
    check-cast v1, Ljava/lang/String;

    .line 149
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 143
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 145
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->emailAddress_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 149
    goto :goto_0
.end method

.method public getEmailAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->emailAddress_:Ljava/lang/Object;

    .line 162
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 163
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 166
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->emailAddress_:Ljava/lang/Object;

    .line 169
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
            "Lcom/google/googlex/glass/common/proto/AudioClipId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRandom()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->random_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 250
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->memoizedSerializedSize:I

    .line 251
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 268
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 253
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 254
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getEmailAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 258
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 259
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 262
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 263
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->random_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 266
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 267
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->memoizedSerializedSize:I

    move v1, v0

    .line 268
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->timestamp_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasEmailAddress()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 129
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRandom()Z
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

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
    .line 98
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipId_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AudioClipId;

    const-class v2, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 283
    const-string v0, "com.google.googlex.glass.common.proto.MutableAudioClip$AudioClipId"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 285
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipId;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 226
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->memoizedIsInitialized:B

    .line 227
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 230
    :goto_0
    return v1

    .line 227
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 229
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->newBuilder()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 351
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AudioClipId$1;)V

    .line 352
    .local v0, builder:Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->newBuilderForType()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipId;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->newBuilderForType()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1

    .prologue
    .line 346
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->newBuilder(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->toBuilder()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->toBuilder()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

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
    .line 275
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

    .line 235
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getSerializedSize()I

    .line 236
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getEmailAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 239
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 240
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 242
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 243
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipId;->random_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 246
    return-void
.end method
