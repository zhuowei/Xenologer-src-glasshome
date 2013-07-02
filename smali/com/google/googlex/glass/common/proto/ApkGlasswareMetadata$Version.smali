.class public final Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ApkGlasswareMetadata.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    }
.end annotation


# static fields
.field public static final LABEL_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPLOAD_TIMESTAMP_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private uploadTimestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    .line 413
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 786
    new-instance v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->defaultInstance:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    .line 787
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->defaultInstance:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->initFields()V

    .line 788
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

    .line 207
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 365
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->memoizedIsInitialized:B

    .line 386
    iput v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->memoizedSerializedSize:I

    .line 208
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->initFields()V

    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 213
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 214
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 215
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 216
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 221
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 223
    const/4 v1, 0x1

    goto :goto_0

    .line 218
    :sswitch_0
    const/4 v1, 0x1

    .line 219
    goto :goto_0

    .line 228
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 229
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->bitField0_:I

    .line 230
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->label_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 240
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 241
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 247
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->makeExtensionsImmutable()V

    throw v6

    .line 234
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->bitField0_:I

    .line 235
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->uploadTimestamp_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 242
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 243
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

    .line 246
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 247
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->makeExtensionsImmutable()V

    .line 249
    return-void

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$1;)V
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
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 184
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 365
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->memoizedIsInitialized:B

    .line 386
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->memoizedSerializedSize:I

    .line 185
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 187
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 365
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->memoizedIsInitialized:B

    .line 386
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->memoizedSerializedSize:I

    .line 187
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->label_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->uploadTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->defaultInstance:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_ApkGlasswareMetadata_Version_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->label_:Ljava/lang/Object;

    .line 363
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->uploadTimestamp_:J

    .line 364
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 1

    .prologue
    .line 475
    #calls: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->create()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->access$200()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 478
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->newBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 425
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 431
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 435
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 441
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->defaultInstance:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 302
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->label_:Ljava/lang/Object;

    .line 303
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 304
    check-cast v1, Ljava/lang/String;

    .line 312
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 306
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 308
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 312
    goto :goto_0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 326
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->label_:Ljava/lang/Object;

    .line 327
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 328
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 331
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->label_:Ljava/lang/Object;

    .line 334
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
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 388
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->memoizedSerializedSize:I

    .line 389
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 402
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 391
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 392
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 396
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 397
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->uploadTimestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 400
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 401
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->memoizedSerializedSize:I

    move v1, v0

    .line 402
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUploadTimestamp()J
    .locals 2

    .prologue
    .line 358
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->uploadTimestamp_:J

    return-wide v0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 290
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUploadTimestamp()Z
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->bitField0_:I

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
    .line 257
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_ApkGlasswareMetadata_Version_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    const-class v2, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 417
    const-string v0, "com.google.googlex.glass.common.proto.MutableGlassware$ApkGlasswareMetadata$Version"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 419
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 367
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->memoizedIsInitialized:B

    .line 368
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 371
    :goto_0
    return v1

    .line 368
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 370
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 1

    .prologue
    .line 476
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->newBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 485
    new-instance v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$1;)V

    .line 486
    .local v0, builder:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 1

    .prologue
    .line 480
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->newBuilder(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->toBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->toBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

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
    .line 409
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

    .line 376
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getSerializedSize()I

    .line 377
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 380
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 381
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->uploadTimestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 384
    return-void
.end method
