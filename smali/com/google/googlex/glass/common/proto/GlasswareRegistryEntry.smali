.class public final Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GlasswareRegistryEntry.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;,
        Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;
    }
.end annotation


# static fields
.field public static final AUTH_URL_FIELD_NUMBER:I = 0x6

.field public static final ICON_GLASS_160_URL_FIELD_NUMBER:I = 0x4

.field public static final ICON_GLASS_30_URL_FIELD_NUMBER:I = 0x2

.field public static final ICON_GLASS_50_URL_FIELD_NUMBER:I = 0x3

.field public static final ICON_WEB_40_URL_FIELD_NUMBER:I = 0xc

.field public static final ICON_WEB_85_URL_FIELD_NUMBER:I = 0xd

.field public static final INTERNAL_GLASSWARE_FIELD_NUMBER:I = 0x9

.field public static final MESSAGES_FIELD_NUMBER:I = 0x5

.field public static final MORE_INFO_URL_FIELD_NUMBER:I = 0x8

.field public static final NAME_TEXT_COLOR_FIELD_NUMBER:I = 0xb

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECT_ID_FIELD_NUMBER:I = 0x1

.field public static final SETTINGS_URL_FIELD_NUMBER:I = 0x7

.field public static final VISIBILITY_FIELD_NUMBER:I = 0xe

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private authUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private iconGlass160Url_:Ljava/lang/Object;

.field private iconGlass30Url_:Ljava/lang/Object;

.field private iconGlass50Url_:Ljava/lang/Object;

.field private iconWeb40Url_:Ljava/lang/Object;

.field private iconWeb85Url_:Ljava/lang/Object;

.field private internalGlassware_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private messages_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages;",
            ">;"
        }
    .end annotation
.end field

.field private moreInfoUrl_:Ljava/lang/Object;

.field private nameTextColor_:Ljava/lang/Object;

.field private projectId_:J

