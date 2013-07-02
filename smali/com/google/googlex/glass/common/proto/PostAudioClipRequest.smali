.class public final Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PostAudioClipRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/PostAudioClipRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_FORMAT_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_PLATFORM_FIELD_NUMBER:I = 0x7

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAW_AUDIO_FIELD_NUMBER:I = 0x2

.field public static final STORE_AUDIO_FIELD_NUMBER:I = 0x5

.field public static final STORE_RAW_AUDIO_FIELD_NUMBER:I = 0x8

.field public static final STORE_TRANSCRIPT_FIELD_NUMBER:I = 0x6

.field public static final TRANSCRIBE_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

.field private bitField0_:I

.field private clientPlatform_:Ljava/lang/Object;

.field private id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private rawAudio_:Lcom/google/protobuf/ByteString;

.field private storeAudio_:Z

.field private storeRawAudio_:Z

.field private storeTranscript_:Z

.field private transcribe_:Z

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 496
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1345
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    .line 1346
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->initFields()V

    .line 1347
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
    const/4 v9, -0x1

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 406
    iput-byte v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->memoizedIsInitialized:B

    .line 445
    iput v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->initFields()V

    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v7

    .line 49
    .local v7, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 50
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 52
    .local v6, tag:I
    sparse-switch v6, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v7, p2, v6}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v9

    if-nez v9, :cond_0

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
    const/4 v5, 0x0

    .line 65
    .local v5, subBuilder:Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    iget v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 66
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/AudioClipId;->toBuilder()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v5

    .line 68
    :cond_1
    sget-object v9, Lcom/google/googlex/glass/common/proto/AudioClipId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/AudioClipId;

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 69
    if-eqz v5, :cond_2

    .line 70
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    invoke-virtual {v5, v9}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    .line 71
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 73
    :cond_2
    iget v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 120
    .end local v5           #subBuilder:Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .end local v6           #tag:I
    :catch_0
    move-exception v2

    .line 121
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v9

    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 127
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->makeExtensionsImmutable()V

    throw v9

    .line 77
    .restart local v6       #tag:I
    :sswitch_2
    :try_start_2
    iget v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    .line 78
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->rawAudio_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 122
    .end local v6           #tag:I
    :catch_1
    move-exception v2

    .line 123
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v9, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    .end local v2           #e:Ljava/io/IOException;
    .restart local v6       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 83
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/AudioFormat;->valueOf(I)Lcom/google/googlex/glass/common/proto/AudioFormat;

    move-result-object v8

    .line 84
    .local v8, value:Lcom/google/googlex/glass/common/proto/AudioFormat;
    if-nez v8, :cond_3

    .line 85
    const/4 v9, 0x3

    invoke-virtual {v7, v9, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 87
    :cond_3
    iget v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    .line 88
    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    goto/16 :goto_0

    .line 93
    .end local v4           #rawValue:I
    .end local v8           #value:Lcom/google/googlex/glass/common/proto/AudioFormat;
    :sswitch_4
    iget v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    .line 94
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->transcribe_:Z

    goto/16 :goto_0

    .line 98
    :sswitch_5
    iget v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    .line 99
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeAudio_:Z

    goto/16 :goto_0

    .line 103
    :sswitch_6
    iget v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x20

    iput v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    .line 104
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeTranscript_:Z

    goto/16 :goto_0

    .line 108
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 109
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x40

    iput v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    .line 110
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->clientPlatform_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 114
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_8
    iget v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    or-int/lit16 v9, v9, 0x80

    iput v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    .line 115
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeRawAudio_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 126
    .end local v6           #tag:I
    :cond_4
    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 127
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->makeExtensionsImmutable()V

    .line 129
    return-void

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 406
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->memoizedIsInitialized:B

    .line 445
    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 406
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->memoizedIsInitialized:B

    .line 445
    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeTranscript_:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->clientPlatform_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->clientPlatform_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeRawAudio_:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->rawAudio_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Lcom/google/googlex/glass/common/proto/AudioFormat;)Lcom/google/googlex/glass/common/proto/AudioFormat;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->transcribe_:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeAudio_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 397
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 398
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->rawAudio_:Lcom/google/protobuf/ByteString;

    .line 399
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioFormat;->AMR:Lcom/google/googlex/glass/common/proto/AudioFormat;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 400
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->transcribe_:Z

    .line 401
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeAudio_:Z

    .line 402
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeTranscript_:Z

    .line 403
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->clientPlatform_:Ljava/lang/Object;

    .line 404
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeRawAudio_:Z

    .line 405
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 558
    #calls: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->access$100()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 561
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 508
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 514
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 518
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 524
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    return-object v0
.end method


# virtual methods
.method public getAudioFormat()Lcom/google/googlex/glass/common/proto/AudioFormat;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    return-object v0
.end method

.method public getClientPlatform()Ljava/lang/String;
    .locals 4

    .prologue
    .line 336
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->clientPlatform_:Ljava/lang/Object;

    .line 337
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 338
    check-cast v1, Ljava/lang/String;

    .line 346
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 340
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 342
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->clientPlatform_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 346
    goto :goto_0
.end method

.method public getClientPlatformBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->clientPlatform_:Ljava/lang/Object;

    .line 360
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 361
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 364
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->clientPlatform_:Ljava/lang/Object;

    .line 367
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public getIdOrBuilder()Lcom/google/googlex/glass/common/proto/AudioClipIdOrBuilder;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRawAudio()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->rawAudio_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 447
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->memoizedSerializedSize:I

    .line 448
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 485
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 450
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 451
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 452
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 455
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 456
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->rawAudio_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 459
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 460
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/AudioFormat;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 463
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 464
    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->transcribe_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 467
    :cond_4
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 468
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeAudio_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 471
    :cond_5
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 472
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeTranscript_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 475
    :cond_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 476
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getClientPlatformBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 479
    :cond_7
    iget v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 480
    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeRawAudio_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 483
    :cond_8
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 484
    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 485
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getStoreAudio()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeAudio_:Z

    return v0
.end method

.method public getStoreRawAudio()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeRawAudio_:Z

    return v0
.end method

.method public getStoreTranscript()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeTranscript_:Z

    return v0
.end method

.method public getTranscribe()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->transcribe_:Z

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAudioFormat()Z
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

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

.method public hasClientPlatform()Z
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 168
    iget v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRawAudio()Z
    .locals 2

    .prologue
    .line 201
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

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

.method public hasStoreAudio()Z
    .locals 2

    .prologue
    .line 274
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

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

.method public hasStoreRawAudio()Z
    .locals 2

    .prologue
    .line 382
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStoreTranscript()Z
    .locals 2

    .prologue
    .line 300
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

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

.method public hasTranscribe()Z
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 137
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 499
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 500
    const-string v0, "com.google.googlex.glass.common.proto.MutableAudioClip$PostAudioClipRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 502
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 408
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->memoizedIsInitialized:B

    .line 409
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 412
    :goto_0
    return v1

    .line 409
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 411
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 559
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 568
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$1;)V

    .line 569
    .local v0, builder:Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 563
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->newBuilder(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

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
    .line 492
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 417
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getSerializedSize()I

    .line 418
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 421
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 422
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->rawAudio_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 424
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 425
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/AudioFormat;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 427
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 428
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->transcribe_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 430
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 431
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeAudio_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 433
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 434
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeTranscript_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 436
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 437
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getClientPlatformBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 439
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 440
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeRawAudio_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 442
    :cond_7
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 443
    return-void
.end method
