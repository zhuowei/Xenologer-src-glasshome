.class public final Lcom/google/googlex/glass/common/proto/InstalledGlassware;
.super Lcom/google/protobuf/GeneratedMessage;
.source "InstalledGlassware.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/InstalledGlasswareOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;,
        Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;,
        Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadataOrBuilder;
    }
.end annotation


# static fields
.field public static final APK_METADATA_FIELD_NUMBER:I = 0x2

.field public static final GLASSWARE_ID_FIELD_NUMBER:I = 0x1

.field public static final IS_ENABLED_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/InstalledGlassware;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/InstalledGlassware;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

.field private bitField0_:I

.field private glasswareId_:J

.field private isEnabled_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    .line 1015
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1501
    new-instance v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->defaultInstance:Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    .line 1502
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->defaultInstance:Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->initFields()V

    .line 1503
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

    .line 960
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->memoizedIsInitialized:B

    .line 984
    iput v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->initFields()V

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 49
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 50
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 52
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

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
    iget v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    .line 65
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->glasswareId_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 88
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 89
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 95
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->makeExtensionsImmutable()V

    throw v6

    .line 69
    .restart local v4       #tag:I
    :sswitch_2
    const/4 v3, 0x0

    .line 70
    .local v3, subBuilder:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    :try_start_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 71
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->toBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v3

    .line 73
    :cond_1
    sget-object v6, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 74
    if-eqz v3, :cond_2

    .line 75
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    .line 76
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 78
    :cond_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 90
    .end local v3           #subBuilder:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 91
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    iget v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    .line 83
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->isEnabled_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 94
    .end local v4           #tag:I
    :cond_3
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 95
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->makeExtensionsImmutable()V

    .line 97
    return-void

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 960
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->memoizedIsInitialized:B

    .line 984
    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/InstalledGlassware$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 960
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->memoizedIsInitialized:B

    .line 984
    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/InstalledGlassware;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->glasswareId_:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/InstalledGlassware;Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/InstalledGlassware;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->isEnabled_:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/google/googlex/glass/common/proto/InstalledGlassware;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->defaultInstance:Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 956
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->glasswareId_:J

    .line 957
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->isEnabled_:Z

    .line 959
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 1

    .prologue
    .line 1077
    #calls: Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->create()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->access$900()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/InstalledGlassware;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1080
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->newBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1057
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1063
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1027
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1033
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1068
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1074
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1047
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1053
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1037
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1043
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    return-object v0
.end method


# virtual methods
.method public getApkMetadata()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public getApkMetadataOrBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadataOrBuilder;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->defaultInstance:Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public getGlasswareId()J
    .locals 2

    .prologue
    .line 892
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->glasswareId_:J

    return-wide v0
.end method

.method public getIsEnabled()Z
    .locals 1

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->isEnabled_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/InstalledGlassware;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 986
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->memoizedSerializedSize:I

    .line 987
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1004
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 989
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 990
    iget v2, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 991
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->glasswareId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 994
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 995
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 998
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 999
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->isEnabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1002
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1003
    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->memoizedSerializedSize:I

    move v1, v0

    .line 1004
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasApkMetadata()Z
    .locals 2

    .prologue
    .line 905
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

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

.method public hasGlasswareId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 882
    iget v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsEnabled()Z
    .locals 2

    .prologue
    .line 940
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 105
    sget-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    const-class v2, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1018
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 1019
    const-string v0, "com.google.googlex.glass.common.proto.MutableBoutique$InstalledGlassware"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1021
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 962
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->memoizedIsInitialized:B

    .line 963
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 966
    :goto_0
    return v1

    .line 963
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 965
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 1

    .prologue
    .line 1078
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->newBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 1087
    new-instance v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/InstalledGlassware$1;)V

    .line 1088
    .local v0, builder:Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->newBuilderForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->newBuilderForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 1

    .prologue
    .line 1082
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->newBuilder(Lcom/google/googlex/glass/common/proto/InstalledGlassware;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->toBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->toBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

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
    .line 1011
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

    .line 971
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->getSerializedSize()I

    .line 972
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 973
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->glasswareId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 975
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 976
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 978
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 979
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->isEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 981
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 982
    return-void
.end method
