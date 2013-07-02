.class public final Lcom/google/googlex/glass/common/proto/Subscription;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Subscription.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/SubscriptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/Subscription$Builder;,
        Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    }
.end annotation


# static fields
.field public static final CALLBACK_URL_FIELD_NUMBER:I = 0x6

.field public static final COLLECTION_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MODIFIED_TIME_FIELD_NUMBER:I = 0x2

.field public static final NOTIFICATION_FIELD_NUMBER:I = 0x3e7

.field public static final OPERATION_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBSCRIBER_FIELD_NUMBER:I = 0x3

.field public static final USER_TOKEN_FIELD_NUMBER:I = 0x8

.field public static final VERIFY_TOKEN_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/Subscription;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private callbackUrl_:Ljava/lang/Object;

.field private collection_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private modifiedTime_:J

.field private notification_:Lcom/google/googlex/glass/common/proto/Notification;

.field private operation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Subscription$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private subscriber_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private userToken_:Ljava/lang/Object;

.field private verifyToken_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Subscription$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    .line 825
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2034
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/Subscription;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->defaultInstance:Lcom/google/googlex/glass/common/proto/Subscription;

    .line 2035
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->defaultInstance:Lcom/google/googlex/glass/common/proto/Subscription;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->initFields()V

    .line 2036
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
    .line 42
    invoke-direct/range {p0 .. p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 723
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput-byte v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedIsInitialized:B

    .line 765
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedSerializedSize:I

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/Subscription;->initFields()V

    .line 44
    const/4 v7, 0x0

    .line 45
    .local v7, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v12

    .line 48
    .local v12, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v4, 0x0

    .line 49
    .local v4, done:Z
    :cond_0
    :goto_0
    if-nez v4, :cond_9

    .line 50
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v11

    .line 51
    .local v11, tag:I
    sparse-switch v11, :sswitch_data_0

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v12, v2, v11}, Lcom/google/googlex/glass/common/proto/Subscription;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 58
    const/4 v4, 0x1

    goto :goto_0

    .line 53
    :sswitch_0
    const/4 v4, 0x1

    .line 54
    goto :goto_0

    .line 63
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 64
    .local v3, bs:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 65
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 151
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    .end local v11           #tag:I
    :catch_0
    move-exception v5

    .line 152
    .local v5, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v14

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .end local v5           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v14

    and-int/lit8 v15, v7, 0x10

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    .line 160
    :cond_1
    invoke-virtual {v12}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/googlex/glass/common/proto/Subscription;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/Subscription;->makeExtensionsImmutable()V

    throw v14

    .line 69
    .restart local v11       #tag:I
    :sswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 153
    .end local v11           #tag:I
    :catch_1
    move-exception v5

    .line 154
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

    .line 74
    .end local v5           #e:Ljava/io/IOException;
    .restart local v11       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 75
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v14, v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 76
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 80
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 81
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 82
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 86
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 87
    .local v9, rawValue:I
    invoke-static {v9}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->valueOf(I)Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    move-result-object v13

    .line 88
    .local v13, value:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    if-nez v13, :cond_2

    .line 89
    const/4 v14, 0x5

    invoke-virtual {v12, v14, v9}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 91
    :cond_2
    and-int/lit8 v14, v7, 0x10

    const/16 v15, 0x10

    if-eq v14, v15, :cond_3

    .line 92
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    .line 93
    or-int/lit8 v7, v7, 0x10

    .line 95
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 100
    .end local v9           #rawValue:I
    .end local v13           #value:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    .line 101
    .local v6, length:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v8

    .line 102
    .local v8, oldLimit:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_6

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 104
    .restart local v9       #rawValue:I
    invoke-static {v9}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->valueOf(I)Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    move-result-object v13

    .line 105
    .restart local v13       #value:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    if-nez v13, :cond_4

    .line 106
    const/4 v14, 0x5

    invoke-virtual {v12, v14, v9}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_1

    .line 108
    :cond_4
    and-int/lit8 v14, v7, 0x10

    const/16 v15, 0x10

    if-eq v14, v15, :cond_5

    .line 109
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    .line 110
    or-int/lit8 v7, v7, 0x10

    .line 112
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    .end local v9           #rawValue:I
    .end local v13           #value:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 119
    .end local v6           #length:I
    .end local v8           #oldLimit:I
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 120
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v14, v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 121
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 125
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 126
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v14, v14, 0x20

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 127
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 131
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 132
    .restart local v3       #bs:Lcom/google/protobuf/ByteString;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v14, v14, 0x40

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 133
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 137
    .end local v3           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_a
    const/4 v10, 0x0

    .line 138
    .local v10, subBuilder:Lcom/google/googlex/glass/common/proto/Notification$Builder;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit16 v14, v14, 0x80

    const/16 v15, 0x80

    if-ne v14, v15, :cond_7

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/Notification;->toBuilder()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v10

    .line 141
    :cond_7
    sget-object v14, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v14

    check-cast v14, Lcom/google/googlex/glass/common/proto/Notification;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 142
    if-eqz v10, :cond_8

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-virtual {v10, v14}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    .line 144
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 146
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit16 v14, v14, 0x80

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 157
    .end local v10           #subBuilder:Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .end local v11           #tag:I
    :cond_9
    and-int/lit8 v14, v7, 0x10

    const/16 v15, 0x10

    if-ne v14, v15, :cond_a

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    .line 160
    :cond_a
    invoke-virtual {v12}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/googlex/glass/common/proto/Subscription;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlex/glass/common/proto/Subscription;->makeExtensionsImmutable()V

    .line 163
    return-void

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
        0x42 -> :sswitch_9
        0x1f3a -> :sswitch_a
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/Subscription$1;)V
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
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Subscription;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 19
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 723
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedIsInitialized:B

    .line 765
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Subscription$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Subscription;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 723
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedIsInitialized:B

    .line 765
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/Subscription;Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/Subscription;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Subscription;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/Subscription;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/googlex/glass/common/proto/Subscription;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/Subscription;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->defaultInstance:Lcom/google/googlex/glass/common/proto/Subscription;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;

    .line 714
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J

    .line 715
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    .line 716
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    .line 717
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    .line 718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    .line 719
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    .line 720
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    .line 721
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 722
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 887
    #calls: Lcom/google/googlex/glass/common/proto/Subscription$Builder;->create()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->access$100()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 890
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->newBuilder()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 837
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 843
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 884
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 863
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 847
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 853
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription;

    return-object v0
