.class public final Lcom/google/googlex/glass/common/proto/Entity;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Entity.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/EntityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/Entity$Builder;,
        Lcom/google/googlex/glass/common/proto/Entity$Command;,
        Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;,
        Lcom/google/googlex/glass/common/proto/Entity$Priority;,
        Lcom/google/googlex/glass/common/proto/Entity$PriorityOrBuilder;,
        Lcom/google/googlex/glass/common/proto/Entity$Type;
    }
.end annotation


# static fields
.field public static final ACCEPT_COMMAND_FIELD_NUMBER:I = 0x10

.field public static final ACCEPT_TYPE_FIELD_NUMBER:I = 0x9

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x3

.field public static final EMAIL_FIELD_NUMBER:I = 0x8

.field public static final ID_FIELD_NUMBER:I = 0x2

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0xc

.field public static final IS_COMMUNICATION_TARGET_FIELD_NUMBER:I = 0xa

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_NUMBER_FIELD_NUMBER:I = 0x7

.field public static final PRIORITY_FIELD_NUMBER:I = 0xe

.field public static final SECONDARY_EMAIL_FIELD_NUMBER:I = 0xf

.field public static final SECONDARY_PHONE_NUMBER_FIELD_NUMBER:I = 0xd

.field public static final SHOULD_SYNC_FIELD_NUMBER:I = 0x5

.field public static final SOURCE_FIELD_NUMBER:I = 0x1

.field public static final SPEAKABLE_NAME_FIELD_NUMBER:I = 0x11

.field public static final TYPE_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/Entity;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private acceptCommand_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command;",
            ">;"
        }
    .end annotation
.end field

.field private acceptType_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private email_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private imageUrl_:Lcom/google/protobuf/LazyStringList;

.field private isCommunicationTarget_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneNumber_:Ljava/lang/Object;

.field private priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

.field private secondaryEmail_:Lcom/google/protobuf/LazyStringList;

.field private secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

.field private shouldSync_:Z

.field private source_:Ljava/lang/Object;

.field private speakableName_:Ljava/lang/Object;

