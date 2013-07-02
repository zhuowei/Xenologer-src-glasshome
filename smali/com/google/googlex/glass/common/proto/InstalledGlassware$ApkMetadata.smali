.class public final Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
.super Lcom/google/protobuf/GeneratedMessage;
.source "InstalledGlassware.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/InstalledGlassware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApkMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    }
.end annotation


# static fields
.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_LABEL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private packageName_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private versionLabel_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 449
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 864
    new-instance v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->defaultInstance:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 865
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->defaultInstance:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->initFields()V

    .line 866
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

    .line 217
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 401
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->memoizedIsInitialized:B

    .line 422
    iput v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->memoizedSerializedSize:I

    .line 218
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->initFields()V

    .line 219
    const/4 v3, 0x0

    .line 220
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 223
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 224
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 225
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 226
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 231
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 233
    const/4 v1, 0x1

    goto :goto_0

    .line 228
    :sswitch_0
    const/4 v1, 0x1

    .line 229
    goto :goto_0

    .line 238
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 239
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->bitField0_:I

    .line 240
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->versionLabel_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 251
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 252
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 258
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->makeExtensionsImmutable()V

    throw v6

    .line 244
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 245
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->bitField0_:I

    .line 246
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->packageName_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 253
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 254
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

    .line 257
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 258
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->makeExtensionsImmutable()V

    .line 260
    return-void

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/InstalledGlassware$1;)V
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
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 194
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 401
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->memoizedIsInitialized:B

    .line 422
    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->memoizedSerializedSize:I

    .line 195
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/InstalledGlassware$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 197
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 401
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->memoizedIsInitialized:B

    .line 422
    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->memoizedSerializedSize:I

    .line 197
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->versionLabel_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->versionLabel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->packageName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->packageName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    iput p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->defaultInstance:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_ApkMetadata_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 398
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->versionLabel_:Ljava/lang/Object;

    .line 399
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->packageName_:Ljava/lang/Object;

    .line 400
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1

    .prologue
    .line 511
    #calls: Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->create()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->access$200()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 514
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->newBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 461
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 467
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 471
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 477
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->defaultInstance:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 363
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->packageName_:Ljava/lang/Object;

    .line 364
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 365
    check-cast v1, Ljava/lang/String;

    .line 373
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 367
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 369
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->packageName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 373
    goto :goto_0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 385
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->packageName_:Ljava/lang/Object;

    .line 386
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 387
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 390
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->packageName_:Ljava/lang/Object;

    .line 393
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
            "Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 424
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->memoizedSerializedSize:I

    .line 425
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 438
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 427
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 428
    iget v2, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getVersionLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 432
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 433
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getPackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 437
    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->memoizedSerializedSize:I

    move v1, v0

    .line 438
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersionLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->versionLabel_:Ljava/lang/Object;

    .line 310
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 311
    check-cast v1, Ljava/lang/String;

    .line 319
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 313
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 315
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->versionLabel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 319
    goto :goto_0
.end method

.method public getVersionLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 331
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->versionLabel_:Ljava/lang/Object;

    .line 332
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 333
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 336
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->versionLabel_:Ljava/lang/Object;

    .line 339
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

.method public hasPackageName()Z
    .locals 2

    .prologue
    .line 353
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->bitField0_:I

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

.method public hasVersionLabel()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 299
    iget v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->bitField0_:I

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
    .line 268
    sget-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_ApkMetadata_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    const-class v2, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 453
    const-string v0, "com.google.googlex.glass.common.proto.MutableBoutique$InstalledGlassware$ApkMetadata"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 455
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 403
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->memoizedIsInitialized:B

    .line 404
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 407
    :goto_0
    return v1

    .line 404
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 406
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1

    .prologue
    .line 512
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->newBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 521
    new-instance v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/InstalledGlassware$1;)V

    .line 522
    .local v0, builder:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->newBuilderForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->newBuilderForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1

    .prologue
    .line 516
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->newBuilder(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->toBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->toBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

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
    .line 445
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

    .line 412
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getSerializedSize()I

    .line 413
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getVersionLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 416
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getPackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 420
    return-void
.end method
