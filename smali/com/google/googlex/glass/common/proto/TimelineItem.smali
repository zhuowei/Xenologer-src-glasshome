.class public final Lcom/google/googlex/glass/common/proto/TimelineItem;
.super Lcom/google/protobuf/GeneratedMessage;
.source "TimelineItem.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;,
        Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;,
        Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;,
        Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;,
        Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;
    }
.end annotation


# static fields
.field public static final ATTACHMENT_FIELD_NUMBER:I = 0x9

.field public static final BUNDLE_ID_FIELD_NUMBER:I = 0x19

.field public static final CANONICAL_URL_FIELD_NUMBER:I = 0x1f

.field public static final CLOUD_SYNC_PROTOCOL_FIELD_NUMBER:I = 0xd

.field public static final CLOUD_SYNC_STATUS_FIELD_NUMBER:I = 0xc

.field public static final COMPANION_SYNC_PROTOCOL_FIELD_NUMBER:I = 0x22

.field public static final COMPANION_SYNC_STATUS_FIELD_NUMBER:I = 0x21

.field public static final CREATION_TIME_FIELD_NUMBER:I = 0x2

.field public static final CREATOR_FIELD_NUMBER:I = 0x5

.field public static final DISPLAY_TIME_FIELD_NUMBER:I = 0x11

.field public static final HTML_FIELD_NUMBER:I = 0x18

.field public static final HTML_PAGE_FIELD_NUMBER:I = 0x1a

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final IN_REPLY_TO_FIELD_NUMBER:I = 0x7

.field public static final IS_BUNDLE_COVER_FIELD_NUMBER:I = 0x1d

.field public static final IS_DELETED_FIELD_NUMBER:I = 0xf

.field public static final IS_PINNED_FIELD_NUMBER:I = 0x15

.field public static final LOCATION_FIELD_NUMBER:I = 0xa

.field public static final MENU_ITEM_FIELD_NUMBER:I = 0xb

.field public static final MODIFIED_TIME_FIELD_NUMBER:I = 0x3

.field public static final NOTIFICATION_FIELD_NUMBER:I = 0x10

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final PENDING_ACTION_FIELD_NUMBER:I = 0x12

.field public static final PIN_SCORE_FIELD_NUMBER:I = 0x24

.field public static final PIN_TIME_FIELD_NUMBER:I = 0x23

.field public static final SEND_TO_PHONE_URL_FIELD_NUMBER:I = 0x1c

.field public static final SHARE_TARGET_FIELD_NUMBER:I = 0x6

.field public static final SMS_TYPE_FIELD_NUMBER:I = 0x14

.field public static final SOURCE_ACCOUNT_ID_FIELD_NUMBER:I = 0x25

.field public static final SOURCE_FIELD_NUMBER:I = 0x4

.field public static final SOURCE_ITEM_ID_FIELD_NUMBER:I = 0x1e

.field public static final SOURCE_TYPE_FIELD_NUMBER:I = 0xe

.field public static final SPEAKABLE_TEXT_FIELD_NUMBER:I = 0x13

.field public static final SPEAKABLE_TYPE_FIELD_NUMBER:I = 0x26

.field public static final TEXT_FIELD_NUMBER:I = 0x8

.field public static final TITLE_FIELD_NUMBER:I = 0x17

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private attachment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private bundleId_:Ljava/lang/Object;

.field private canonicalUrl_:Ljava/lang/Object;

.field private cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

.field private cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

.field private companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

.field private companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

.field private creationTime_:J

.field private creator_:Lcom/google/googlex/glass/common/proto/Entity;

.field private displayTime_:J

.field private htmlPage_:Lcom/google/protobuf/LazyStringList;

.field private html_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private inReplyTo_:Ljava/lang/Object;

.field private isBundleCover_:Z

.field private isDeleted_:Z

.field private isPinned_:Z

.field private location_:Lcom/google/googlex/glass/common/proto/Location;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private menuItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private modifiedTime_:J

.field private notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

.field private pendingAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private pinScore_:I

.field private pinTime_:J

.field private sendToPhoneUrl_:Ljava/lang/Object;

.field private shareTarget_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

.field private sourceAccountId_:Ljava/lang/Object;

