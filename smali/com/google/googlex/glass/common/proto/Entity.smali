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
        Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;,
        Lcom/google/googlex/glass/common/proto/Entity$Type;
    }
.end annotation


# static fields
.field public static final ACCEPT_COMMAND_FIELD_NUMBER:I = 0x10

.field public static final ACCEPT_TYPE_FIELD_NUMBER:I = 0x9

.field public static final CONTACT_GROUP_FIELD_NUMBER:I = 0x14

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

.field private contactGroup_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;",
            ">;"
        }
    .end annotation
.end field

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
    .line 252
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    .line 2433
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 4663
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/Entity;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity;

    .line 4664
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->defaultInstance:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity;->initFields()V

    .line 4665
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 17
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2262
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput-byte v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedIsInitialized:B

    .line 2325
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedSerializedSize:I

    .line 44
    invoke-direct/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/Entity;->initFields()V

    .line 45
    const/4 v7, 0x0

    .line 46
    .local v7, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v12

    .line 49
    .local v12, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v4, 0x0

    .line 50
    .local v4, done:Z
    :cond_0
    :goto_0
    if-nez v4, :cond_14

    .line 51
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v11

    .line 52
    .local v11, tag:I
    sparse-switch v11, :sswitch_data_0

    .line 57
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v12, v2, v11}, Lcom/google/googlex/glass/common/proto/Entity;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 59
    const/4 v4, 0x1

    goto :goto_0

    .line 54
    :sswitch_0
    const/4 v4, 0x1

    .line 55
    goto :goto_0

    .line 64
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 65
    .local v3, bs:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 66
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 212
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    .end local v11           #tag:I
    :catch_0
    move-exception v5

    .line 213
    .local v5, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v14

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    .end local v5           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v14

    and-int/lit16 v15, v7, 0x400

    const/16 v16, 0x400

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 219
    new-instance v15, Lcom/google/protobuf/UnmodifiableLazyStringList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 221
    :cond_1
    and-int/lit8 v15, v7, 0x8

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 222
    new-instance v15, Lcom/google/protobuf/UnmodifiableLazyStringList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 224
    :cond_2
    and-int/lit16 v15, v7, 0x80

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 225
    new-instance v15, Lcom/google/protobuf/UnmodifiableLazyStringList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 227
    :cond_3
    and-int/lit16 v15, v7, 0x200

    const/16 v16, 0x200

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 228
    new-instance v15, Lcom/google/protobuf/UnmodifiableLazyStringList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 230
    :cond_4
    and-int/lit16 v15, v7, 0x2000

    const/16 v16, 0x2000

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 231
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    .line 233
    :cond_5
    const v15, 0x8000

    and-int/2addr v15, v7

    const v16, 0x8000

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    .line 236
    :cond_6
    invoke-virtual {v12}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/Entity;->makeExtensionsImmutable()V

    throw v14

    .line 70
    .restart local v11       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 71
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 72
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 214
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    .end local v11           #tag:I
    :catch_1
    move-exception v5

    .line 215
    .local v5, e:Ljava/io/IOException;
    :try_start_3
    new-instance v14, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v14

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    .end local v5           #e:Ljava/io/IOException;
    .restart local v11       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 77
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v14, v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 78
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 82
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z

    goto/16 :goto_0

    .line 87
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 88
    .local v9, rawValue:I
    invoke-static {v9}, Lcom/google/googlex/glass/common/proto/Entity$Type;->valueOf(I)Lcom/google/googlex/glass/common/proto/Entity$Type;

    move-result-object v13

    .line 89
    .local v13, value:Lcom/google/googlex/glass/common/proto/Entity$Type;
    if-nez v13, :cond_7

    .line 90
    const/4 v14, 0x6

    invoke-virtual {v12, v14, v9}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 92
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v14, v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 93
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    goto/16 :goto_0

    .line 98
    .end local v9           #rawValue:I
    .end local v13           #value:Lcom/google/googlex/glass/common/proto/Entity$Type;
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 99
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v14, v14, 0x20

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 100
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 104
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 105
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit8 v14, v14, 0x40

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 106
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 110
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 111
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    and-int/lit16 v14, v7, 0x400

    const/16 v15, 0x400

    if-eq v14, v15, :cond_8

    .line 112
    new-instance v14, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v14}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 113
    or-int/lit16 v7, v7, 0x400

    .line 115
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v14, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 119
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit16 v14, v14, 0x80

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z

    goto/16 :goto_0

    .line 124
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 125
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    and-int/lit8 v14, v7, 0x8

    const/16 v15, 0x8

    if-eq v14, v15, :cond_9

    .line 126
    new-instance v14, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v14}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 127
    or-int/lit8 v7, v7, 0x8

    .line 129
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v14, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 133
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 134
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    and-int/lit16 v14, v7, 0x80

    const/16 v15, 0x80

    if-eq v14, v15, :cond_a

    .line 135
    new-instance v14, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v14}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 136
    or-int/lit16 v7, v7, 0x80

    .line 138
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v14, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 142
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_c
    const/4 v10, 0x0

    .line 143
    .local v10, subBuilder:Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v14, v14, 0x100

    const/16 v15, 0x100

    if-ne v14, v15, :cond_b

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v10

    .line 146
    :cond_b
    sget-object v14, Lcom/google/googlex/glass/common/proto/Entity$Priority;->PARSER:Lcom/google/protobuf/Parser;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v14

    check-cast v14, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 147
    if-eqz v10, :cond_c

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-virtual {v10, v14}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    .line 149
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 151
    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit16 v14, v14, 0x100

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    goto/16 :goto_0

    .line 155
    .end local v10           #subBuilder:Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    :sswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 156
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    and-int/lit16 v14, v7, 0x200

    const/16 v15, 0x200

    if-eq v14, v15, :cond_d

    .line 157
    new-instance v14, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v14}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 158
    or-int/lit16 v7, v7, 0x200

    .line 160
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v14, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 164
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_e
    and-int/lit16 v14, v7, 0x2000

    const/16 v15, 0x2000

    if-eq v14, v15, :cond_e

    .line 165
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    .line 166
    or-int/lit16 v7, v7, 0x2000

    .line 168
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    sget-object v15, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 172
    :sswitch_f
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 173
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    or-int/lit16 v14, v14, 0x200

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    .line 174
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 178
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 179
    .restart local v9       #rawValue:I
    invoke-static {v9}, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->valueOf(I)Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    move-result-object v13

    .line 180
    .local v13, value:Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
    if-nez v13, :cond_f

    .line 181
    const/16 v14, 0x14

    invoke-virtual {v12, v14, v9}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 183
    :cond_f
    const v14, 0x8000

    and-int/2addr v14, v7

    const v15, 0x8000

    if-eq v14, v15, :cond_10

    .line 184
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    .line 185
    const v14, 0x8000

    or-int/2addr v7, v14

    .line 187
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 192
    .end local v9           #rawValue:I
    .end local v13           #value:Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    .line 193
    .local v6, length:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v8

    .line 194
    .local v8, oldLimit:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_13

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 196
    .restart local v9       #rawValue:I
    invoke-static {v9}, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->valueOf(I)Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    move-result-object v13

    .line 197
    .restart local v13       #value:Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
    if-nez v13, :cond_11

    .line 198
    const/16 v14, 0x14

    invoke-virtual {v12, v14, v9}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_1

    .line 200
    :cond_11
    const v14, 0x8000

    and-int/2addr v14, v7

    const v15, 0x8000

    if-eq v14, v15, :cond_12

    .line 201
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    .line 202
    const v14, 0x8000

    or-int/2addr v7, v14

    .line 204
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    .end local v9           #rawValue:I
    .end local v13           #value:Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 218
    .end local v6           #length:I
    .end local v8           #oldLimit:I
    .end local v11           #tag:I
    :cond_14
    and-int/lit16 v14, v7, 0x400

    const/16 v15, 0x400

    if-ne v14, v15, :cond_15

    .line 219
    new-instance v14, Lcom/google/protobuf/UnmodifiableLazyStringList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v14, v15}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 221
    :cond_15
    and-int/lit8 v14, v7, 0x8

    const/16 v15, 0x8

    if-ne v14, v15, :cond_16

    .line 222
    new-instance v14, Lcom/google/protobuf/UnmodifiableLazyStringList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v14, v15}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 224
    :cond_16
    and-int/lit16 v14, v7, 0x80

    const/16 v15, 0x80

    if-ne v14, v15, :cond_17

    .line 225
    new-instance v14, Lcom/google/protobuf/UnmodifiableLazyStringList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v14, v15}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 227
    :cond_17
    and-int/lit16 v14, v7, 0x200

    const/16 v15, 0x200

    if-ne v14, v15, :cond_18

    .line 228
    new-instance v14, Lcom/google/protobuf/UnmodifiableLazyStringList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v14, v15}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 230
    :cond_18
    and-int/lit16 v14, v7, 0x2000

    const/16 v15, 0x2000

    if-ne v14, v15, :cond_19

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    .line 233
    :cond_19
    const v14, 0x8000

    and-int/2addr v14, v7

    const v15, 0x8000

    if-ne v14, v15, :cond_1a

    .line 234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    .line 236
    :cond_1a
    invoke-virtual {v12}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Entity;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/Entity;->makeExtensionsImmutable()V

    .line 239
    return-void

    .line 52
    nop

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
        0xa0 -> :sswitch_10
        0xa2 -> :sswitch_11
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

    .line 2262
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedIsInitialized:B

    .line 2325
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

    .line 2262
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedIsInitialized:B

    .line 2325
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

