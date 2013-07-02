.class public final Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GlasswareMetadataEntry.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$MessagesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Messages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    }
.end annotation


# static fields
.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x2

.field public static final LANGUAGE_CODE_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private languageCode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 301
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    .line 480
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 901
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 902
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->initFields()V

    .line 903
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

    .line 245
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 432
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->memoizedIsInitialized:B

    .line 453
    iput v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->memoizedSerializedSize:I

    .line 246
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->initFields()V

    .line 247
    const/4 v3, 0x0

    .line 248
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 251
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 252
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 253
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 254
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 259
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 261
    const/4 v1, 0x1

    goto :goto_0

    .line 256
    :sswitch_0
    const/4 v1, 0x1

    .line 257
    goto :goto_0

    .line 266
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 267
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->bitField0_:I

    .line 268
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->languageCode_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 279
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 280
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 286
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->makeExtensionsImmutable()V

    throw v6

    .line 272
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 273
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->bitField0_:I

    .line 274
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->displayName_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 281
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 282
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

    .line 285
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 286
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->makeExtensionsImmutable()V

    .line 288
    return-void

    .line 254
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$1;)V
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
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 222
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 432
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->memoizedIsInitialized:B

    .line 453
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->memoizedSerializedSize:I

    .line 223
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 225
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 432
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->memoizedIsInitialized:B

    .line 453
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->memoizedSerializedSize:I

    .line 225
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 216
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->languageCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->languageCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->displayName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_GlasswareMetadataEntry_Messages_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->languageCode_:Ljava/lang/Object;

    .line 430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->displayName_:Ljava/lang/Object;

    .line 431
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1

    .prologue
    .line 542
    #calls: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->access$200()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 545
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 492
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 498
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 502
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 508
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 394
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->displayName_:Ljava/lang/Object;

    .line 395
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 396
    check-cast v1, Ljava/lang/String;

    .line 404
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 398
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 400
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->displayName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 404
    goto :goto_0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 416
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->displayName_:Ljava/lang/Object;

    .line 417
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 418
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 421
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->displayName_:Ljava/lang/Object;

    .line 424
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

.method public getLanguageCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 339
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->languageCode_:Ljava/lang/Object;

    .line 340
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 341
    check-cast v1, Ljava/lang/String;

    .line 349
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 343
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 345
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->languageCode_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 349
    goto :goto_0
.end method

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->languageCode_:Ljava/lang/Object;

    .line 363
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 364
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 367
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->languageCode_:Ljava/lang/Object;

    .line 370
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
            "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 455
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->memoizedSerializedSize:I

    .line 456
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 469
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 458
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 459
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getLanguageCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 463
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 464
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 467
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 468
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->memoizedSerializedSize:I

    move v1, v0

    .line 469
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDisplayName()Z
    .locals 2

    .prologue
    .line 384
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->bitField0_:I

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

.method public hasLanguageCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 328
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->bitField0_:I

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
    .line 296
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_GlasswareMetadataEntry_Messages_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    const-class v2, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 483
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 484
    const-string v0, "com.google.googlex.glass.common.proto.MutableGlassware$GlasswareMetadataEntry$Messages"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 486
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 434
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->memoizedIsInitialized:B

    .line 435
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 438
    :goto_0
    return v1

    .line 435
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 437
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1

    .prologue
    .line 543
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 552
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$1;)V

    .line 553
    .local v0, builder:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1

    .prologue
    .line 547
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->newBuilder(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

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
    .line 476
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

    .line 443
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getSerializedSize()I

    .line 444
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getLanguageCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 447
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 451
    return-void
.end method
