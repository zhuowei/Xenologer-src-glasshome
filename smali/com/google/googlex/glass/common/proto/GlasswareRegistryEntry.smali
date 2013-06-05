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
    .line 164
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    .line 1093
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2837
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    .line 2838
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->defaultInstance:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->initFields()V

    .line 2839
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/16 v9, 0x40

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 968
    iput-byte v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedIsInitialized:B

    .line 1022
    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->initFields()V

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
    if-nez v0, :cond_4

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 52
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

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
    iget v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 65
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->projectId_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 139
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    and-int/lit8 v8, v2, 0x40

    if-ne v8, v9, :cond_1

    .line 146
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    .line 148
    :cond_1
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 149
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->makeExtensionsImmutable()V

    throw v7

    .line 69
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 70
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 141
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 142
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    iget v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 75
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    goto :goto_0

    .line 79
    :sswitch_4
    iget v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 80
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    goto :goto_0

    .line 84
    :sswitch_5
    and-int/lit8 v7, v2, 0x40

    if-eq v7, v9, :cond_2

    .line 85
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    .line 86
    or-int/lit8 v2, v2, 0x40

    .line 88
    :cond_2
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    sget-object v8, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 92
    :sswitch_6
    iget v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 93
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 97
    :sswitch_7
    iget v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 98
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 102
    :sswitch_8
    iget v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 103
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 107
    :sswitch_9
    iget v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 108
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I

    goto/16 :goto_0

    .line 112
    :sswitch_a
    iget v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 113
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 117
    :sswitch_b
    iget v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 118
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 122
    :sswitch_c
    iget v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 123
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 127
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 128
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->valueOf(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    move-result-object v6

    .line 129
    .local v6, value:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;
    if-nez v6, :cond_3

    .line 130
    const/16 v7, 0xe

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 132
    :cond_3
    iget v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    or-int/lit16 v7, v7, 0x800

    iput v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    .line 133
    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 145
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;
    :cond_4
    and-int/lit8 v7, v2, 0x40

    if-ne v7, v9, :cond_5

    .line 146
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    .line 148
    :cond_5
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 149
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->makeExtensionsImmutable()V

    .line 151
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

    .line 968
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedIsInitialized:B

    .line 1022
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

    .line 968
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedIsInitialized:B

    .line 1022
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
    .line 154
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistryEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 954
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->projectId_:J

    .line 955
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;

    .line 956
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    .line 958
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    .line 959
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    .line 960
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    .line 961
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    .line 962
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    .line 963
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    .line 964
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I

    .line 965
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    .line 966
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->PUBLIC:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 967
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1155
    #calls: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->access$100()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1158
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
    .line 1135
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
    .line 1141
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
    .line 1105
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
    .line 1111
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
    .line 1146
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
    .line 1152
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
    .line 1125
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
    .line 1131
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
    .line 1115
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
    .line 1121
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
    .line 705
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    .line 706
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 707
    check-cast v1, Ljava/lang/String;

    .line 715
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 709
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 711
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 713
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 715
    goto :goto_0
.end method

.method public getAuthUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 728
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    .line 729
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 730
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 733
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;

    .line 736
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
    .line 479
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    .line 480
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 481
    check-cast v1, Ljava/lang/String;

    .line 489
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 483
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 485
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 487
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 489
    goto :goto_0
.end method

.method public getIconGlass160UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 502
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    .line 503
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 504
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 507
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;

    .line 510
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
    .line 365
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;

    .line 366
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 367
    check-cast v1, Ljava/lang/String;

    .line 375
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 369
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 371
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 375
    goto :goto_0
.end method

.method public getIconGlass30UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 388
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;

    .line 389
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 390
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 393
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;

    .line 396
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
    .line 422
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    .line 423
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 424
    check-cast v1, Ljava/lang/String;

    .line 432
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 426
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 428
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 432
    goto :goto_0
.end method

.method public getIconGlass50UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 445
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    .line 446
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 447
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 450
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;

    .line 453
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
    .line 536
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    .line 537
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 538
    check-cast v1, Ljava/lang/String;

    .line 546
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 540
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 542
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 544
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 546
    goto :goto_0
.end method

.method public getIconWeb40UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 559
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    .line 560
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 561
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 564
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;

    .line 567
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
    .line 593
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    .line 594
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 595
    check-cast v1, Ljava/lang/String;

    .line 603
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 597
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 599
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 601
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 603
    goto :goto_0
.end method

.method public getIconWeb85UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 616
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    .line 617
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 618
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 621
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;

    .line 624
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
    .line 872
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I

    return v0
.end method

.method public getMessages(I)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "index"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    return-object v0
.end method

.method public getMessagesCount()I
    .locals 1

    .prologue
    .line 659
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
    .line 638
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    return-object v0
.end method

.method public getMessagesOrBuilder(I)Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 680
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
    .line 649
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    return-object v0
.end method

.method public getMoreInfoUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 814
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    .line 815
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 816
    check-cast v1, Ljava/lang/String;

    .line 824
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 818
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 820
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 822
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 824
    goto :goto_0
.end method

.method public getMoreInfoUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 836
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    .line 837
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 838
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 841
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;

    .line 844
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
    .line 901
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    .line 902
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 903
    check-cast v1, Ljava/lang/String;

    .line 911
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 905
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 907
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 909
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 911
    goto :goto_0
.end method

.method public getNameTextColorBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 926
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    .line 927
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 928
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 931
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;

    .line 934
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
    .line 176
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProjectId()J
    .locals 2

    .prologue
    .line 340
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

    .line 1024
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedSerializedSize:I

    .line 1025
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1082
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 1027
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 1028
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1

    .line 1029
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->projectId_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1032
    :cond_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_2

    .line 1033
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass30UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1036
    :cond_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_3

    .line 1037
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass50UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1040
    :cond_3
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v8, :cond_4

    .line 1041
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass160UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1044
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1045
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1044
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1048
    :cond_5
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1049
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getAuthUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1052
    :cond_6
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1053
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getSettingsUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1056
    :cond_7
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1057
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getMoreInfoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1060
    :cond_8
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1061
    const/16 v3, 0x9

    iget v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1064
    :cond_9
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1065
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getNameTextColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1068
    :cond_a
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_b

    .line 1069
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconWeb40UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1072
    :cond_b
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_c

    .line 1073
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconWeb85UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1076
    :cond_c
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_d

    .line 1077
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1080
    :cond_d
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1081
    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedSerializedSize:I

    move v2, v1

    .line 1082
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getSettingsUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 760
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    .line 761
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 762
    check-cast v1, Ljava/lang/String;

    .line 770
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 764
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 766
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 768
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 770
    goto :goto_0
.end method

.method public getSettingsUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 782
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    .line 783
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 784
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 787
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;

    .line 790
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
    .line 950
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    return-object v0
.end method

.method public hasAuthUrl()Z
    .locals 2

    .prologue
    .line 694
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
    .line 468
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
    .line 354
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
    .line 411
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
    .line 525
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
    .line 582
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
    .line 860
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
    .line 804
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
    .line 888
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

    .line 329
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
    .line 750
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
    .line 944
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
    .line 159
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
    .line 1096
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 1097
    const-string v0, "com.google.googlex.glass.common.proto.MutableGlasswareRegistryOuterClass$GlasswareRegistryEntry"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1099
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 970
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedIsInitialized:B

    .line 971
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 974
    :goto_0
    return v1

    .line 971
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 973
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1156
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->newBuilder()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 1165
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$1;)V

    .line 1166
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
    .line 1160
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
    .line 1089
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

    .line 979
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getSerializedSize()I

    .line 980
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    .line 981
    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->projectId_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 983
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 984
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass30UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 986
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 987
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass50UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 989
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_3

    .line 990
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass160UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 992
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 993
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 995
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5

    .line 996
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getAuthUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 998
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6

    .line 999
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getSettingsUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1001
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_7

    .line 1002
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getMoreInfoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1004
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_8

    .line 1005
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1007
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_9

    .line 1008
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getNameTextColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1010
    :cond_9
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a

    .line 1011
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconWeb40UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1013
    :cond_a
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_b

    .line 1014
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconWeb85UrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1016
    :cond_b
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 1017
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1019
    :cond_c
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1020
    return-void
.end method
