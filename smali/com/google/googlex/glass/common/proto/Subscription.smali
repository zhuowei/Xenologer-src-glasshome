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
    .line 170
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Subscription$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->PARSER:Lcom/google/protobuf/Parser;

    .line 819
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2010
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/Subscription;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->defaultInstance:Lcom/google/googlex/glass/common/proto/Subscription;

    .line 2011
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->defaultInstance:Lcom/google/googlex/glass/common/proto/Subscription;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->initFields()V

    .line 2012
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 13
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/16 v12, 0x10

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 717
    iput-byte v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedIsInitialized:B

    .line 759
    iput v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->initFields()V

    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v8

    .line 48
    .local v8, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 49
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_9

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v7

    .line 51
    .local v7, tag:I
    sparse-switch v7, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v8, p2, v7}, Lcom/google/googlex/glass/common/proto/Subscription;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :sswitch_0
    const/4 v0, 0x1

    .line 54
    goto :goto_0

    .line 63
    :sswitch_1
    iget v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 64
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 145
    .end local v7           #tag:I
    :catch_0
    move-exception v1

    .line 146
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v10

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v10

    and-int/lit8 v11, v3, 0x10

    if-ne v11, v12, :cond_1

    .line 152
    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    .line 154
    :cond_1
    invoke-virtual {v8}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v11

    iput-object v11, p0, Lcom/google/googlex/glass/common/proto/Subscription;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 155
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->makeExtensionsImmutable()V

    throw v10

    .line 68
    .restart local v7       #tag:I
    :sswitch_2
    :try_start_2
    iget v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 69
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 147
    .end local v7           #tag:I
    :catch_1
    move-exception v1

    .line 148
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v10, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v10

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .end local v1           #e:Ljava/io/IOException;
    .restart local v7       #tag:I
    :sswitch_3
    :try_start_4
    iget v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 74
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    goto :goto_0

    .line 78
    :sswitch_4
    iget v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 79
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    goto :goto_0

    .line 83
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 84
    .local v5, rawValue:I
    invoke-static {v5}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->valueOf(I)Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    move-result-object v9

    .line 85
    .local v9, value:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    if-nez v9, :cond_2

    .line 86
    const/4 v10, 0x5

    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 88
    :cond_2
    and-int/lit8 v10, v3, 0x10

    if-eq v10, v12, :cond_3

    .line 89
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    .line 90
    or-int/lit8 v3, v3, 0x10

    .line 92
    :cond_3
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 97
    .end local v5           #rawValue:I
    .end local v9           #value:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 98
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 99
    .local v4, oldLimit:I
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_6

    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 101
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->valueOf(I)Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    move-result-object v9

    .line 102
    .restart local v9       #value:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    if-nez v9, :cond_4

    .line 103
    const/4 v10, 0x5

    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_1

    .line 105
    :cond_4
    and-int/lit8 v10, v3, 0x10

    if-eq v10, v12, :cond_5

    .line 106
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    .line 107
    or-int/lit8 v3, v3, 0x10

    .line 109
    :cond_5
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    .end local v5           #rawValue:I
    .end local v9           #value:Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    :cond_6
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 116
    .end local v2           #length:I
    .end local v4           #oldLimit:I
    :sswitch_7
    iget v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 117
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 121
    :sswitch_8
    iget v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v10, v10, 0x20

    iput v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 122
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 126
    :sswitch_9
    iget v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit8 v10, v10, 0x40

    iput v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    .line 127
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 131
    :sswitch_a
    const/4 v6, 0x0

    .line 132
    .local v6, subBuilder:Lcom/google/googlex/glass/common/proto/Notification$Builder;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit16 v10, v10, 0x80

    const/16 v11, 0x80

    if-ne v10, v11, :cond_7

    .line 133
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/Notification;->toBuilder()Lcom/google/googlex/glass/common/proto/Notification$Builder;

    move-result-object v6

    .line 135
    :cond_7
    sget-object v10, Lcom/google/googlex/glass/common/proto/Notification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/google/googlex/glass/common/proto/Notification;

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 136
    if-eqz v6, :cond_8

    .line 137
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-virtual {v6, v10}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Notification;)Lcom/google/googlex/glass/common/proto/Notification$Builder;

    .line 138
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Notification$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 140
    :cond_8
    iget v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    or-int/lit16 v10, v10, 0x80

    iput v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 151
    .end local v6           #subBuilder:Lcom/google/googlex/glass/common/proto/Notification$Builder;
    .end local v7           #tag:I
    :cond_9
    and-int/lit8 v10, v3, 0x10

    if-ne v10, v12, :cond_a

    .line 152
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    .line 154
    :cond_a
    invoke-virtual {v8}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/Subscription;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 155
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->makeExtensionsImmutable()V

    .line 157
    return-void

    .line 51
    nop

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

    .line 717
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedIsInitialized:B

    .line 759
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

    .line 717
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedIsInitialized:B

    .line 759
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
    .line 160
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 707
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;

    .line 708
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J

    .line 709
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    .line 710
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    .line 711
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    .line 712
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    .line 713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    .line 714
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    .line 715
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Notification;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    .line 716
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 881
    #calls: Lcom/google/googlex/glass/common/proto/Subscription$Builder;->create()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;->access$100()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/Subscription;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 884
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
    .line 861
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
    .line 867
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
    .line 831
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
    .line 837
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
    .line 872
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
    .line 878
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
    .line 851
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
    .line 857
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
    .line 841
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
    .line 847
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
    .line 519
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    .line 520
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 521
    check-cast v1, Ljava/lang/String;

    .line 529
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 523
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 525
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 529
    goto :goto_0
