.class public final Lcom/google/googlex/glass/common/proto/SyncResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/SyncResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;,
        Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final DELETE_FAILED_ITEM_IDS_FIELD_NUMBER:I = 0x5

.field public static final INSERT_FAILED_ITEM_IDS_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/SyncResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_CODE_FIELD_NUMBER:I = 0x1

.field public static final SELECTED_ITEMS_FIELD_NUMBER:I = 0x2

.field public static final SELECT_CONTINUATION_TOKEN_FIELD_NUMBER:I = 0xa

.field public static final SELECT_MAX_WRITE_TIMESTAMP_FIELD_NUMBER:I = 0xb

.field public static final SELECT_START_TIME_FIELD_NUMBER:I = 0x9

.field public static final SYNC_CONTINUATION_TOKEN_FIELD_NUMBER:I = 0x8

.field public static final SYNC_END_TIME_FIELD_NUMBER:I = 0x7

.field public static final SYNC_START_TIME_FIELD_NUMBER:I = 0x6

.field public static final UPDATE_FAILED_ITEM_IDS_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/SyncResponse;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

.field private insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

.field private selectContinuationToken_:Lcom/google/protobuf/ByteString;

.field private selectMaxWriteTimestamp_:J

.field private selectStartTime_:J

.field private selectedItems_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private syncContinuationToken_:Lcom/google/protobuf/ByteString;

.field private syncEndTime_:J

.field private syncStartTime_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncResponse$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 790
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2268
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/SyncResponse;

    .line 2269
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/SyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->initFields()V

    .line 2270
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
    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 660
    const/4 v8, -0x1

    iput-byte v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedIsInitialized:B

    .line 712
    const/4 v8, -0x1

    iput v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedSerializedSize:I

    .line 39
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->initFields()V

    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 44
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 45
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 47
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 52
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/googlex/glass/common/proto/SyncResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 54
    const/4 v1, 0x1

    goto :goto_0

    .line 49
    :sswitch_0
    const/4 v1, 0x1

    .line 50
    goto :goto_0

    .line 59
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 60
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->valueOf(I)Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    move-result-object v7

    .line 61
    .local v7, value:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    if-nez v7, :cond_5

    .line 62
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 136
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    :catch_0
    move-exception v2

    .line 137
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit8 v9, v3, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 143
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    .line 145
    :cond_1
    and-int/lit8 v9, v3, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 146
    new-instance v9, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v9, v10}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 148
    :cond_2
    and-int/lit8 v9, v3, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_3

    .line 149
    new-instance v9, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v9, v10}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 151
    :cond_3
    and-int/lit8 v9, v3, 0x10

    const/16 v10, 0x10

    if-ne v9, v10, :cond_4

    .line 152
    new-instance v9, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v9, v10}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 154
    :cond_4
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 155
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->makeExtensionsImmutable()V

    throw v8

    .line 64
    .restart local v4       #rawValue:I
    .restart local v5       #tag:I
    .restart local v7       #value:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    :cond_5
    :try_start_2
    iget v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 65
    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 138
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    :catch_1
    move-exception v2

    .line 139
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

    .line 70
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_2
    and-int/lit8 v8, v3, 0x2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_6

    .line 71
    :try_start_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    .line 72
    or-int/lit8 v3, v3, 0x2

    .line 74
    :cond_6
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    sget-object v9, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 78
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 79
    .local v0, bs:Lcom/google/protobuf/ByteString;
    and-int/lit8 v8, v3, 0x4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_7

    .line 80
    new-instance v8, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v8}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 81
    or-int/lit8 v3, v3, 0x4

    .line 83
    :cond_7
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v8, v0}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 87
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 88
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    and-int/lit8 v8, v3, 0x8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_8

    .line 89
    new-instance v8, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v8}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 90
    or-int/lit8 v3, v3, 0x8

    .line 92
    :cond_8
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v8, v0}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 96
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 97
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    and-int/lit8 v8, v3, 0x10

    const/16 v9, 0x10

    if-eq v8, v9, :cond_9

    .line 98
    new-instance v8, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v8}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 99
    or-int/lit8 v3, v3, 0x10

    .line 101
    :cond_9
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v8, v0}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 105
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_6
    iget v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 106
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncStartTime_:J

    goto/16 :goto_0

    .line 110
    :sswitch_7
    iget v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 111
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J

    goto/16 :goto_0

    .line 115
    :sswitch_8
    iget v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 116
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 120
    :sswitch_9
    iget v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 121
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J

    goto/16 :goto_0

    .line 125
    :sswitch_a
    iget v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 126
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 130
    :sswitch_b
    iget v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 131
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 142
    .end local v5           #tag:I
    :cond_a
    and-int/lit8 v8, v3, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 143
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    .line 145
    :cond_b
    and-int/lit8 v8, v3, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_c

    .line 146
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 148
    :cond_c
    and-int/lit8 v8, v3, 0x8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_d

    .line 149
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 151
    :cond_d
    and-int/lit8 v8, v3, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_e

    .line 152
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 154
    :cond_e
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 155
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->makeExtensionsImmutable()V

    .line 157
    return-void

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/SyncResponse$1;)V
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
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 15
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 660
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedIsInitialized:B

    .line 712
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedSerializedSize:I

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/SyncResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 660
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedIsInitialized:B

    .line 712
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedSerializedSize:I

    .line 18
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/SyncResponse;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncStartTime_:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/SyncResponse;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/SyncResponse;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/SyncResponse;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/google/googlex/glass/common/proto/SyncResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;)Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/SyncResponse;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/SyncResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/SyncResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/SyncResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 648
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 649
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    .line 650
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 651
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 652
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 653
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncStartTime_:J

    .line 654
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J

    .line 655
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 656
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J

    .line 657
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 658
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J

    .line 659
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 852
    #calls: Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->access$100()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 855
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 802
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 808
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 822
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 812
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 818
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncResponse;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/SyncResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteFailedItemIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteFailedItemIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteFailedItemIdsCount()I
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDeleteFailedItemIdsList()Ljava/util/List;
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
    .line 443
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getInsertFailedItemIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInsertFailedItemIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInsertFailedItemIdsCount()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getInsertFailedItemIdsList()Ljava/util/List;
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
    .line 353
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/SyncResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    return-object v0
.end method

