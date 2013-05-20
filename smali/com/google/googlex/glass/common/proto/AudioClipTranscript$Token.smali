.class public final Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AudioClipTranscript.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private token_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    .line 396
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 754
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    .line 755
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->initFields()V

    .line 756
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

    .line 197
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 348
    iput-byte v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->memoizedIsInitialized:B

    .line 369
    iput v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->memoizedSerializedSize:I

    .line 198
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->initFields()V

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 203
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 204
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 205
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 206
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 211
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 213
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :sswitch_0
    const/4 v0, 0x1

    .line 209
    goto :goto_0

    .line 218
    :sswitch_1
    iget v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->bitField0_:I

    .line 219
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->confidence_:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 229
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 236
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->makeExtensionsImmutable()V

    throw v5

    .line 223
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->bitField0_:I

    .line 224
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->token_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 231
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 232
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

    .line 235
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 236
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->makeExtensionsImmutable()V

    .line 238
    return-void

    .line 206
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x15 -> :sswitch_1
        0x1a -> :sswitch_2
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
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 174
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 348
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->memoizedIsInitialized:B

    .line 369
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->memoizedSerializedSize:I

    .line 175
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 176
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AudioClipTranscript$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 177
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 348
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->memoizedIsInitialized:B

    .line 369
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->memoizedSerializedSize:I

    .line 177
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 168
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->confidence_:F

    return p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->token_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->token_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->confidence_:F

    .line 346
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->token_:Ljava/lang/Object;

    .line 347
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1

    .prologue
    .line 458
    #calls: Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->create()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->access$200()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 461
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->newBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 408
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 414
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 418
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 424
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->confidence_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->defaultInstance:Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

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
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 371
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->memoizedSerializedSize:I

    .line 372
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 385
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 374
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 375
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 376
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->confidence_:F

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 379
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 380
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 383
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 384
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->memoizedSerializedSize:I

    move v1, v0

    .line 385
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 310
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->token_:Ljava/lang/Object;

    .line 311
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 312
    check-cast v1, Ljava/lang/String;

    .line 320
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 314
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 316
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->token_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 320
    goto :goto_0
.end method

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 332
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->token_:Ljava/lang/Object;

    .line 333
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 334
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 337
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->token_:Ljava/lang/Object;

    .line 340
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

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 277
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToken()Z
    .locals 2

    .prologue
    .line 300
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->bitField0_:I

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
    .line 246
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    const-class v2, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 400
    const-string v0, "com.google.googlex.glass.common.proto.MutableAudioClip$AudioClipTranscript$Token"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 402
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 350
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->memoizedIsInitialized:B

    .line 351
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 354
    :goto_0
    return v1

    .line 351
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 353
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1

    .prologue
    .line 459
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->newBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 468
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AudioClipTranscript$1;)V

    .line 469
    .local v0, builder:Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->newBuilderForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->newBuilderForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1

    .prologue
    .line 463
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->newBuilder(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->toBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->toBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

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
    .line 392
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

    .line 359
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getSerializedSize()I

    .line 360
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 361
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->confidence_:F

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 363
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 364
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 367
    return-void
.end method
