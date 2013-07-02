.class public final Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PostAudioClipResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/PostAudioClipResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_CLIP_DOWNLOAD_URL_FIELD_NUMBER:I = 0x4

.field public static final AUDIO_CLIP_PLAY_URL_FIELD_NUMBER:I = 0x5

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x3

.field public static final HTML_TRANSCRIPT_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAIN_TRANSCRIPT_FIELD_NUMBER:I = 0x2

.field public static final RAW_AUDIO_CLIP_DOWNLOAD_URL_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private audioClipDownloadUrl_:Ljava/lang/Object;

.field private audioClipPlayUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private confidence_:F

.field private htmlTranscript_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private plainTranscript_:Ljava/lang/Object;

.field private rawAudioClipDownloadUrl_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 521
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1339
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    .line 1340
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->initFields()V

    .line 1341
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

    .line 445
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedIsInitialized:B

    .line 478
    iput v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->initFields()V

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
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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
    iget v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    .line 66
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 100
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 101
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 107
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->makeExtensionsImmutable()V

    throw v6

    .line 70
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 71
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    .line 72
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 102
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 103
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

    .line 76
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    iget v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    .line 77
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->confidence_:F

    goto :goto_0

    .line 81
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 82
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    .line 83
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 87
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 88
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    .line 89
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 93
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 94
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    .line 95
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 106
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 107
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->makeExtensionsImmutable()V

    .line 109
    return-void

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 445
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedIsInitialized:B

    .line 478
    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 445
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedIsInitialized:B

    .line 478
    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->confidence_:F

    return p1
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;

    .line 439
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->confidence_:F

    .line 441
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 442
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 443
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 444
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 583
    #calls: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->access$100()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 586
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 533
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 539
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 543
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 549
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    return-object v0
.end method


# virtual methods
.method public getAudioClipDownloadUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 289
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 290
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 291
    check-cast v1, Ljava/lang/String;

    .line 299
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 293
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 295
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 299
    goto :goto_0
.end method

.method public getAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 311
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 312
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 313
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 316
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 319
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

.method public getAudioClipPlayUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 343
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 344
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 345
    check-cast v1, Ljava/lang/String;

    .line 353
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 347
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 349
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 353
    goto :goto_0
.end method

.method public getAudioClipPlayUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 365
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 366
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 367
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 370
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 373
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

.method public getConfidence()F
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->confidence_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlTranscript()Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;

    .line 159
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 160
    check-cast v1, Ljava/lang/String;

    .line 168
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 162
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 164
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 168
    goto :goto_0
.end method

.method public getHtmlTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;

    .line 181
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 182
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 185
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;

    .line 188
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
            "Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPlainTranscript()Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;

    .line 213
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 214
    check-cast v1, Ljava/lang/String;

    .line 222
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 216
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 218
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 222
    goto :goto_0
.end method

.method public getPlainTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;

    .line 235
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 236
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 239
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;

    .line 242
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

.method public getRawAudioClipDownloadUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 401
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 402
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 403
    check-cast v1, Ljava/lang/String;

    .line 411
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 405
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 407
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 411
    goto :goto_0
.end method

.method public getRawAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 425
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 426
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 427
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 430
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 433
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

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 480
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedSerializedSize:I

    .line 481
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 510
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 483
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 484
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getHtmlTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 488
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 489
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getPlainTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 492
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 493
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->confidence_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 496
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 500
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 501
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getAudioClipPlayUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 504
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 505
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getRawAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 508
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 509
    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 510
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAudioClipDownloadUrl()Z
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

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

.method public hasAudioClipPlayUrl()Z
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

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

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

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

.method public hasHtmlTranscript()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 148
    iget v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlainTranscript()Z
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

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

.method public hasRawAudioClipDownloadUrl()Z
    .locals 2

    .prologue
    .line 389
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 525
    const-string v0, "com.google.googlex.glass.common.proto.MutableAudioClip$PostAudioClipResponse"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 527
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 447
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedIsInitialized:B

    .line 448
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 451
    :goto_0
    return v1

    .line 448
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 450
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 584
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 593
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$1;)V

    .line 594
    .local v0, builder:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 588
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->newBuilder(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

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
    .line 517
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

    .line 456
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getSerializedSize()I

    .line 457
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getHtmlTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 460
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getPlainTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 463
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 464
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->confidence_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 466
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 467
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 469
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 470
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getAudioClipPlayUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 472
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 473
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getRawAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 475
    :cond_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 476
    return-void
.end method