.field private settingsUrl_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    .line 1119
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2890
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    .line 2891
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->initFields()V

    .line 2892
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
    const/4 v8, -0x1

    const/16 v10, 0x40

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 994
    iput-byte v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedIsInitialized:B

    .line 1048
    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->initFields()V

    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 49
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 50
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 52
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

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
    iget v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 65
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->projectId_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 148
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 149
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit8 v9, v3, 0x40

    if-ne v9, v10, :cond_1

    .line 155
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    .line 157
    :cond_1
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 158
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->makeExtensionsImmutable()V

    throw v8

    .line 69
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 70
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 71
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 150
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_1
    move-exception v2

    .line 151
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 76
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 77
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 82
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 83
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    goto :goto_0

    .line 87
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_5
    and-int/lit8 v8, v3, 0x40

    if-eq v8, v10, :cond_2

    .line 88
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    .line 89
    or-int/lit8 v3, v3, 0x40

    .line 91
    :cond_2
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    sget-object v9, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 95
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 96
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 97
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 101
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 102
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 103
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 107
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 108
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 109
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 113
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_9
    iget v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 114
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I

    goto/16 :goto_0

    .line 118
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 119
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 120
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 124
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 125
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 126
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 130
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 131
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 132
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 136
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 137
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->valueOf(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    move-result-object v7

    .line 138
    .local v7, value:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;
    if-nez v7, :cond_3

    .line 139
    const/16 v8, 0xe

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 141
    :cond_3
    iget v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit16 v8, v8, 0x800

    iput v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 142
    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 154
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;
    :cond_4
    and-int/lit8 v8, v3, 0x40

    if-ne v8, v10, :cond_5

    .line 155
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    .line 157
    :cond_5
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 158
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->makeExtensionsImmutable()V

    .line 160
    return-void

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x70 -> :sswitch_d
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 994
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedIsInitialized:B

    .line 1048
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 994
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedIsInitialized:B

    .line 1048
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I

    return p1
.end method

.method static synthetic access$1600(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    return p1
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->projectId_:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistryEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 980
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->projectId_:J

    .line 981
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;

    .line 982
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    .line 983
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    .line 984
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    .line 985
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    .line 986
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    .line 987
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    .line 988
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    .line 989
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    .line 990
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I

    .line 991
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    .line 992
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->PUBLIC:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 993
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1181
    #calls: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->access$100()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1184
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1161
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1167
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1131
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1137
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1172
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1178
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1151
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1157
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1141
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1147
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    return-object v0
.end method


# virtual methods
.method public getAuthUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 731
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    .line 732
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 733
    check-cast v1, Ljava/lang/String;

    .line 741
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 735
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 737
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 738
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 739
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 741
    goto :goto_0
.end method

.method public getAuthUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 754
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    .line 755
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 756
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 759
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    .line 762
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public getIconGlass160Url()Ljava/lang/String;
    .locals 4

    .prologue
    .line 505
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    .line 506
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 507
    check-cast v1, Ljava/lang/String;

    .line 515
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 509
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 511
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 515
    goto :goto_0
.end method

.method public getIconGlass160UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 528
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    .line 529
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 530
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 533
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    .line 536
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

.method public getIconGlass30Url()Ljava/lang/String;
    .locals 4

    .prologue
    .line 391
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;

    .line 392
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 393
    check-cast v1, Ljava/lang/String;

    .line 401
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 395
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 397
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 401
    goto :goto_0
.end method

.method public getIconGlass30UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 414
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;

    .line 415
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 416
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 419
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;

    .line 422
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

.method public getIconGlass50Url()Ljava/lang/String;
    .locals 4

    .prologue
    .line 448
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    .line 449
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 450
    check-cast v1, Ljava/lang/String;

    .line 458
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 452
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 454
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 458
    goto :goto_0
.end method

.method public getIconGlass50UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 471
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    .line 472
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 473
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 476
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    .line 479
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

.method public getIconWeb40Url()Ljava/lang/String;
    .locals 4

    .prologue
    .line 562
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    .line 563
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 564
    check-cast v1, Ljava/lang/String;

    .line 572
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 566
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 568
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 572
    goto :goto_0
.end method

.method public getIconWeb40UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 585
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    .line 586
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 587
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 590
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    .line 593
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

.method public getIconWeb85Url()Ljava/lang/String;
    .locals 4

    .prologue
    .line 619
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    .line 620
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 621
    check-cast v1, Ljava/lang/String;

    .line 629
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 623
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 625
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 627
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 629
    goto :goto_0
.end method

.method public getIconWeb85UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 642
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    .line 643
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 644
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 647
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    .line 650
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

.method public getInternalGlassware()I
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I

    return v0
.end method

.method public getMessages(I)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "index"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public getMessagesCount()I
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    return-object v0
.end method

.method public getMessagesOrBuilder(I)Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;

    return-object v0
.end method

.method public getMessagesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    return-object v0
.end method

.method public getMoreInfoUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 840
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    .line 841
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 842
    check-cast v1, Ljava/lang/String;

    .line 850
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 844
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 846
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 848
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 850
    goto :goto_0
.end method

.method public getMoreInfoUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 862
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    .line 863
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 864
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 867
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    .line 870
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

.method public getNameTextColor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 927
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    .line 928
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 929
    check-cast v1, Ljava/lang/String;

    .line 937
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 931
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 933
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 934
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 935
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 937
    goto :goto_0
.end method

.method public getNameTextColorBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 952
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    .line 953
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 954
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 957
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    .line 960
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
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProjectId()J
    .locals 2

    .prologue
    .line 366
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->projectId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1050
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedSerializedSize:I

    .line 1051
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1108
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 1053
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 1054
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1

    .line 1055
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->projectId_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1058
    :cond_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_2

    .line 1059
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass30UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1062
    :cond_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_3

    .line 1063
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass50UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1066
    :cond_3
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v8, :cond_4

    .line 1067
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass160UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1070
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1071
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1070
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1074
    :cond_5
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1075
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getAuthUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1078
    :cond_6
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1079
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getSettingsUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1082
    :cond_7
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1083
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getMoreInfoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1086
    :cond_8
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1087
    const/16 v3, 0x9

    iget v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1090
    :cond_9
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1091
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getNameTextColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1094
    :cond_a
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_b

    .line 1095
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconWeb40UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1098
    :cond_b
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_c

    .line 1099
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconWeb85UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1102
    :cond_c
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_d

    .line 1103
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1106
    :cond_d
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1107
    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedSerializedSize:I

    move v2, v1

    .line 1108
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getSettingsUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 786
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    .line 787
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 788
    check-cast v1, Ljava/lang/String;

    .line 796
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 790
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 792
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 794
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 796
    goto :goto_0
.end method

.method public getSettingsUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 808
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    .line 809
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 810
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 813
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    .line 816
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
    .line 38
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVisibility()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    return-object v0
.end method

.method public hasAuthUrl()Z
    .locals 2

    .prologue
    .line 720
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

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

.method public hasIconGlass160Url()Z
    .locals 2

    .prologue
    .line 494
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

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

.method public hasIconGlass30Url()Z
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

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

.method public hasIconGlass50Url()Z
    .locals 2

    .prologue
    .line 437
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

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

.method public hasIconWeb40Url()Z
    .locals 2

    .prologue
    .line 551
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

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

.method public hasIconWeb85Url()Z
    .locals 2

    .prologue
    .line 608
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

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

.method public hasInternalGlassware()Z
    .locals 2

    .prologue
    .line 886
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreInfoUrl()Z
    .locals 2

    .prologue
    .line 830
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNameTextColor()Z
    .locals 2

    .prologue
    .line 914
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProjectId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 355
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSettingsUrl()Z
    .locals 2

    .prologue
    .line 776
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

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

.method public hasVisibility()Z
    .locals 2

    .prologue
    .line 970
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

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
    .line 168
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistryEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    const-class v2, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1122
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 1123
    const-string v0, "com.google.googlex.glass.common.proto.MutableGlasswareRegistryOuterClass$GlasswareRegistryEntry"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1125
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 996
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedIsInitialized:B

    .line 997
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1000
    :goto_0
    return v1

    .line 997
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 999
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1182
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 1191
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$1;)V

    .line 1192
    .local v0, builder:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1186
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->newBuilder(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->toBuilder()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

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
    .line 1115
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1005
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getSerializedSize()I

    .line 1006
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    .line 1007
    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->projectId_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1009
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 1010
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass30UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1012
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 1013
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass50UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1015
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_3

    .line 1016
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass160UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1018
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1019
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1021
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5

    .line 1022
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getAuthUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1024
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6

    .line 1025
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getSettingsUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1027
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_7

    .line 1028
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getMoreInfoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1030
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_8

    .line 1031
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1033
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_9

    .line 1034
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getNameTextColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1036
    :cond_9
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a

    .line 1037
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconWeb40UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1039
    :cond_a
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_b

    .line 1040
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconWeb85UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1042
    :cond_b
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 1043
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1045
    :cond_c
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1046
    return-void
.end method