.method static synthetic access$3500(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/google/googlex/glass/common/proto/Entity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/googlex/glass/common/proto/Entity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    return p1
.end method

.method static synthetic access$3700()Z
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
    .line 242
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2245
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;

    .line 2246
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;

    .line 2247
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    .line 2248
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2249
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z

    .line 2250
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 2251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    .line 2252
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 2253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    .line 2254
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 2255
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 2256
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z

    .line 2257
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 2258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    .line 2259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    .line 2260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    .line 2261
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2495
    #calls: Lcom/google/googlex/glass/common/proto/Entity$Builder;->create()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->access$1600()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2498
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
    .line 2475
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
    .line 2481
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
    .line 2445
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
    .line 2451
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
    .line 2486
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
    .line 2492
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
    .line 2465
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
    .line 2471
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
    .line 2455
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
    .line 2461
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
    .line 2156
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    return-object v0
.end method

.method public getAcceptCommandCount()I
    .locals 1

    .prologue
    .line 2150
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
    .line 2137
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    return-object v0
.end method

.method public getAcceptCommandOrBuilder(I)Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2163
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
    .line 2144
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    return-object v0
.end method

.method public getAcceptType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2068
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
    .line 2082
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptTypeCount()I
    .locals 1

    .prologue
    .line 2055
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
    .line 2042
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getContactGroup(I)Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
    .locals 1
    .parameter "index"

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    return-object v0
.end method

.method public getContactGroupCount()I
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContactGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

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
    .line 1681
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    .line 1682
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1683
    check-cast v1, Ljava/lang/String;

    .line 1691
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1685
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1687
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1688
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1689
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1691
    goto :goto_0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1703
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    .line 1704
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1705
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1708
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;

    .line 1711
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
    .line 1949
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    .line 1950
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1951
    check-cast v1, Ljava/lang/String;

    .line 1959
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1953
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1955
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1956
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1957
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1959
    goto :goto_0
.end method

.method public getEmailBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1971
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    .line 1972
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1973
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1976
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;

    .line 1979
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
    .line 1626
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;

    .line 1627
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1628
    check-cast v1, Ljava/lang/String;

    .line 1636
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1630
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1632
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1633
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1634
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1636
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1649
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;

    .line 1650
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1651
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1654
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;

    .line 1657
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
    .line 1764
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
    .line 1781
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlCount()I
    .locals 1

    .prologue
    .line 1748
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
    .line 1732
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getIsCommunicationTarget()Z
    .locals 1

    .prologue
    .line 2107
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
    .line 264
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1848
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    .line 1849
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1850
    check-cast v1, Ljava/lang/String;

    .line 1858
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1852
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1854
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1855
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1856
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1858
    goto :goto_0
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1872
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    .line 1873
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1874
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1877
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;

    .line 1880
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
    .line 2122
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public getPriorityOrBuilder()Lcom/google/googlex/glass/common/proto/Entity$PriorityOrBuilder;
    .locals 1

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    return-object v0
.end method

.method public getSecondaryEmail(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2014
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
    .line 2025
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryEmailCount()I
    .locals 1

    .prologue
    .line 2004
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
    .line 1994
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSecondaryPhoneNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1915
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
    .line 1926
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryPhoneNumberCount()I
    .locals 1

    .prologue
    .line 1905
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
    .line 1895
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

    .line 2327
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedSerializedSize:I

    .line 2328
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 2422
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 2330
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 2331
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 2332
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2335
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2

    .line 2336
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2339
    :cond_2
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 2340
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2343
    :cond_3
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v7, :cond_4

    .line 2344
    const/4 v4, 0x5

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2347
    :cond_4
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v8, :cond_5

    .line 2348
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity$Type;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2351
    :cond_5
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_6

    .line 2352
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2355
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_7

    .line 2356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2360
    :cond_7
    const/4 v0, 0x0

    .line 2361
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 2362
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2361
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2365
    :cond_8
    add-int/2addr v2, v0

    .line 2366
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getAcceptTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2368
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_9

    .line 2369
    const/16 v4, 0xa

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2373
    :cond_9
    const/4 v0, 0x0

    .line 2374
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 2375
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2374
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2378
    :cond_a
    add-int/2addr v2, v0

    .line 2379
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2382
    const/4 v0, 0x0

    .line 2383
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 2384
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2383
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2387
    :cond_b
    add-int/2addr v2, v0

    .line 2388
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSecondaryPhoneNumberList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2390
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_c

    .line 2391
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2395
    :cond_c
    const/4 v0, 0x0

    .line 2396
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 2397
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2396
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2400
    :cond_d
    add-int/2addr v2, v0

    .line 2401
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSecondaryEmailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2403
    const/4 v1, 0x0

    :goto_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    .line 2404
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2403
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2407
    :cond_e
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_f

    .line 2408
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSpeakableNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2412
    :cond_f
    const/4 v0, 0x0

    .line 2413
    const/4 v1, 0x0

    :goto_6
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_10

    .line 2414
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 2413
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2417
    :cond_10
    add-int/2addr v2, v0

    .line 2418
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 2420
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 2421
    iput v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedSerializedSize:I

    move v3, v2

    .line 2422
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getShouldSync()Z
    .locals 1

    .prologue
    .line 1806
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1569
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;

    .line 1570
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1571
    check-cast v1, Ljava/lang/String;

    .line 1579
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1573
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1575
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1576
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1577
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1579
    goto :goto_0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1592
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;

    .line 1593
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1594
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1597
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;

    .line 1600
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
    .line 2188
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    .line 2189
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2190
    check-cast v1, Ljava/lang/String;

    .line 2198
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2192
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2194
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2195
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2196
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2198
    goto :goto_0
.end method

.method public getSpeakableNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2211
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    .line 2212
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2213
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2216
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;

    .line 2219
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
    .line 1821
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
    .line 1671
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
    .line 1939
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
    .line 1615
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
    .line 2096
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
    .line 1836
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
    .line 2116
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
    .line 1795
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

    .line 1558
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
    .line 2177
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
    .line 1815
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
    .line 247
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
    .line 2436
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 2437
    const-string v0, "com.google.googlex.glass.common.proto.MutableTimeline$Entity"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2439
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2264
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedIsInitialized:B

    .line 2265
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 2268
    :goto_0
    return v1

    .line 2265
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2267
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2496
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 2505
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Entity$1;)V

    .line 2506
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
    .line 2500
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
    .line 2429
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

    .line 2273
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSerializedSize()I

    .line 2274
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 2275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2277
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 2278
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2280
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 2281
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2283
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v4, :cond_3

    .line 2284
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2286
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v5, :cond_4

    .line 2287
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity$Type;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2289
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 2290
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2292
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 2293
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2295
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2296
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2298
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 2299
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2301
    :cond_8
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 2302
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2301
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2304
    :cond_9
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 2305
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2304
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2307
    :cond_a
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_b

    .line 2308
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2310
    :cond_b
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 2311
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2310
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2313
    :cond_c
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 2314
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2313
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2316
    :cond_d
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_e

    .line 2317
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSpeakableNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2319
    :cond_e
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 2320
    const/16 v2, 0x14

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2319
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2322
    :cond_f
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2323
    return-void
.end method
