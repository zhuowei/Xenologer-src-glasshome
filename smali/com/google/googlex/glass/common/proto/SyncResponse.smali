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
    .line 167
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncResponse$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 787
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2265
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/SyncResponse;

    .line 2266
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->defaultInstance:Lcom/google/googlex/glass/common/proto/SyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->initFields()V

    .line 2267
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
    const/4 v7, -0x1

    const/16 v12, 0x10

    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 657
    iput-byte v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedIsInitialized:B

    .line 709
    iput v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedSerializedSize:I

    .line 39
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->initFields()V

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 44
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 45
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_a

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 47
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 52
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/SyncResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :sswitch_0
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 59
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 60
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->valueOf(I)Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    move-result-object v6

    .line 61
    .local v6, value:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    if-nez v6, :cond_5

    .line 62
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 133
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    and-int/lit8 v8, v2, 0x2

    if-ne v8, v9, :cond_1

    .line 140
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    .line 142
    :cond_1
    and-int/lit8 v8, v2, 0x4

    if-ne v8, v10, :cond_2

    .line 143
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 145
    :cond_2
    and-int/lit8 v8, v2, 0x8

    if-ne v8, v11, :cond_3

    .line 146
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 148
    :cond_3
    and-int/lit8 v8, v2, 0x10

    if-ne v8, v12, :cond_4

    .line 149
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 151
    :cond_4
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 152
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->makeExtensionsImmutable()V

    throw v7

    .line 64
    .restart local v3       #rawValue:I
    .restart local v4       #tag:I
    .restart local v6       #value:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    :cond_5
    :try_start_2
    iget v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 65
    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 135
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v6           #value:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    :catch_1
    move-exception v1

    .line 136
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

    .line 70
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_2
    and-int/lit8 v7, v2, 0x2

    if-eq v7, v9, :cond_6

    .line 71
    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    .line 72
    or-int/lit8 v2, v2, 0x2

    .line 74
    :cond_6
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    sget-object v8, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 78
    :sswitch_3
    and-int/lit8 v7, v2, 0x4

    if-eq v7, v10, :cond_7

    .line 79
    new-instance v7, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v7}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 80
    or-int/lit8 v2, v2, 0x4

    .line 82
    :cond_7
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 86
    :sswitch_4
    and-int/lit8 v7, v2, 0x8

    if-eq v7, v11, :cond_8

    .line 87
    new-instance v7, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v7}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 88
    or-int/lit8 v2, v2, 0x8

    .line 90
    :cond_8
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 94
    :sswitch_5
    and-int/lit8 v7, v2, 0x10

    if-eq v7, v12, :cond_9

    .line 95
    new-instance v7, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v7}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 96
    or-int/lit8 v2, v2, 0x10

    .line 98
    :cond_9
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 102
    :sswitch_6
    iget v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 103
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncStartTime_:J

    goto/16 :goto_0

    .line 107
    :sswitch_7
    iget v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 108
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J

    goto/16 :goto_0

    .line 112
    :sswitch_8
    iget v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 113
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 117
    :sswitch_9
    iget v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 118
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J

    goto/16 :goto_0

    .line 122
    :sswitch_a
    iget v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 123
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 127
    :sswitch_b
    iget v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    .line 128
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 139
    .end local v4           #tag:I
    :cond_a
    and-int/lit8 v7, v2, 0x2

    if-ne v7, v9, :cond_b

    .line 140
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    .line 142
    :cond_b
    and-int/lit8 v7, v2, 0x4

    if-ne v7, v10, :cond_c

    .line 143
    new-instance v7, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v7, v8}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 145
    :cond_c
    and-int/lit8 v7, v2, 0x8

    if-ne v7, v11, :cond_d

    .line 146
    new-instance v7, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v7, v8}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 148
    :cond_d
    and-int/lit8 v7, v2, 0x10

    if-ne v7, v12, :cond_e

    .line 149
    new-instance v7, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v7, v8}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 151
    :cond_e
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 152
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->makeExtensionsImmutable()V

    .line 154
    return-void

    .line 47
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

    .line 657
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedIsInitialized:B

    .line 709
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

    .line 657
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedIsInitialized:B

    .line 709
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
    .line 157
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 645
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 646
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    .line 647
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 648
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 649
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    .line 650
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncStartTime_:J

    .line 651
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J

    .line 652
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 653
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J

    .line 654
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    .line 655
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J

    .line 656
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 849
    #calls: Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;->access$100()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/SyncResponse;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 852
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
    .line 829
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
    .line 835
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
    .line 799
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
    .line 805
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
    .line 840
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
    .line 846
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
    .line 819
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
    .line 825
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
    .line 809
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
    .line 815
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
    .line 460
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
    .line 471
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteFailedItemIdsCount()I
    .locals 1

    .prologue
    .line 450
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
    .line 440
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getInsertFailedItemIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 370
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
    .line 381
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInsertFailedItemIdsCount()I
    .locals 1

    .prologue
    .line 360
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
    .line 350
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
    .line 179
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    return-object v0
.end method