.field private sourceItemId_:Ljava/lang/Object;

.field private sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

.field private source_:Ljava/lang/Object;

.field private speakableText_:Ljava/lang/Object;

.field private speakableType_:Ljava/lang/Object;

.field private text_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 370
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineItem$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 2852
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 7974
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->defaultInstance:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 7975
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->defaultInstance:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->initFields()V

    .line 7976
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
    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2568
    const/4 v10, -0x1

    iput-byte v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedIsInitialized:B

    .line 2688
    const/4 v10, -0x1

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedSerializedSize:I

    .line 47
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->initFields()V

    .line 48
    const/4 v3, 0x0

    .line 49
    .local v3, mutable_bitField0_:I
    const/4 v4, 0x0

    .line 50
    .local v4, mutable_bitField1_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v8

    .line 53
    .local v8, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 54
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_17

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v7

    .line 56
    .local v7, tag:I
    sparse-switch v7, :sswitch_data_0

    .line 61
    invoke-virtual {p0, p1, v8, p2, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 58
    :sswitch_0
    const/4 v1, 0x1

    .line 59
    goto :goto_0

    .line 68
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 69
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 70
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 333
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v7           #tag:I
    :catch_0
    move-exception v2

    .line 334
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v10

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v10

    const/high16 v11, 0x1

    and-int/2addr v11, v3

    const/high16 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 340
    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    .line 342
    :cond_1
    const/high16 v11, 0x100

    and-int/2addr v11, v3

    const/high16 v12, 0x100

    if-ne v11, v12, :cond_2

    .line 343
    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    .line 345
    :cond_2
    const/high16 v11, 0x400

    and-int/2addr v11, v3

    const/high16 v12, 0x400

    if-ne v11, v12, :cond_3

    .line 346
    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    .line 348
    :cond_3
    const/high16 v11, 0x800

    and-int/2addr v11, v3

    const/high16 v12, 0x800

    if-ne v11, v12, :cond_4

    .line 349
    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    .line 351
    :cond_4
    const/high16 v11, 0x20

    and-int/2addr v11, v3

    const/high16 v12, 0x20

    if-ne v11, v12, :cond_5

    .line 352
    new-instance v11, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v12, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v11, v12}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 354
    :cond_5
    invoke-virtual {v8}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v11

    iput-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 355
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->makeExtensionsImmutable()V

    throw v10

    .line 74
    .restart local v7       #tag:I
    :sswitch_2
    :try_start_2
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 75
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 335
    .end local v7           #tag:I
    :catch_1
    move-exception v2

    .line 336
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v10, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v10

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    .end local v2           #e:Ljava/io/IOException;
    .restart local v7       #tag:I
    :sswitch_3
    :try_start_4
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 80
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J

    goto/16 :goto_0

    .line 84
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 85
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v10, v10, 0x400

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 86
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 90
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_5
    const/4 v6, 0x0

    .line 91
    .local v6, subBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const v11, 0x8000

    and-int/2addr v10, v11

    const v11, 0x8000

    if-ne v10, v11, :cond_6

    .line 92
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/Entity;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    .line 94
    :cond_6
    sget-object v10, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/google/googlex/glass/common/proto/Entity;

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 95
    if-eqz v6, :cond_7

    .line 96
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v6, v10}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 97
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 99
    :cond_7
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const v11, 0x8000

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 103
    .end local v6           #subBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :sswitch_6
    const/high16 v10, 0x1

    and-int/2addr v10, v3

    const/high16 v11, 0x1

    if-eq v10, v11, :cond_8

    .line 104
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    .line 105
    const/high16 v10, 0x1

    or-int/2addr v3, v10

    .line 107
    :cond_8
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    sget-object v11, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 111
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 112
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x1

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 113
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 117
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 118
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x4

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 119
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 123
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_9
    const/high16 v10, 0x100

    and-int/2addr v10, v3

    const/high16 v11, 0x100

    if-eq v10, v11, :cond_9

    .line 124
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    .line 125
    const/high16 v10, 0x100

    or-int/2addr v3, v10

    .line 127
    :cond_9
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    sget-object v11, Lcom/google/googlex/glass/common/proto/Attachment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 131
    :sswitch_a
    const/4 v6, 0x0

    .line 132
    .local v6, subBuilder:Lcom/google/googlex/glass/common/proto/Location$Builder;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x40

    and-int/2addr v10, v11

    const/high16 v11, 0x40

    if-ne v10, v11, :cond_a

    .line 133
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/Location;->toBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v6

    .line 135
    :cond_a
    sget-object v10, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/google/googlex/glass/common/proto/Location;

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 136
    if-eqz v6, :cond_b

    .line 137
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-virtual {v6, v10}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 138
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 140
    :cond_b
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x40

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 144
    .end local v6           #subBuilder:Lcom/google/googlex/glass/common/proto/Location$Builder;
    :sswitch_b
    const/high16 v10, 0x400

    and-int/2addr v10, v3

    const/high16 v11, 0x400

    if-eq v10, v11, :cond_c

    .line 145
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    .line 146
    const/high16 v10, 0x400

    or-int/2addr v3, v10

    .line 148
    :cond_c
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    sget-object v11, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 152
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 153
    .local v5, rawValue:I
    invoke-static {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v9

    .line 154
    .local v9, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    if-nez v9, :cond_d

    .line 155
    const/16 v10, 0xc

    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 157
    :cond_d
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x100

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 158
    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    goto/16 :goto_0

    .line 163
    .end local v5           #rawValue:I
    .end local v9           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 164
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v9

    .line 165
    .local v9, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    if-nez v9, :cond_e

    .line 166
    const/16 v10, 0xd

    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 168
    :cond_e
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x400

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 169
    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    goto/16 :goto_0

    .line 174
    .end local v5           #rawValue:I
    .end local v9           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 175
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    move-result-object v9

    .line 176
    .local v9, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;
    if-nez v9, :cond_f

    .line 177
    const/16 v10, 0xe

    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 179
    :cond_f
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v10, v10, 0x800

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 180
    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    goto/16 :goto_0

    .line 185
    .end local v5           #rawValue:I
    .end local v9           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;
    :sswitch_f
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v10, v10, 0x200

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 186
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v10

    iput-boolean v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z

    goto/16 :goto_0

    .line 190
    :sswitch_10
    const/4 v6, 0x0

    .line 191
    .local v6, subBuilder:Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x80

    and-int/2addr v10, v11

    const/high16 v11, 0x80

    if-ne v10, v11, :cond_10

    .line 192
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->toBuilder()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v6

    .line 194
    :cond_10
    sget-object v10, Lcom/google/googlex/glass/common/proto/NotificationConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/google/googlex/glass/common/proto/NotificationConfig;

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 195
    if-eqz v6, :cond_11

    .line 196
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-virtual {v6, v10}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    .line 197
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 199
    :cond_11
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x80

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 203
    .end local v6           #subBuilder:Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    :sswitch_11
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v10, v10, 0x20

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 204
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J

    goto/16 :goto_0

    .line 208
    :sswitch_12
    const/high16 v10, 0x800

    and-int/2addr v10, v3

    const/high16 v11, 0x800

    if-eq v10, v11, :cond_12

    .line 209
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    .line 210
    const/high16 v10, 0x800

    or-int/2addr v3, v10

    .line 212
    :cond_12
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    sget-object v11, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 216
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 217
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x20

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 218
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 222
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 223
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    move-result-object v9

    .line 224
    .local v9, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;
    if-nez v9, :cond_13

    .line 225
    const/16 v10, 0x14

    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 227
    :cond_13
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x1000

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 228
    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    goto/16 :goto_0

    .line 233
    .end local v5           #rawValue:I
    .end local v9           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;
    :sswitch_15
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v10, v10, 0x100

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 234
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v10

    iput-boolean v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z

    goto/16 :goto_0

    .line 238
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 239
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x2

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 240
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 244
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 245
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x8

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 246
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 250
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 251
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 252
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 256
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 257
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    const/high16 v10, 0x20

    and-int/2addr v10, v3

    const/high16 v11, 0x20

    if-eq v10, v11, :cond_14

    .line 258
    new-instance v10, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v10}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 259
    const/high16 v10, 0x20

    or-int/2addr v3, v10

    .line 261
    :cond_14
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v10, v0}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 265
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 266
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x2000

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 267
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 271
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_1b
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 272
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v10

    iput-boolean v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z

    goto/16 :goto_0

    .line 276
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 277
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v10, v10, 0x1000

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 278
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 282
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 283
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v10, v10, 0x4000

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 284
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 288
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 289
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v9

    .line 290
    .local v9, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    if-nez v9, :cond_15

    .line 291
    const/16 v10, 0x21

    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 293
    :cond_15
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x200

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 294
    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    goto/16 :goto_0

    .line 299
    .end local v5           #rawValue:I
    .end local v9           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 300
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v9

    .line 301
    .local v9, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    if-nez v9, :cond_16

    .line 302
    const/16 v10, 0x22

    invoke-virtual {v8, v10, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 304
    :cond_16
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x800

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 305
    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    goto/16 :goto_0

    .line 310
    .end local v5           #rawValue:I
    .end local v9           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    :sswitch_20
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v10, v10, 0x40

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 311
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J

    goto/16 :goto_0

    .line 315
    :sswitch_21
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v10, v10, 0x80

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 316
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I

    goto/16 :goto_0

    .line 320
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 321
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v10, v10, 0x2000

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 322
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceAccountId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 326
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 327
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v11, 0x10

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 328
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableType_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 339
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v7           #tag:I
    :cond_17
    const/high16 v10, 0x1

    and-int/2addr v10, v3

    const/high16 v11, 0x1

    if-ne v10, v11, :cond_18

    .line 340
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    .line 342
    :cond_18
    const/high16 v10, 0x100

    and-int/2addr v10, v3

    const/high16 v11, 0x100

    if-ne v10, v11, :cond_19

    .line 343
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    .line 345
    :cond_19
    const/high16 v10, 0x400

    and-int/2addr v10, v3

    const/high16 v11, 0x400

    if-ne v10, v11, :cond_1a

    .line 346
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    .line 348
    :cond_1a
    const/high16 v10, 0x800

    and-int/2addr v10, v3

    const/high16 v11, 0x800

    if-ne v10, v11, :cond_1b

    .line 349
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    .line 351
    :cond_1b
    const/high16 v10, 0x20

    and-int/2addr v10, v3

    const/high16 v11, 0x20

    if-ne v10, v11, :cond_1c

    .line 352
    new-instance v10, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v10, v11}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 354
    :cond_1c
    invoke-virtual {v8}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 355
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->makeExtensionsImmutable()V

    .line 357
    return-void

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xba -> :sswitch_16
        0xc2 -> :sswitch_17
        0xca -> :sswitch_18
        0xd2 -> :sswitch_19
        0xe2 -> :sswitch_1a
        0xe8 -> :sswitch_1b
        0xf2 -> :sswitch_1c
        0xfa -> :sswitch_1d
        0x108 -> :sswitch_1e
        0x110 -> :sswitch_1f
        0x118 -> :sswitch_20
        0x120 -> :sswitch_21
        0x12a -> :sswitch_22
        0x132 -> :sswitch_23
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/TimelineItem$1;)V
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
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 23
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2568
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedIsInitialized:B

    .line 2688
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedSerializedSize:I

    .line 24
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/TimelineItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2568
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedIsInitialized:B

    .line 2688
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedSerializedSize:I

    .line 26
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/google/googlex/glass/common/proto/TimelineItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceAccountId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceAccountId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableType_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;)Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/google/googlex/glass/common/proto/TimelineItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    return p1
.end method

