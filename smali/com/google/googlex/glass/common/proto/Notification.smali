.class public final Lcom/google/googlex/glass/common/proto/Notification;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Notification.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/NotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/Notification$Builder;
    }
.end annotation


# static fields
.field public static final CALLBACK_URL_FIELD_NUMBER:I = 0x7

.field public static final COLLECTION_FIELD_NUMBER:I = 0x1

.field public static final ITEM_ID_FIELD_NUMBER:I = 0x2

.field public static final MENU_ACTION_FIELD_NUMBER:I = 0x4

.field public static final OPERATION_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_FIELD_NUMBER:I = 0xb

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x9

.field public static final USER_ACTION_FIELD_NUMBER:I = 0xa

.field public static final USER_ID_FIELD_NUMBER:I = 0x8

.field public static final USER_TOKEN_FIELD_NUMBER:I = 0x6

.field public static final VERIFY_TOKEN_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/Notification;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private callbackUrl_:Ljava/lang/Object;

.field private collection_:Ljava/lang/Object;

.field private itemId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private menuAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

.field private source_:Ljava/lang/Object;

.field private timestamp_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private userAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;"
        }
    .end annotation
.end field

.field private userId_:J

.field private userToken_:Ljava/lang/Object;

.field private verifyToken_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/google/googlex/glass/common/proto/Notification$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Notification$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    .line 839
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Notification;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2652
    new-instance v0, Lcom/google/googlex/glass/common/proto/Notification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/Notification;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Notification;->defaultInstance:Lcom/google/googlex/glass/common/proto/Notification;

    .line 2653
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->defaultInstance:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Notification;->initFields()V

    .line 2654
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 12
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/16 v11, 0x20

    const/16 v10, 0x10

    .line 48
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 728
    iput-byte v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedIsInitialized:B

    .line 776
    iput v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedSerializedSize:I

    .line 49
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification;->initFields()V

    .line 50
    const/4 v3, 0x0

    .line 51
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 54
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 55
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 57
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 62
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/googlex/glass/common/proto/Notification;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 64
    const/4 v1, 0x1

    goto :goto_0

    .line 59
    :sswitch_0
    const/4 v1, 0x1

    .line 60
    goto :goto_0

    .line 69
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 70
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 71
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 143
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 144
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit8 v9, v3, 0x10

    if-ne v9, v10, :cond_1

    .line 150
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    .line 152
    :cond_1
    and-int/lit8 v9, v3, 0x20

    if-ne v9, v11, :cond_2

    .line 153
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    .line 155
    :cond_2
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/Notification;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 156
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->makeExtensionsImmutable()V

    throw v8

    .line 75
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 76
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 77
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 145
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_1
    move-exception v2

    .line 146
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

    .line 81
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 82
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->valueOf(I)Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    move-result-object v7

    .line 83
    .local v7, value:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    if-nez v7, :cond_3

    .line 84
    const/4 v8, 0x3

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 86
    :cond_3
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 87
    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    goto :goto_0

    .line 92
    .end local v4           #rawValue:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    :sswitch_4
    and-int/lit8 v8, v3, 0x10

    if-eq v8, v10, :cond_4

    .line 93
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    .line 94
    or-int/lit8 v3, v3, 0x10

    .line 96
    :cond_4
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    sget-object v9, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 100
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 101
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 102
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 106
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 107
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 108
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 112
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 113
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 114
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 118
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_8
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 119
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->userId_:J

    goto/16 :goto_0

    .line 123
    :sswitch_9
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 124
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J

    goto/16 :goto_0

    .line 128
    :sswitch_a
    and-int/lit8 v8, v3, 0x20

    if-eq v8, v11, :cond_5

    .line 129
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    .line 130
    or-int/lit8 v3, v3, 0x20

    .line 132
    :cond_5
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    sget-object v9, Lcom/google/googlex/glass/common/proto/UserAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 136
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 137
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 138
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->source_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 149
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :cond_6
    and-int/lit8 v8, v3, 0x10

    if-ne v8, v10, :cond_7

    .line 150
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    .line 152
    :cond_7
    and-int/lit8 v8, v3, 0x20

    if-ne v8, v11, :cond_8

    .line 153
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    .line 155
    :cond_8
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 156
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->makeExtensionsImmutable()V

    .line 158
    return-void

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/Notification$1;)V
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
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Notification;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 25
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 728
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedIsInitialized:B

    .line 776
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedSerializedSize:I

    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Notification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Notification;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 728
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedIsInitialized:B

    .line 776
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedSerializedSize:I

    .line 28
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/Notification;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/Notification;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userId_:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/Notification;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/google/googlex/glass/common/proto/Notification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    return p1
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Notification;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Notification;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Notification;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->source_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->source_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/Notification;Lcom/google/googlex/glass/common/proto/Subscription$Operation;)Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/Notification;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->defaultInstance:Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Notification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 716
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;

    .line 717
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;

    .line 718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->source_:Ljava/lang/Object;

    .line 719
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 720
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    .line 721
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    .line 722
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    .line 723
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    .line 724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    .line 725
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userId_:J

    .line 726
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J

    .line 727
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 901
    #calls: Lcom/google/googlex/glass/common/proto/Notification$Builder;->create()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->access$100()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 904
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->newBuilder()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 881
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 887
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 851
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 857
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 892
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 898
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 877
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 861
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 867
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method