.method public getSelectContinuationToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSelectMaxWriteTimestamp()J
    .locals 2

    .prologue
    .line 644
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J

    return-wide v0
.end method

.method public getSelectStartTime()J
    .locals 2

    .prologue
    .line 592
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J

    return-wide v0
.end method

.method public getSelectedItems(I)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getSelectedItemsCount()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedItemsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItemsOrBuilder(I)Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;

    return-object v0
.end method

.method public getSelectedItemsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 714
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedSerializedSize:I

    .line 715
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 779
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 717
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 718
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 719
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 722
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 723
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 722
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 727
    :cond_2
    const/4 v0, 0x0

    .line 728
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 729
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 728
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 732
    :cond_3
    add-int/2addr v2, v0

    .line 733
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getInsertFailedItemIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 736
    const/4 v0, 0x0

    .line 737
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 738
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 741
    :cond_4
    add-int/2addr v2, v0

    .line 742
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getUpdateFailedItemIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 745
    const/4 v0, 0x0

    .line 746
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 747
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 746
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 750
    :cond_5
    add-int/2addr v2, v0

    .line 751
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDeleteFailedItemIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 753
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_6

    .line 754
    const/4 v4, 0x6

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncStartTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 757
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 758
    const/4 v4, 0x7

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 761
    :cond_7
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v7, :cond_8

    .line 762
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 765
    :cond_8
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_9

    .line 766
    const/16 v4, 0x9

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 769
    :cond_9
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_a

    .line 770
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 773
    :cond_a
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_b

    .line 774
    const/16 v4, 0xb

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 777
    :cond_b
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 778
    iput v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedSerializedSize:I

    move v3, v2

    .line 779
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getSyncContinuationToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSyncEndTime()J
    .locals 2

    .prologue
    .line 536
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J

    return-wide v0
.end method

.method public getSyncStartTime()J
    .locals 2

    .prologue
    .line 505
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncStartTime_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUpdateFailedItemIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFailedItemIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateFailedItemIdsCount()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getUpdateFailedItemIdsList()Ljava/util/List;
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
    .line 398
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 269
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelectContinuationToken()Z
    .locals 2

    .prologue
    .line 606
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

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

.method public hasSelectMaxWriteTimestamp()Z
    .locals 2

    .prologue
    .line 632
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

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

.method public hasSelectStartTime()Z
    .locals 2

    .prologue
    .line 580
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

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

.method public hasSyncContinuationToken()Z
    .locals 2

    .prologue
    .line 552
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

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

.method public hasSyncEndTime()Z
    .locals 2

    .prologue
    .line 522
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

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

.method public hasSyncStartTime()Z
    .locals 2

    .prologue
    .line 491
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 165
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/SyncResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 793
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 794
    const-string v0, "com.google.googlex.glass.common.proto.MutableSync$SyncResponse"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 796
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 662
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedIsInitialized:B

    .line 663
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 670
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 663
    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasResponseCode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 666
    iput-byte v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 667
    goto :goto_0

    .line 669
    :cond_2
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 853
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 862
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/SyncResponse$1;)V

    .line 863
    .local v0, builder:Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->newBuilderForType()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 857
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->newBuilder(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->toBuilder()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

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
    .line 786
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

    .line 675
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSerializedSize()I

    .line 676
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 677
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 679
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 680
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 682
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 683
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 685
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 686
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 688
    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 689
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 691
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_5

    .line 692
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncStartTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 694
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_6

    .line 695
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 697
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_7

    .line 698
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 700
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_8

    .line 701
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 703
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    .line 704
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 706
    :cond_9
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_a

    .line 707
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 709
    :cond_a
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 710
    return-void
.end method