.method public getSelectContinuationToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSelectMaxWriteTimestamp()J
    .locals 2

    .prologue
    .line 641
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J

    return-wide v0
.end method

.method public getSelectStartTime()J
    .locals 2

    .prologue
    .line 589
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J

    return-wide v0
.end method

.method public getSelectedItems(I)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getSelectedItemsCount()I
    .locals 1

    .prologue
    .line 313
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
    .line 290
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItemsOrBuilder(I)Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 336
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
    .line 302
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 711
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedSerializedSize:I

    .line 712
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 776
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 714
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 715
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 716
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 719
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 720
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 724
    :cond_2
    const/4 v0, 0x0

    .line 725
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 726
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 729
    :cond_3
    add-int/2addr v2, v0

    .line 730
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getInsertFailedItemIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 733
    const/4 v0, 0x0

    .line 734
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 735
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 738
    :cond_4
    add-int/2addr v2, v0

    .line 739
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getUpdateFailedItemIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 742
    const/4 v0, 0x0

    .line 743
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 744
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 743
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 747
    :cond_5
    add-int/2addr v2, v0

    .line 748
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDeleteFailedItemIdsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 750
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_6

    .line 751
    const/4 v4, 0x6

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncStartTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 754
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 755
    const/4 v4, 0x7

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 758
    :cond_7
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v7, :cond_8

    .line 759
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 762
    :cond_8
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_9

    .line 763
    const/16 v4, 0x9

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 766
    :cond_9
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_a

    .line 767
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 770
    :cond_a
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_b

    .line 771
    const/16 v4, 0xb

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 774
    :cond_b
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 775
    iput v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedSerializedSize:I

    move v3, v2

    .line 776
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getSyncContinuationToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSyncEndTime()J
    .locals 2

    .prologue
    .line 533
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J

    return-wide v0
.end method

.method public getSyncStartTime()J
    .locals 2

    .prologue
    .line 502
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
    .line 415
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
    .line 426
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateFailedItemIdsCount()I
    .locals 1

    .prologue
    .line 405
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
    .line 395
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public hasResponseCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 266
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
    .line 603
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
    .line 629
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
    .line 577
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
    .line 549
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
    .line 519
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
    .line 488
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
    .line 162
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
    .line 790
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 791
    const-string v0, "com.google.googlex.glass.common.proto.MutableSync$SyncResponse"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 793
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 659
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedIsInitialized:B

    .line 660
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 667
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 660
    goto :goto_0

    .line 662
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->hasResponseCode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 663
    iput-byte v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 664
    goto :goto_0

    .line 666
    :cond_2
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 1

    .prologue
    .line 850
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->newBuilder()Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 859
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/SyncResponse$1;)V

    .line 860
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
    .line 854
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
    .line 783
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

    .line 672
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getSerializedSize()I

    .line 673
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 674
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->responseCode_:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 676
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 677
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectedItems_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 680
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->insertFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 683
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->updateFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 685
    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 686
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->deleteFailedItemIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 688
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_5

    .line 689
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncStartTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 691
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_6

    .line 692
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncEndTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 694
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_7

    .line 695
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->syncContinuationToken_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 697
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_8

    .line 698
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectStartTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 700
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    .line 701
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectContinuationToken_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 703
    :cond_9
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_a

    .line 704
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncResponse;->selectMaxWriteTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 706
    :cond_a
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 707
    return-void
.end method