# virtual methods
.method public getCallbackUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 628
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    .line 629
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 630
    check-cast v1, Ljava/lang/String;

    .line 638
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 632
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 634
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 636
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 638
    goto :goto_0
.end method

.method public getCallbackUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 651
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    .line 652
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 653
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 656
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    .line 659
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
    .line 207
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;

    .line 208
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 209
    check-cast v1, Ljava/lang/String;

    .line 217
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 211
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 213
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 217
    goto :goto_0
.end method

.method public getCollectionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;

    .line 230
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 231
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 234
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;

    .line 237
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->defaultInstance:Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;

    .line 262
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 263
    check-cast v1, Ljava/lang/String;

    .line 271
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 265
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 267
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 271
    goto :goto_0
.end method

.method public getItemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;

    .line 284
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 285
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 288
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;

    .line 291
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

.method public getMenuAction(I)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public getMenuActionCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMenuActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    return-object v0
.end method

.method public getMenuActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;

    return-object v0
.end method

.method public getMenuActionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    return-object v0
.end method

.method public getOperation()Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 778
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedSerializedSize:I

    .line 779
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 828
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 781
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 782
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 783
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getCollectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 786
    :cond_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 787
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getItemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 790
    :cond_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_3

    .line 791
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 794
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 795
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 798
    :cond_4
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 799
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getVerifyTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 802
    :cond_5
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 803
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 806
    :cond_6
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    .line 807
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getCallbackUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 810
    :cond_7
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8

    .line 811
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->userId_:J

    invoke-static {v7, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 814
    :cond_8
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9

    .line 815
    const/16 v3, 0x9

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 818
    :cond_9
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 819
    const/16 v4, 0xa

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 822
    :cond_a
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_b

    .line 823
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 826
    :cond_b
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 827
    iput v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedSerializedSize:I

    move v2, v1

    .line 828
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 315
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->source_:Ljava/lang/Object;

    .line 316
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 317
    check-cast v1, Ljava/lang/String;

    .line 325
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 319
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 321
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->source_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 325
    goto :goto_0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 337
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->source_:Ljava/lang/Object;

    .line 338
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 339
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 342
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->source_:Ljava/lang/Object;

    .line 345
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

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 712
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUserAction(I)Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1
    .parameter "index"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    return-object v0
.end method

.method public getUserActionCount()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method public getUserActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;

    return-object v0
.end method

.method public getUserActionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 685
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userId_:J

    return-wide v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 571
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    .line 572
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 573
    check-cast v1, Ljava/lang/String;

    .line 581
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 575
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 577
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 579
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 581
    goto :goto_0
.end method

.method public getUserTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 594
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    .line 595
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 596
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 599
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    .line 602
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
    .line 514
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    .line 515
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 516
    check-cast v1, Ljava/lang/String;

    .line 524
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 518
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 520
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 522
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 524
    goto :goto_0
.end method

.method public getVerifyTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 537
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    .line 538
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 539
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 542
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    .line 545
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
    .line 617
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

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

.method public hasCollection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 197
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemId()Z
    .locals 2

    .prologue
    .line 251
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

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

.method public hasOperation()Z
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

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
    .line 305
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 700
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    .prologue
    .line 674
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

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

.method public hasUserToken()Z
    .locals 2

    .prologue
    .line 560
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

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

.method public hasVerifyToken()Z
    .locals 2

    .prologue
    .line 503
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

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
    .line 166
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Notification_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Notification;

    const-class v2, Lcom/google/googlex/glass/common/proto/Notification$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 842
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 843
    const-string v0, "com.google.googlex.glass.common.proto.MutableSubscriptions$Notification"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Notification;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Notification;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 845
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 730
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedIsInitialized:B

    .line 731
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 734
    :goto_0
    return v1

    .line 731
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 733
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 902
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->newBuilder()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 911
    new-instance v0, Lcom/google/googlex/glass/common/proto/Notification$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Notification$1;)V

    .line 912
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Notification$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Notification;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 906
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/Notification;->newBuilder(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->toBuilder()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->toBuilder()Lcom/google/googlex/glass/common/proto/Notification$Builder;

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
    .line 835
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

    .line 739
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getSerializedSize()I

    .line 740
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getCollectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 743
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 744
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getItemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 746
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_2

    .line 747
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 749
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 750
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 753
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getVerifyTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 755
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 756
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 758
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 759
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getCallbackUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 761
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 762
    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userId_:J

    invoke-virtual {p1, v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 764
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 765
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 767
    :cond_8
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 768
    const/16 v2, 0xa

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 770
    :cond_9
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_a

    .line 771
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 773
    :cond_a
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 774
    return-void
.end method