.end method

.method public getCallbackUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 541
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    .line 542
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 543
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 546
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->callbackUrl_:Ljava/lang/Object;

    .line 549
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
    .line 444
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    .line 445
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 446
    check-cast v1, Ljava/lang/String;

    .line 454
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 448
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 450
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 454
    goto :goto_0
.end method

.method public getCollectionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 466
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    .line 467
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 468
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 471
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->collection_:Ljava/lang/Object;

    .line 474
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
    .line 311
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;

    .line 312
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 313
    check-cast v1, Ljava/lang/String;

    .line 321
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 315
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 317
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 321
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;

    .line 334
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 335
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 338
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->id_:Ljava/lang/Object;

    .line 341
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
    .line 367
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J

    return-wide v0
.end method

.method public getNotification()Lcom/google/googlex/glass/common/proto/Notification;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public getNotificationOrBuilder()Lcom/google/googlex/glass/common/proto/NotificationOrBuilder;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    return-object v0
.end method

.method public getOperation(I)Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    .locals 1
    .parameter "index"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    return-object v0
.end method

.method public getOperationCount()I
    .locals 1

    .prologue
    .line 490
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
    .line 484
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
    .line 182
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

    .line 761
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedSerializedSize:I

    .line 762
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 808
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 764
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 765
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 769
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2

    .line 770
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 773
    :cond_2
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3

    .line 774
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getSubscriberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 777
    :cond_3
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v8, :cond_4

    .line 778
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getCollectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 782
    :cond_4
    const/4 v0, 0x0

    .line 783
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 784
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 783
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 787
    :cond_5
    add-int/2addr v2, v0

    .line 788
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 790
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6

    .line 791
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getCallbackUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 794
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7

    .line 795
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getVerifyTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 798
    :cond_7
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_8

    .line 799
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 802
    :cond_8
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_9

    .line 803
    const/16 v4, 0x3e7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 806
    :cond_9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 807
    iput v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedSerializedSize:I

    move v3, v2

    .line 808
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getSubscriber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 390
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    .line 391
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 392
    check-cast v1, Ljava/lang/String;

    .line 400
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 394
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 396
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 400
    goto :goto_0
.end method

.method public getSubscriberBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 412
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    .line 413
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 414
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 417
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->subscriber_:Ljava/lang/Object;

    .line 420
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
    .line 632
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    .line 633
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 634
    check-cast v1, Ljava/lang/String;

    .line 642
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 636
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 638
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 640
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 642
    goto :goto_0
.end method

.method public getUserTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 655
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    .line 656
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 657
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 660
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->userToken_:Ljava/lang/Object;

    .line 663
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
    .line 575
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    .line 576
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 577
    check-cast v1, Ljava/lang/String;

    .line 585
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 579
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 581
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 585
    goto :goto_0
.end method

.method public getVerifyTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 598
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    .line 599
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 600
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 603
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->verifyToken_:Ljava/lang/Object;

    .line 606
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
    .line 509
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
    .line 434
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

    .line 301
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
    .line 356
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
    .line 679
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
    .line 380
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
    .line 621
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
    .line 564
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
    .line 165
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
    .line 822
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 823
    const-string v0, "com.google.googlex.glass.common.proto.MutableSubscriptions$Subscription"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Subscription;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 825
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 719
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedIsInitialized:B

    .line 720
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 723
    :goto_0
    return v1

    .line 720
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 722
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 1

    .prologue
    .line 882
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->newBuilder()Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Subscription$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 891
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/Subscription$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Subscription$1;)V

    .line 892
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
    .line 886
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
    .line 815
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

    .line 728
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getSerializedSize()I

    .line 729
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 732
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 733
    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->modifiedTime_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 735
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 736
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getSubscriberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 738
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 739
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getCollectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 741
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 742
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->operation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 744
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 745
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getCallbackUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 747
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 748
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getVerifyTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 750
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 751
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getUserTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 753
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 754
    const/16 v1, 0x3e7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Subscription;->notification_:Lcom/google/googlex/glass/common/proto/Notification;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 756
    :cond_8
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Subscription;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 757
    return-void
.end method