.method static synthetic access$4100()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4200()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4300()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4400()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->defaultInstance:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_TimelineItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;

    .line 2533
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    .line 2534
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z

    .line 2535
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J

    .line 2536
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J

    .line 2537
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J

    .line 2538
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J

    .line 2539
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I

    .line 2540
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z

    .line 2541
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z

    .line 2542
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    .line 2543
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->GLASSWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 2544
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    .line 2545
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceAccountId_:Ljava/lang/Object;

    .line 2546
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    .line 2547
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 2548
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    .line 2549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    .line 2550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    .line 2551
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    .line 2552
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    .line 2553
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 2554
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableType_:Ljava/lang/Object;

    .line 2555
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    .line 2556
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    .line 2557
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 2558
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    .line 2559
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    .line 2560
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 2561
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 2562
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 2563
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 2564
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 2565
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->NATIVE:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 2566
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2567
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 2914
    #calls: Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->create()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->access$100()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2917
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2894
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2900
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2864
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2870
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2905
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2911
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2884
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2890
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2874
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2880
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method


# virtual methods
.method public getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 1
    .parameter "index"

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    return-object v0
.end method

.method public getAttachmentCount()I
    .locals 1

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttachmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    return-object v0
.end method

.method public getAttachmentOrBuilder(I)Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;

    return-object v0
