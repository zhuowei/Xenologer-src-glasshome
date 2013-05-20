.class public final Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AudioClipTranscript.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AudioClipTranscriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;,
        Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;,
        Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private token_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    .line 840
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1314
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    .line 1315
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->initFields()V

    .line 1316
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
    const/4 v5, -0x1

    const/4 v8, 0x1

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 799
    iput-byte v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->memoizedIsInitialized:B

    .line 817
    iput v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->initFields()V

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
    if-nez v0, :cond_3

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 52
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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
    and-int/lit8 v5, v2, 0x1

    if-eq v5, v8, :cond_1

    .line 65
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    .line 66
    or-int/lit8 v2, v2, 0x1

    .line 68
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    const/4 v6, 0x1

    sget-object v7, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v8, :cond_2

    .line 81
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    .line 83
    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 84
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->makeExtensionsImmutable()V

    throw v5

    .line 80
    :cond_3
    and-int/lit8 v5, v2, 0x1

    if-ne v5, v8, :cond_4

    .line 81
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    .line 83
    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 84
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->makeExtensionsImmutable()V

    .line 86
    return-void

    .line 76
    :catch_1
    move-exception v1

    .line 77
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/AudioClipTranscript$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 799
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->memoizedIsInitialized:B

    .line 817
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AudioClipTranscript$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 799
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->memoizedIsInitialized:B

    .line 817
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipTranscript_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 797
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    .line 798
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1

    .prologue
    .line 902
    #calls: Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->create()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->access$900()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 905
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->newBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 888
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 852
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 858
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 893
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 899
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 862
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 868
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 819
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->memoizedSerializedSize:I

    .line 820
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 829
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 822
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 823
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 824
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 827
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 828
    iput v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->memoizedSerializedSize:I

    move v2, v1

    .line 829
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getToken(I)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1
    .parameter "index"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method

.method public getTokenCount()I
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    return-object v0
.end method

.method public getTokenOrBuilder(I)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;

    return-object v0
.end method

.method public getTokenOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 94
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipTranscript_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    const-class v2, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 843
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 844
    const-string v0, "com.google.googlex.glass.common.proto.MutableAudioClip$AudioClipTranscript"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 846
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 801
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->memoizedIsInitialized:B

    .line 802
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 805
    :goto_0
    return v1

    .line 802
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 804
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1

    .prologue
    .line 903
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->newBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 912
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AudioClipTranscript$1;)V

    .line 913
    .local v0, builder:Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->newBuilderForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->newBuilderForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->newBuilder(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->toBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->toBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

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
    .line 836
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
    .line 810
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->getSerializedSize()I

    .line 811
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 812
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 815
    return-void
.end method