.field private type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    .line 2266
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 4389
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/Entity;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4390
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity;->initFields()V

    .line 4391
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
    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2107
    const/4 v8, -0x1

    iput-byte v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedIsInitialized:B

    .line 2167
    const/4 v8, -0x1

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity;->initFields()V

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 49
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 50
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_e

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 52
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/googlex/glass/common/proto/Entity;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

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
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 65
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 169
    .end local v5           #tag:I
    :catch_0
    move-exception v1

    .line 170
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit16 v9, v2, 0x400

    const/16 v10, 0x400

    if-ne v9, v10, :cond_1

    .line 176
    new-instance v9, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v9, v10}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 178
    :cond_1
    and-int/lit8 v9, v2, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    .line 179
    new-instance v9, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v9, v10}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 181
    :cond_2
    and-int/lit16 v9, v2, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_3

    .line 182
    new-instance v9, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v9, v10}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 184
    :cond_3
    and-int/lit16 v9, v2, 0x200

    const/16 v10, 0x200

    if-ne v9, v10, :cond_4

    .line 185
    new-instance v9, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v9, v10}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 187
    :cond_4
    and-int/lit16 v9, v2, 0x2000

    const/16 v10, 0x2000

    if-ne v9, v10, :cond_5

    .line 188
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    .line 190
    :cond_5
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/Entity;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 191
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->makeExtensionsImmutable()V

    throw v8

    .line 69
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 70
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 171
    .end local v5           #tag:I
    :catch_1
    move-exception v1

    .line 172
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 75
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 79
    :sswitch_4
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 80
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z

    goto/16 :goto_0

    .line 84
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 85
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/Entity$Type;->valueOf(I)Lcom/google/googlex/glass/common/proto/Entity$Type;

    move-result-object v7

    .line 86
    .local v7, value:Lcom/google/googlex/glass/common/proto/Entity$Type;
    if-nez v7, :cond_6

    .line 87
    const/4 v8, 0x6

    invoke-virtual {v6, v8, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 89
    :cond_6
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 90
    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    goto/16 :goto_0

    .line 95
    .end local v3           #rawValue:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/Entity$Type;
    :sswitch_6
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 96
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 100
    :sswitch_7
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 101
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 105
    :sswitch_8
    and-int/lit16 v8, v2, 0x400

    const/16 v9, 0x400

    if-eq v8, v9, :cond_7

    .line 106
    new-instance v8, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v8}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 107
    or-int/lit16 v2, v2, 0x400

    .line 109
    :cond_7
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 113
    :sswitch_9
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 114
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z

    goto/16 :goto_0

    .line 118
    :sswitch_a
    and-int/lit8 v8, v2, 0x8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_8

    .line 119
    new-instance v8, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v8}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 120
    or-int/lit8 v2, v2, 0x8

    .line 122
    :cond_8
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 126
    :sswitch_b
    and-int/lit16 v8, v2, 0x80

    const/16 v9, 0x80

    if-eq v8, v9, :cond_9

    .line 127
    new-instance v8, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v8}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 128
    or-int/lit16 v2, v2, 0x80

    .line 130
    :cond_9
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 134
    :sswitch_c
    const/4 v4, 0x0

    .line 135
    .local v4, subBuilder:Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v8, v8, 0x100

    const/16 v9, 0x100

    if-ne v8, v9, :cond_a

    .line 136
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v4

    .line 138
    :cond_a
    sget-object v8, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 139
    if-eqz v4, :cond_b

    .line 140
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-virtual {v4, v8}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    .line 141
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 143
    :cond_b
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    goto/16 :goto_0

    .line 147
    .end local v4           #subBuilder:Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    :sswitch_d
    and-int/lit16 v8, v2, 0x200

    const/16 v9, 0x200

    if-eq v8, v9, :cond_c

    .line 148
    new-instance v8, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v8}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 149
    or-int/lit16 v2, v2, 0x200

    .line 151
    :cond_c
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 155
    :sswitch_e
    and-int/lit16 v8, v2, 0x2000

    const/16 v9, 0x2000

    if-eq v8, v9, :cond_d

    .line 156
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    .line 157
    or-int/lit16 v2, v2, 0x2000

    .line 159
    :cond_d
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    sget-object v9, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 163
    :sswitch_f
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 164
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 175
    .end local v5           #tag:I
    :cond_e
    and-int/lit16 v8, v2, 0x400

    const/16 v9, 0x400

    if-ne v8, v9, :cond_f

    .line 176
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 178
    :cond_f
    and-int/lit8 v8, v2, 0x8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_10

    .line 179
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 181
    :cond_10
    and-int/lit16 v8, v2, 0x80

    const/16 v9, 0x80

    if-ne v8, v9, :cond_11

    .line 182
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 184
    :cond_11
    and-int/lit16 v8, v2, 0x200

    const/16 v9, 0x200

    if-ne v8, v9, :cond_12

    .line 185
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 187
    :cond_12
    and-int/lit16 v8, v2, 0x2000

    const/16 v9, 0x2000

    if-ne v8, v9, :cond_13

    .line 188
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    .line 190
    :cond_13
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Entity;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 191
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->makeExtensionsImmutable()V

    .line 193
    return-void

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7a -> :sswitch_d
        0x82 -> :sswitch_e
        0x8a -> :sswitch_f
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/Entity$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2107
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedIsInitialized:B

    .line 2167
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Entity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2107
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedIsInitialized:B

    .line 2167
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Entity;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/googlex/glass/common/proto/Entity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity$Type;)Lcom/google/googlex/glass/common/proto/Entity$Type;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/googlex/glass/common/proto/Entity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/googlex/glass/common/proto/Entity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/googlex/glass/common/proto/Entity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    return p1
.end method

.method static synthetic access$3600()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Entity;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2091
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;

    .line 2092
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;

    .line 2093
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    .line 2094
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2095
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z

    .line 2096
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 2097
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    .line 2098
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 2099
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    .line 2100
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 2101
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 2102
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z

    .line 2103
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 2104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    .line 2105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    .line 2106
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2328
    #calls: Lcom/google/googlex/glass/common/proto/Entity$Builder;->create()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->access$1600()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2331
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2308
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2314
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2278
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2284
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2319
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2325
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2298
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2304
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2288
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2294
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method


# virtual methods
.method public getAcceptCommand(I)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "index"

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public getAcceptCommandCount()I
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAcceptCommandList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    return-object v0
.end method

.method public getAcceptCommandOrBuilder(I)Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;

    return-object v0
.end method

.method public getAcceptCommandOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    return-object v0
.end method

.method public getAcceptType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAcceptTypeBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptTypeCount()I
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAcceptTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1548
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    .line 1549
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1550
    check-cast v1, Ljava/lang/String;

    .line 1558
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1552
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1554
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1555
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1556
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1558
    goto :goto_0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1570
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    .line 1571
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1572
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1575
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    .line 1578
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

.method public getEmail()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1816
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    .line 1817
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1818
    check-cast v1, Ljava/lang/String;

    .line 1826
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1820
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1822
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1823
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1824
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1826
    goto :goto_0
.end method

.method public getEmailBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1838
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    .line 1839
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1840
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1843
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    .line 1846
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

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1493
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;

    .line 1494
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1495
    check-cast v1, Ljava/lang/String;

    .line 1503
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1497
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1499
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1500
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1501
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1503
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1516
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;

    .line 1517
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1518
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1521
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;

    .line 1524
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

