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
    .line 160
    new-instance v0, Lcom/google/googlex/glass/common/proto/Notification$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Notification$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    .line 766
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Notification;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2453
    new-instance v0, Lcom/google/googlex/glass/common/proto/Notification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/Notification;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Notification;->defaultInstance:Lcom/google/googlex/glass/common/proto/Notification;

    .line 2454
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->defaultInstance:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Notification;->initFields()V

    .line 2455
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
    const/4 v7, -0x1

    const/16 v10, 0x10

    const/16 v9, 0x8

    .line 48
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 662
    iput-byte v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedIsInitialized:B

    .line 707
    iput v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedSerializedSize:I

    .line 49
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Notification;->initFields()V

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 54
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 55
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 57
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 62
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/Notification;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :sswitch_0
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 69
    :sswitch_1
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 70
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 132
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    and-int/lit8 v8, v2, 0x8

    if-ne v8, v9, :cond_1

    .line 139
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    .line 141
    :cond_1
    and-int/lit8 v8, v2, 0x10

    if-ne v8, v10, :cond_2

    .line 142
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    .line 144
    :cond_2
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Notification;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 145
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->makeExtensionsImmutable()V

    throw v7

    .line 74
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 75
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 134
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 135
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

    .line 79
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 80
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->valueOf(I)Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    move-result-object v6

    .line 81
    .local v6, value:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    if-nez v6, :cond_3

    .line 82
    const/4 v7, 0x3

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 84
    :cond_3
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 85
    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    goto :goto_0

    .line 90
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    :sswitch_4
    and-int/lit8 v7, v2, 0x8

    if-eq v7, v9, :cond_4

    .line 91
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    .line 92
    or-int/lit8 v2, v2, 0x8

    .line 94
    :cond_4
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    sget-object v8, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 98
    :sswitch_5
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 99
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 103
    :sswitch_6
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 104
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 108
    :sswitch_7
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 109
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 113
    :sswitch_8
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 114
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->userId_:J

    goto/16 :goto_0

    .line 118
    :sswitch_9
    iget v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    .line 119
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J

    goto/16 :goto_0

    .line 123
    :sswitch_a
    and-int/lit8 v7, v2, 0x10

    if-eq v7, v10, :cond_5

    .line 124
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    .line 125
    or-int/lit8 v2, v2, 0x10

    .line 127
    :cond_5
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    sget-object v8, Lcom/google/googlex/glass/common/proto/UserAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 138
    .end local v4           #tag:I
    :cond_6
    and-int/lit8 v7, v2, 0x8

    if-ne v7, v9, :cond_7

    .line 139
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    .line 141
    :cond_7
    and-int/lit8 v7, v2, 0x10

    if-ne v7, v10, :cond_8

    .line 142
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    .line 144
    :cond_8
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/Notification;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 145
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->makeExtensionsImmutable()V

    .line 147
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

    .line 662
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedIsInitialized:B

    .line 707
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

    .line 662
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedIsInitialized:B

    .line 707
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedSerializedSize:I

    .line 28
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/googlex/glass/common/proto/Notification;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/Notification;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userId_:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/Notification;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/Notification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    return p1
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Notification;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1700()Z
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

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/Notification;Lcom/google/googlex/glass/common/proto/Subscription$Operation;)Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/Notification;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/googlex/glass/common/proto/Notification;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/Notification;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

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
    .line 150
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Notification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 651
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;

    .line 652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;

    .line 653
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 654
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    .line 655
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    .line 656
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    .line 657
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    .line 658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    .line 659
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userId_:J

    .line 660
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J

    .line 661
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 828
    #calls: Lcom/google/googlex/glass/common/proto/Notification$Builder;->create()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->access$100()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 831
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
    .line 808
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
    .line 814
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
    .line 778
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
    .line 784
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
    .line 819
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
    .line 825
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
    .line 798
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
    .line 804
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
    .line 788
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
    .line 794
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
    .line 563
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    .line 564
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 565
    check-cast v1, Ljava/lang/String;

    .line 573
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 567
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 569
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 571
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 573
    goto :goto_0
.end method