.end method


# virtual methods
.method public getCallbackUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 525
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    .line 526
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 527
    check-cast v1, Ljava/lang/String;

    .line 535
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 529
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 531
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 533
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 535
    goto :goto_0
.end method

.method public getCallbackUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 547
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    .line 548
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 549
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 552
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    .line 555
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

.method public getCollection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 450
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    .line 451
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 452
    check-cast v1, Ljava/lang/String;

    .line 460
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 454
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 456
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 460
    goto :goto_0
.end method

.method public getCollectionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 472
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    .line 473
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 474
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 477
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    .line 480
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Subscription;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->defaultInstance:Lcom/google/googlex/glass/common/proto/Subscription;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;

    .line 318
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 319
    check-cast v1, Ljava/lang/String;

    .line 327
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 321
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 323
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 327
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 339
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;

    .line 340
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 341
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 344
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;

    .line 347
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

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 373
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J

    return-wide v0
.end method

.method public getNotification()Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public getNotificationOrBuilder()Lcom/google/googlex/glass/common/proto/NotificationOrBuilder;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public getOperation(I)Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    .locals 1
    .parameter "index"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    return-object v0
.end method

.method public getOperationCount()I
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOperationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Subscription$Operation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 767
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedSerializedSize:I

    .line 768
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 814
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 770
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 771
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 772
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 775
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2

    .line 776
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 779
    :cond_2
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3

    .line 780
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getSubscriberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 783
    :cond_3
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v8, :cond_4

    .line 784
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getCollectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 788
    :cond_4
    const/4 v0, 0x0

    .line 789
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 790
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 789
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 793
    :cond_5
    add-int/2addr v2, v0

    .line 794
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 796
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6

    .line 797
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getCallbackUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 800
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7

    .line 801
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getVerifyTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 804
    :cond_7
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_8

    .line 805
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 808
    :cond_8
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_9

    .line 809
    const/16 v4, 0x3e7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 812
    :cond_9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 813
    iput v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedSerializedSize:I

    move v3, v2

    .line 814
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getSubscriber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 396
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    .line 397
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 398
    check-cast v1, Ljava/lang/String;

    .line 406
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 400
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 402
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 406
    goto :goto_0
.end method

.method public getSubscriberBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 418
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    .line 419
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 420
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 423
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    .line 426
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
    .line 37
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 638
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    .line 639
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 640
    check-cast v1, Ljava/lang/String;

    .line 648
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 642
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 644
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 646
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 648
    goto :goto_0
.end method

.method public getUserTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 661
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    .line 662
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 663
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 666
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    .line 669
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

.method public getVerifyToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 581
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    .line 582
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 583
    check-cast v1, Ljava/lang/String;

    .line 591
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 585
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 587
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 589
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 591
    goto :goto_0
.end method

.method public getVerifyTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 604
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    .line 605
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 606
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 609
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    .line 612
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

.method public hasCallbackUrl()Z
    .locals 2

    .prologue
    .line 515
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

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

.method public hasCollection()Z
    .locals 2

    .prologue
    .line 440
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 307
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedTime()Z
    .locals 2

    .prologue
    .line 362
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

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

.method public hasNotification()Z
    .locals 2

    .prologue
    .line 685
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

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

.method public hasSubscriber()Z
    .locals 2

    .prologue
    .line 386
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

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

.method public hasUserToken()Z
    .locals 2

    .prologue
    .line 627
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

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

.method public hasVerifyToken()Z
    .locals 2

    .prologue
    .line 570
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 171
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Subscription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Subscription;

    const-class v2, Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 828
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 829
    const-string v0, "com.google.googlex.glass.common.proto.MutableSubscriptions$Subscription"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 831
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 725
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedIsInitialized:B

    .line 726
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 729
    :goto_0
    return v1

    .line 726
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 728
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 888
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->newBuilder()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 897
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Subscription$1;)V

    .line 898
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Subscription;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 892
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->newBuilder(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->toBuilder()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->toBuilder()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

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
    .line 821
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
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 734
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getSerializedSize()I

    .line 735
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 738
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 739
    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 741
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 742
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getSubscriberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 744
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 745
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getCollectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 747
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 748
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 750
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 751
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getCallbackUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 753
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 754
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getVerifyTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 756
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 759
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 760
    const/16 v1, 0x3e7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 762
    :cond_8
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 763
    return-void
.end method
