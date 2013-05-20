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
    .line 117
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 516
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1319
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    .line 1320
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->initFields()V

    .line 1321
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

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 440
    iput-byte v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedIsInitialized:B

    .line 473
    iput v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->initFields()V

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 49
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 50
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 52
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

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
    iget v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    .line 65
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 95
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 102
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->makeExtensionsImmutable()V

    throw v5

    .line 69
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    .line 70
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 97
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 98
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

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    .line 75
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->confidence_:F

    goto :goto_0

    .line 79
    :sswitch_4
    iget v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    .line 80
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 84
    :sswitch_5
    iget v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    .line 85
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 89
    :sswitch_6
    iget v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    .line 90
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 101
    .end local v3           #tag:I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 102
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->makeExtensionsImmutable()V

    .line 104
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

    .line 440
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedIsInitialized:B

    .line 473
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

    .line 440
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedIsInitialized:B

    .line 473
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
    .line 107
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;

    .line 434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;

    .line 435
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->confidence_:F

    .line 436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 439
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 578
    #calls: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->access$100()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 581
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
    .line 558
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
    .line 564
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
    .line 528
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
    .line 534
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
    .line 569
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
    .line 575
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
    .line 548
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
    .line 554
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
    .line 538
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
    .line 544
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
    .line 284
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 285
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 286
    check-cast v1, Ljava/lang/String;

    .line 294
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 288
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 290
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 294
    goto :goto_0
.end method

.method public getAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 307
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 308
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 311
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 314
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
    .line 338
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 339
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 340
    check-cast v1, Ljava/lang/String;

    .line 348
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 342
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 344
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 348
    goto :goto_0
.end method

.method public getAudioClipPlayUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 361
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 362
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 365
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 368
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
    .line 261
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
    .line 153
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;

    .line 154
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 155
    check-cast v1, Ljava/lang/String;

    .line 163
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 157
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 159
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 163
    goto :goto_0
.end method

.method public getHtmlTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;

    .line 176
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 177
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 180
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;

    .line 183
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
    .line 129
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPlainTranscript()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;

    .line 208
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 209
    check-cast v1, Ljava/lang/String;

    .line 217
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 211
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 213
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 217
    goto :goto_0
.end method

.method public getPlainTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;

    .line 230
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 231
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 234
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;

    .line 237
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
    .line 396
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 397
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 398
    check-cast v1, Ljava/lang/String;

    .line 406
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 400
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 402
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 406
    goto :goto_0
.end method

.method public getRawAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 420
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 421
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 422
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 425
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 428
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

    .line 475
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedSerializedSize:I

    .line 476
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 505
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 478
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 479
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getHtmlTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 483
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 484
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getPlainTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 487
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 488
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->confidence_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 491
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 492
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 495
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 496
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getAudioClipPlayUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 499
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 500
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getRawAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 503
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 504
    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 505
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
    .line 274
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
    .line 328
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
    .line 251
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

    .line 143
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
    .line 197
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
    .line 384
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
    .line 112
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
    .line 519
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 520
    const-string v0, "com.google.googlex.glass.common.proto.MutableAudioClip$PostAudioClipResponse"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 522
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 442
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedIsInitialized:B

    .line 443
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 446
    :goto_0
    return v1

    .line 443
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 445
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 579
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 588
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$1;)V

    .line 589
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
    .line 583
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
    .line 512
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

    .line 451
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getSerializedSize()I

    .line 452
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getHtmlTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 455
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getPlainTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 458
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 459
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->confidence_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 461
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 462
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 464
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 465
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getAudioClipPlayUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 467
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 468
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getRawAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 470
    :cond_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 471
    return-void
.end method