.end method

.method public getAttachmentOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    return-object v0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 966
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    .line 967
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 968
    check-cast v1, Ljava/lang/String;

    .line 976
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 970
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 972
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 974
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 976
    goto :goto_0
.end method

.method public getBundleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 996
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    .line 997
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 998
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1001
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    .line 1004
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

.method public getCanonicalUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1478
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    .line 1479
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1480
    check-cast v1, Ljava/lang/String;

    .line 1488
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1482
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1484
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1485
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1486
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1488
    goto :goto_0
.end method

.method public getCanonicalUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1501
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    .line 1502
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1503
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1506
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    .line 1509
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

.method public getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 1

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object v0
.end method

.method public getCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 1

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object v0
.end method

.method public getCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 1

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object v0
.end method

.method public getCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 1

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 1075
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J

    return-wide v0
.end method

.method public getCreator()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public getCreatorOrBuilder()Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->defaultInstance:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayTime()J
    .locals 2

    .prologue
    .line 1129
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J

    return-wide v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    .line 1792
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1793
    check-cast v1, Ljava/lang/String;

    .line 1801
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1795
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1797
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1798
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1799
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1801
    goto :goto_0
.end method

.method public getHtmlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1814
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    .line 1815
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1816
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1819
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    .line 1822
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

.method public getHtmlPage(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlPageBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlPageCount()I
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getHtmlPageList()Ljava/util/List;
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
    .line 1839
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 894
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;

    .line 895
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 896
    check-cast v1, Ljava/lang/String;

    .line 904
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 898
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 900
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 902
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 904
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 918
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;

    .line 919
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 920
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 923
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;

    .line 926
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

.method public getInReplyTo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1625
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    .line 1626
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1627
    check-cast v1, Ljava/lang/String;

    .line 1635
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1629
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1631
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1632
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1633
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1635
    goto :goto_0
.end method

.method public getInReplyToBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1649
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

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

.method public getIsBundleCover()Z
    .locals 1

    .prologue
    .line 1050
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z

    return v0
.end method

.method public getIsDeleted()Z
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .prologue
    .line 1214
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z

    return v0
.end method

.method public getLocation()Lcom/google/googlex/glass/common/proto/Location;
    .locals 1

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public getLocationOrBuilder()Lcom/google/googlex/glass/common/proto/LocationOrBuilder;
    .locals 1

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public getMenuItem(I)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public getMenuItemCount()I
    .locals 1

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMenuItemList()Ljava/util/List;
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

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    return-object v0
.end method

.method public getMenuItemOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;

    return-object v0
.end method

.method public getMenuItemOrBuilderList()Ljava/util/List;
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

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 1100
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J

    return-wide v0
.end method

.method public getNotification()Lcom/google/googlex/glass/common/proto/NotificationConfig;
    .locals 1

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    return-object v0
.end method

.method public getNotificationOrBuilder()Lcom/google/googlex/glass/common/proto/NotificationConfigOrBuilder;
    .locals 1

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPendingAction(I)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public getPendingActionCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPendingActionList()Ljava/util/List;
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
    .line 2292
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    return-object v0
.end method

.method public getPendingActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;

    return-object v0
.end method

.method public getPendingActionOrBuilderList()Ljava/util/List;
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
    .line 2305
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    return-object v0
.end method

.method public getPinScore()I
    .locals 1

    .prologue
    .line 1187
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I

    return v0
.end method

.method public getPinTime()J
    .locals 2

    .prologue
    .line 1158
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J

    return-wide v0
.end method

.method public getSendToPhoneUrl()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2496
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2497
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2498
    check-cast v1, Ljava/lang/String;

    .line 2506
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2500
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2502
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2503
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2504
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2506
    goto :goto_0
.end method

.method public getSendToPhoneUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2519
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2520
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2521
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2524
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2527
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

.method public getSerializedSize()I
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 2690
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedSerializedSize:I

    .line 2691
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 2841
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 2693
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 2694
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 2695
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2698
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v9, :cond_2

    .line 2699
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J

    invoke-static {v7, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2702
    :cond_2
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v10, :cond_3

    .line 2703
    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2706
    :cond_3
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_4

    .line 2707
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2710
    :cond_4
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const v5, 0x8000

    if-ne v4, v5, :cond_5

    .line 2711
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2714
    :cond_5
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 2715
    const/4 v5, 0x6

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2714
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2718
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    const/high16 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 2719
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getInReplyToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2722
    :cond_7
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    const/high16 v5, 0x4

    if-ne v4, v5, :cond_8

    .line 2723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2726
    :cond_8
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 2727
    const/16 v5, 0x9

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2726
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2730
    :cond_9
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    const/high16 v5, 0x40

    if-ne v4, v5, :cond_a

    .line 2731
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2734
    :cond_a
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 2735
    const/16 v5, 0xb

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2734
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2738
    :cond_b
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    const/high16 v5, 0x100

    if-ne v4, v5, :cond_c

    .line 2739
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2742
    :cond_c
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x400

    and-int/2addr v4, v5

    const/high16 v5, 0x400

    if-ne v4, v5, :cond_d

    .line 2743
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2746
    :cond_d
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_e

    .line 2747
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2750
    :cond_e
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_f

    .line 2751
    const/16 v4, 0xf

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2754
    :cond_f
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x80

    and-int/2addr v4, v5

    const/high16 v5, 0x80

    if-ne v4, v5, :cond_10

    .line 2755
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-static {v10, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2758
    :cond_10
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_11

    .line 2759
    const/16 v4, 0x11

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2762
    :cond_11
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_12

    .line 2763
    const/16 v5, 0x12

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2762
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2766
    :cond_12
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x20

    and-int/2addr v4, v5

    const/high16 v5, 0x20

    if-ne v4, v5, :cond_13

    .line 2767
    const/16 v4, 0x13

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2770
    :cond_13
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x1000

    and-int/2addr v4, v5

    const/high16 v5, 0x1000

    if-ne v4, v5, :cond_14

    .line 2771
    const/16 v4, 0x14

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2774
    :cond_14
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_15

    .line 2775
    const/16 v4, 0x15

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2778
    :cond_15
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    const/high16 v5, 0x2

    if-ne v4, v5, :cond_16

    .line 2779
    const/16 v4, 0x17

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2782
    :cond_16
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    const/high16 v5, 0x8

    if-ne v4, v5, :cond_17

    .line 2783
    const/16 v4, 0x18

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2786
    :cond_17
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_18

    .line 2787
    const/16 v4, 0x19

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2791
    :cond_18
    const/4 v0, 0x0

    .line 2792
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_19

    .line 2793
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2792
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2796
    :cond_19
    add-int/2addr v2, v0

    .line 2797
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlPageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 2799
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x2000

    and-int/2addr v4, v5

    const/high16 v5, 0x2000

    if-ne v4, v5, :cond_1a

    .line 2800
    const/16 v4, 0x1c

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSendToPhoneUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2803
    :cond_1a
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_1b

    .line 2804
    const/16 v4, 0x1d

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2807
    :cond_1b
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_1c

    .line 2808
    const/16 v4, 0x1e

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceItemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2811
    :cond_1c
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_1d

    .line 2812
    const/16 v4, 0x1f

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCanonicalUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2815
    :cond_1d
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x200

    and-int/2addr v4, v5

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_1e

    .line 2816
    const/16 v4, 0x21

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2819
    :cond_1e
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x800

    and-int/2addr v4, v5

    const/high16 v5, 0x800

    if-ne v4, v5, :cond_1f

    .line 2820
    const/16 v4, 0x22

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2823
    :cond_1f
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_20

    .line 2824
    const/16 v4, 0x23

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2827
    :cond_20
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_21

    .line 2828
    const/16 v4, 0x24

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2831
    :cond_21
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_22

    .line 2832
    const/16 v4, 0x25

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceAccountIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2835
    :cond_22
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    const/high16 v5, 0x10

    if-ne v4, v5, :cond_23

    .line 2836
    const/16 v4, 0x26

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2839
    :cond_23
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 2840
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedSerializedSize:I

    move v3, v2

    .line 2841
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "index"

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public getShareTargetCount()I
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getShareTargetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    return-object v0
.end method

.method public getShareTargetOrBuilder(I)Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntityOrBuilder;

    return-object v0
.end method

.method public getShareTargetOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    return-object v0
.end method

.method public getSmsType()Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1280
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    .line 1281
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1282
    check-cast v1, Ljava/lang/String;

    .line 1290
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1284
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1286
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1287
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1288
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1290
    goto :goto_0
.end method

.method public getSourceAccountId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1421
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceAccountId_:Ljava/lang/Object;

    .line 1422
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1423
    check-cast v1, Ljava/lang/String;

    .line 1431
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1425
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1427
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1428
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1429
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceAccountId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1431
    goto :goto_0
.end method

.method public getSourceAccountIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1444
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceAccountId_:Ljava/lang/Object;

    .line 1445
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1446
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1449
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceAccountId_:Ljava/lang/Object;

    .line 1452
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

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    .line 1313
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1314
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1317
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    .line 1320
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

.method public getSourceItemId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1363
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    .line 1364
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1365
    check-cast v1, Ljava/lang/String;

    .line 1373
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1367
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1369
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1370
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1371
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1373
    goto :goto_0
.end method

.method public getSourceItemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1387
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    .line 1388
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1389
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1392
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    .line 1395
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

.method public getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    return-object v0
.end method

.method public getSpeakableText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2061
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    .line 2062
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2063
    check-cast v1, Ljava/lang/String;

    .line 2071
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2065
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2067
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2068
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2069
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2071
    goto :goto_0
.end method

.method public getSpeakableTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2110
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    .line 2111
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2112
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2115
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    .line 2118
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

.method public getSpeakableType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1935
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableType_:Ljava/lang/Object;

    .line 1936
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1937
    check-cast v1, Ljava/lang/String;

    .line 1945
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1939
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1941
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1942
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1943
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1945
    goto :goto_0
.end method

.method public getSpeakableTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1975
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableType_:Ljava/lang/Object;

    .line 1976
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1977
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1980
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableType_:Ljava/lang/Object;

    .line 1983
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

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1735
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    .line 1736
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1737
    check-cast v1, Ljava/lang/String;

    .line 1745
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1739
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1741
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1742
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1743
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1745
    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1757
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    .line 1758
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1759
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1762
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    .line 1765
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

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1681
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1691
    goto :goto_0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1703
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

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

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBundleId()Z
    .locals 2

    .prologue
    .line 948
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

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

.method public hasCanonicalUrl()Z
    .locals 2

    .prologue
    .line 1467
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCloudSyncProtocol()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400

    .line 2435
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCloudSyncStatus()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 2392
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompanionSyncProtocol()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800

    .line 2450
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompanionSyncStatus()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200

    .line 2416
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreationTime()Z
    .locals 2

    .prologue
    .line 1064
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

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

.method public hasCreator()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 1523
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayTime()Z
    .locals 2

    .prologue
    .line 1116
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

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

.method public hasHtml()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8

    .line 1780
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

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

    .line 882
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInReplyTo()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 1613
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsBundleCover()Z
    .locals 2

    .prologue
    .line 1029
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

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

.method public hasIsDeleted()Z
    .locals 2

    .prologue
    .line 1227
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

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

.method public hasIsPinned()Z
    .locals 2

    .prologue
    .line 1202
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

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

.method public hasLocation()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 2187
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedTime()Z
    .locals 2

    .prologue
    .line 1089
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

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

.method public hasNotification()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80

    .line 2356
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPinScore()Z
    .locals 2

    .prologue
    .line 1174
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

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

.method public hasPinTime()Z
    .locals 2

    .prologue
    .line 1145
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

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

.method public hasSendToPhoneUrl()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v1, 0x2000

    .line 2485
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSmsType()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v1, 0x1000

    .line 2465
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 1260
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

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

.method public hasSourceAccountId()Z
    .locals 2

    .prologue
    .line 1410
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceItemId()Z
    .locals 2

    .prologue
    .line 1351
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceType()Z
    .locals 2

    .prologue
    .line 1330
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

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

.method public hasSpeakableText()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 2024
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakableType()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10

    .line 1907
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 1725
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 1671
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 365
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_TimelineItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    const-class v2, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 2855
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 2856
    const-string v0, "com.google.googlex.glass.common.proto.MutableTimeline$TimelineItem"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2858
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2570
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedIsInitialized:B

    .line 2571
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 2574
    :goto_0
    return v1

    .line 2571
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2573
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 2915
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 2924
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/TimelineItem$1;)V

    .line 2925
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilderForType()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilderForType()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 2919
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

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
    .line 2848
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 2579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSerializedSize()I

    .line 2580
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 2581
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2583
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_1

    .line 2584
    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2586
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v7, :cond_2

    .line 2587
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2589
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_3

    .line 2590
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2592
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_4

    .line 2593
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2595
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2596
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2598
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 2599
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getInReplyToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2601
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 2602
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2604
    :cond_7
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 2605
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2604
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2607
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    const/high16 v2, 0x40

    if-ne v1, v2, :cond_9

    .line 2608
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2610
    :cond_9
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 2611
    const/16 v2, 0xb

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2610
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2613
    :cond_a
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x100

    and-int/2addr v1, v2

    const/high16 v2, 0x100

    if-ne v1, v2, :cond_b

    .line 2614
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2616
    :cond_b
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x400

    and-int/2addr v1, v2

    const/high16 v2, 0x400

    if-ne v1, v2, :cond_c

    .line 2617
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2619
    :cond_c
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_d

    .line 2620
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2622
    :cond_d
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_e

    .line 2623
    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2625
    :cond_e
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    const/high16 v2, 0x80

    if-ne v1, v2, :cond_f

    .line 2626
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-virtual {p1, v7, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2628
    :cond_f
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_10

    .line 2629
    const/16 v1, 0x11

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2631
    :cond_10
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 2632
    const/16 v2, 0x12

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2631
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2634
    :cond_11
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_12

    .line 2635
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2637
    :cond_12
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    const/high16 v2, 0x1000

    if-ne v1, v2, :cond_13

    .line 2638
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2640
    :cond_13
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_14

    .line 2641
    const/16 v1, 0x15

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2643
    :cond_14
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_15

    .line 2644
    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2646
    :cond_15
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_16

    .line 2647
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2649
    :cond_16
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_17

    .line 2650
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2652
    :cond_17
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 2653
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2652
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2655
    :cond_18
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    const/high16 v2, 0x2000

    if-ne v1, v2, :cond_19

    .line 2656
    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSendToPhoneUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2658
    :cond_19
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_1a

    .line 2659
    const/16 v1, 0x1d

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2661
    :cond_1a
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1b

    .line 2662
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceItemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2664
    :cond_1b
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_1c

    .line 2665
    const/16 v1, 0x1f

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCanonicalUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2667
    :cond_1c
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x200

    and-int/2addr v1, v2

    const/high16 v2, 0x200

    if-ne v1, v2, :cond_1d

    .line 2668
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2670
    :cond_1d
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x800

    and-int/2addr v1, v2

    const/high16 v2, 0x800

    if-ne v1, v2, :cond_1e

    .line 2671
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2673
    :cond_1e
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1f

    .line 2674
    const/16 v1, 0x23

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2676
    :cond_1f
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_20

    .line 2677
    const/16 v1, 0x24

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2679
    :cond_20
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_21

    .line 2680
    const/16 v1, 0x25

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceAccountIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2682
    :cond_21
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    const/high16 v2, 0x10

    if-ne v1, v2, :cond_22

    .line 2683
    const/16 v1, 0x26

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2685
    :cond_22
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2686
    return-void
.end method