.method public getCallbackUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 586
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    .line 587
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 588
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 591
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->callbackUrl_:Ljava/lang/Object;

    .line 594
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
    .line 196
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;

    .line 197
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 198
    check-cast v1, Ljava/lang/String;

    .line 206
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 200
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 202
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 206
    goto :goto_0
.end method

.method public getCollectionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;

    .line 219
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 220
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 223
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->collection_:Ljava/lang/Object;

    .line 226
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
    .line 250
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;

    .line 251
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 252
    check-cast v1, Ljava/lang/String;

    .line 260
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 254
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 256
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 260
    goto :goto_0
.end method

.method public getItemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 272
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;

    .line 273
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 274
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 277
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->itemId_:Ljava/lang/Object;

    .line 280
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
    .line 352
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
    .line 341
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
    .line 318
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    return-object v0
.end method

.method public getMenuActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
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
    .line 330
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    return-object v0
.end method

.method public getOperation()Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    .locals 1

    .prologue
    .line 304
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
    .line 172
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

    .line 709
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedSerializedSize:I

    .line 710
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 755
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 712
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 713
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getCollectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 717
    :cond_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getItemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 721
    :cond_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 722
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 725
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 726
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 729
    :cond_4
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_5

    .line 730
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getVerifyTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 733
    :cond_5
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    .line 734
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 737
    :cond_6
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7

    .line 738
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getCallbackUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 741
    :cond_7
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_8

    .line 742
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->userId_:J

    invoke-static {v7, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 745
    :cond_8
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_9

    .line 746
    const/16 v3, 0x9

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 749
    :cond_9
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 750
    const/16 v4, 0xa

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 753
    :cond_a
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 754
    iput v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedSerializedSize:I

    move v2, v1

    .line 755
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 647
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
    .line 412
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    return-object v0
.end method

.method public getUserActionCount()I
    .locals 1

    .prologue
    .line 401
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
    .line 378
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method public getUserActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 424
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
    .line 390
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 620
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userId_:J

    return-wide v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 506
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    .line 507
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 508
    check-cast v1, Ljava/lang/String;

    .line 516
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 510
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 512
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 514
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 516
    goto :goto_0
.end method

.method public getUserTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 529
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    .line 530
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 531
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 534
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->userToken_:Ljava/lang/Object;

    .line 537
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
    .line 449
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    .line 450
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 451
    check-cast v1, Ljava/lang/String;

    .line 459
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 453
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 455
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 457
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 459
    goto :goto_0
.end method

.method public getVerifyTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 472
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->verifyToken_:Ljava/lang/Object;

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

.method public hasCallbackUrl()Z
    .locals 2

    .prologue
    .line 552
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

.method public hasCollection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 186
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
    .line 240
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
    .line 294
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
    .line 635
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

.method public hasUserId()Z
    .locals 2

    .prologue
    .line 609
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

.method public hasUserToken()Z
    .locals 2

    .prologue
    .line 495
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

.method public hasVerifyToken()Z
    .locals 2

    .prologue
    .line 438
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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 155
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
    .line 769
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 770
    const-string v0, "com.google.googlex.glass.common.proto.MutableSubscriptions$Notification"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Notification;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Notification;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 772
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Notification;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 664
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedIsInitialized:B

    .line 665
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 668
    :goto_0
    return v1

    .line 665
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 667
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 1

    .prologue
    .line 829
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->newBuilder()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 838
    new-instance v0, Lcom/google/googlex/glass/common/proto/Notification$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/Notification$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Notification$1;)V

    .line 839
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
    .line 833
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
    .line 762
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

    .line 673
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getSerializedSize()I

    .line 674
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getCollectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 677
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getItemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 680
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 681
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->operation_:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 683
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 684
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->menuAction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 687
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getVerifyTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 689
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 690
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 692
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 693
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getCallbackUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 695
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 696
    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userId_:J

    invoke-virtual {p1, v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 698
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 699
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/Notification;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 701
    :cond_8
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 702
    const/16 v2, 0xa

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Notification;->userAction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 704
    :cond_9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Notification;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 705
    return-void
.end method