.method public getImageUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlCount()I
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getImageUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getIsCommunicationTarget()Z
    .locals 1

    .prologue
    .line 1974
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1715
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    .line 1716
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1717
    check-cast v1, Ljava/lang/String;

    .line 1725
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1719
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1721
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1722
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1723
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1725
    goto :goto_0
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1739
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    .line 1740
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1741
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1744
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    .line 1747
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

.method public getPriority()Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public getPriorityOrBuilder()Lcom/google/googlex/glass/common/proto/Entity$PriorityOrBuilder;
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public getSecondaryEmail(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryEmailBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryEmailCount()I
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSecondaryEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSecondaryPhoneNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryPhoneNumberBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryPhoneNumberCount()I
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSecondaryPhoneNumberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2169
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedSerializedSize:I

    .line 2170
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 2255
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 2172
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 2173
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 2174
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2177
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2

    .line 2178
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2181
    :cond_2
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 2182
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2185
    :cond_3
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v7, :cond_4

    .line 2186
    const/4 v4, 0x5

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2189
    :cond_4
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v8, :cond_5

    .line 2190
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity$Type;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2193
    :cond_5
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_6

    .line 2194
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2197
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_7

    .line 2198
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2202
    :cond_7
    const/4 v0, 0x0

    .line 2203
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 2204
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2207
    :cond_8
    add-int/2addr v2, v0

    .line 2208
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getAcceptTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2210
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_9

    .line 2211
    const/16 v4, 0xa

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2215
    :cond_9
    const/4 v0, 0x0

    .line 2216
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 2217
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2216
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2220
    :cond_a
    add-int/2addr v2, v0

    .line 2221
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2224
    const/4 v0, 0x0

    .line 2225
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 2226
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2225
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2229
    :cond_b
    add-int/2addr v2, v0

    .line 2230
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSecondaryPhoneNumberList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2232
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_c

    .line 2233
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2237
    :cond_c
    const/4 v0, 0x0

    .line 2238
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 2239
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2238
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2242
    :cond_d
    add-int/2addr v2, v0

    .line 2243
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSecondaryEmailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2245
    const/4 v1, 0x0

    :goto_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    .line 2246
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2245
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2249
    :cond_e
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_f

    .line 2250
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSpeakableNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2253
    :cond_f
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 2254
    iput v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedSerializedSize:I

    move v3, v2

    .line 2255
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getShouldSync()Z
    .locals 1

    .prologue
    .line 1673
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1436
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;

    .line 1437
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1438
    check-cast v1, Ljava/lang/String;

    .line 1446
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1440
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1442
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1443
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1444
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1446
    goto :goto_0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1459
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;

    .line 1460
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1461
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1464
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;

    .line 1467
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

.method public getSpeakableName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2055
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    .line 2056
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2057
    check-cast v1, Ljava/lang/String;

    .line 2065
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2059
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2061
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2062
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2063
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2065
    goto :goto_0
.end method

.method public getSpeakableNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2078
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    .line 2079
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2080
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2083
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    .line 2086
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

.method public getType()Lcom/google/googlex/glass/common/proto/Entity$Type;
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDisplayName()Z
    .locals 2

    .prologue
    .line 1538
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

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

.method public hasEmail()Z
    .locals 2

    .prologue
    .line 1806
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

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
    .line 1482
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

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

.method public hasIsCommunicationTarget()Z
    .locals 2

    .prologue
    .line 1963
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

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

.method public hasPhoneNumber()Z
    .locals 2

    .prologue
    .line 1703
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

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

.method public hasPriority()Z
    .locals 2

    .prologue
    .line 1983
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

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

.method public hasShouldSync()Z
    .locals 2

    .prologue
    .line 1662
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1425
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakableName()Z
    .locals 2

    .prologue
    .line 2044
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 1682
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 201
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Entity;

    const-class v2, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 2269
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 2270
    const-string v0, "com.google.googlex.glass.common.proto.MutableTimeline$Entity"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2272
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2109
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedIsInitialized:B

    .line 2110
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 2113
    :goto_0
    return v1

    .line 2110
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2112
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2329
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 2338
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Entity$1;)V

    .line 2339
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2333
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

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
    .line 2262
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2118
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSerializedSize()I

    .line 2119
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 2120
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2122
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 2123
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2125
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 2126
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2128
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v4, :cond_3

    .line 2129
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2131
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v5, :cond_4

    .line 2132
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity$Type;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2134
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 2135
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2137
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 2138
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2140
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2141
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2143
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 2144
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2146
    :cond_8
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 2147
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2149
    :cond_9
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 2150
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2149
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2152
    :cond_a
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_b

    .line 2153
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2155
    :cond_b
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 2156
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2155
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2158
    :cond_c
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 2159
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2158
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2161
    :cond_d
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_e

    .line 2162
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSpeakableNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2164
    :cond_e
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2165
    return-void
.end method
