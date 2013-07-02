.class public final Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GlasswareMetadataEntry.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;,
        Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;,
        Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$MessagesOrBuilder;
    }
.end annotation


# static fields
.field public static final APK_METADATA_FIELD_NUMBER:I = 0x3

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MESSAGES_FIELD_NUMBER:I = 0x2

.field public static final MIRROR_METADATA_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

.field private bitField0_:I

.field private id_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

.field private mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    .line 1105
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1888
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    .line 1889
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->initFields()V

    .line 1890
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

    .line 47
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1043
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->memoizedIsInitialized:B

    .line 1070
    iput v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->memoizedSerializedSize:I

    .line 48
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->initFields()V

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 53
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 54
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_7

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 56
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 61
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :sswitch_0
    const/4 v0, 0x1

    .line 59
    goto :goto_0

    .line 68
    :sswitch_1
    iget v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    .line 69
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->id_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 113
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 120
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->makeExtensionsImmutable()V

    throw v6

    .line 73
    .restart local v4       #tag:I
    :sswitch_2
    const/4 v3, 0x0

    .line 74
    .local v3, subBuilder:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    :try_start_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 75
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v3

    .line 77
    :cond_1
    sget-object v6, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 78
    if-eqz v3, :cond_2

    .line 79
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    .line 80
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 82
    :cond_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 115
    .end local v3           #subBuilder:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 116
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

    .line 86
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    const/4 v3, 0x0

    .line 87
    .local v3, subBuilder:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    :try_start_4
    iget v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 88
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->toBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v3

    .line 90
    :cond_3
    sget-object v6, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 91
    if-eqz v3, :cond_4

    .line 92
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    .line 93
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 95
    :cond_4
    iget v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    goto/16 :goto_0

    .line 99
    .end local v3           #subBuilder:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    :sswitch_4
    const/4 v3, 0x0

    .line 100
    .local v3, subBuilder:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    .line 101
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->toBuilder()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v3

    .line 103
    :cond_5
    sget-object v6, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 104
    if-eqz v3, :cond_6

    .line 105
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    .line 106
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 108
    :cond_6
    iget v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 119
    .end local v3           #subBuilder:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .end local v4           #tag:I
    :cond_7
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 120
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->makeExtensionsImmutable()V

    .line 122
    return-void

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 24
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1043
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->memoizedIsInitialized:B

    .line 1070
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->memoizedSerializedSize:I

    .line 25
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1043
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->memoizedIsInitialized:B

    .line 1070
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->memoizedSerializedSize:I

    .line 27
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->id_:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_GlasswareMetadataEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 1038
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->id_:J

    .line 1039
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 1040
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 1041
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 1042
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1

    .prologue
    .line 1167
    #calls: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->access$900()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1170
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1147
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1153
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1117
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1123
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1158
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1164
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1137
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1143
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1127
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1133
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    return-object v0
.end method


# virtual methods
.method public getApkMetadata()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public getApkMetadataOrBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadataOrBuilder;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 929
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->id_:J

    return-wide v0
.end method

.method public getMessages()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public getMessagesOrBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$MessagesOrBuilder;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    return-object v0
.end method

.method public getMirrorMetadata()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public getMirrorMetadataOrBuilder()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadataOrBuilder;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1072
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->memoizedSerializedSize:I

    .line 1073
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1094
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1075
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1076
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 1077
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->id_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1080
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 1081
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1084
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 1085
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1088
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 1089
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1092
    :cond_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1093
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->memoizedSerializedSize:I

    move v1, v0

    .line 1094
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasApkMetadata()Z
    .locals 2

    .prologue
    .line 976
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 919
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMessages()Z
    .locals 2

    .prologue
    .line 942
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

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

.method public hasMirrorMetadata()Z
    .locals 2

    .prologue
    .line 1012
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

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
    .line 130
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_GlasswareMetadataEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    const-class v2, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1108
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 1109
    const-string v0, "com.google.googlex.glass.common.proto.MutableGlassware$GlasswareMetadataEntry"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1111
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1045
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->memoizedIsInitialized:B

    .line 1046
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1049
    :goto_0
    return v1

    .line 1046
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1048
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1

    .prologue
    .line 1168
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 1177
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$1;)V

    .line 1178
    .local v0, builder:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1

    .prologue
    .line 1172
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->newBuilder(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

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
    .line 1101
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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1054
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->getSerializedSize()I

    .line 1055
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 1056
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->id_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1058
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1061
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 1062
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1064
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 1065
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1067
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1068
    return-void
.end method
