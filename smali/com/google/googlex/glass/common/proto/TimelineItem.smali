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

.field public static final SOURCE_FIELD_NUMBER:I = 0x4

.field public static final SOURCE_ITEM_ID_FIELD_NUMBER:I = 0x1e

.field public static final SOURCE_TYPE_FIELD_NUMBER:I = 0xe

.field public static final SPEAKABLE_TEXT_FIELD_NUMBER:I = 0x13

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

.field private sourceItemId_:Ljava/lang/Object;

.field private sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

.field private source_:Ljava/lang/Object;

.field private speakableText_:Ljava/lang/Object;

.field private text_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineItem$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 2602
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 7265
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->defaultInstance:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 7266
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->defaultInstance:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->initFields()V

    .line 7267
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
    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2332
    const/4 v9, -0x1

    iput-byte v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedIsInitialized:B

    .line 2446
    const/4 v9, -0x1

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedSerializedSize:I

    .line 47
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->initFields()V

    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, mutable_bitField0_:I
    const/4 v3, 0x0

    .line 50
    .local v3, mutable_bitField1_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v7

    .line 53
    .local v7, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 54
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_17

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 56
    .local v6, tag:I
    sparse-switch v6, :sswitch_data_0

    .line 61
    invoke-virtual {p0, p1, v7, p2, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :sswitch_0
    const/4 v0, 0x1

    .line 59
    goto :goto_0

    .line 68
    :sswitch_1
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 69
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 309
    .end local v6           #tag:I
    :catch_0
    move-exception v1

    .line 310
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v9

    const v10, 0x8000

    and-int/2addr v10, v2

    const v11, 0x8000

    if-ne v10, v11, :cond_1

    .line 316
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    .line 318
    :cond_1
    const/high16 v10, 0x40

    and-int/2addr v10, v2

    const/high16 v11, 0x40

    if-ne v10, v11, :cond_2

    .line 319
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    .line 321
    :cond_2
    const/high16 v10, 0x100

    and-int/2addr v10, v2

    const/high16 v11, 0x100

    if-ne v10, v11, :cond_3

    .line 322
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    .line 324
    :cond_3
    const/high16 v10, 0x200

    and-int/2addr v10, v2

    const/high16 v11, 0x200

    if-ne v10, v11, :cond_4

    .line 325
    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    .line 327
    :cond_4
    const/high16 v10, 0x10

    and-int/2addr v10, v2

    const/high16 v11, 0x10

    if-ne v10, v11, :cond_5

    .line 328
    new-instance v10, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v11, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v10, v11}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 330
    :cond_5
    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 331
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->makeExtensionsImmutable()V

    throw v9

    .line 73
    .restart local v6       #tag:I
    :sswitch_2
    :try_start_2
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 74
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 311
    .end local v6           #tag:I
    :catch_1
    move-exception v1

    .line 312
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v9, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #tag:I
    :sswitch_3
    :try_start_4
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v9, v9, 0x10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 79
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J

    goto/16 :goto_0

    .line 83
    :sswitch_4
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v9, v9, 0x400

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 84
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 88
    :sswitch_5
    const/4 v5, 0x0

    .line 89
    .local v5, subBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v9, v9, 0x4000

    const/16 v10, 0x4000

    if-ne v9, v10, :cond_6

    .line 90
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/Entity;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v5

    .line 92
    :cond_6
    sget-object v9, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/Entity;

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 93
    if-eqz v5, :cond_7

    .line 94
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v5, v9}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 95
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 97
    :cond_7
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v9, v9, 0x4000

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 101
    .end local v5           #subBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    :sswitch_6
    const v9, 0x8000

    and-int/2addr v9, v2

    const v10, 0x8000

    if-eq v9, v10, :cond_8

    .line 102
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    .line 103
    const v9, 0x8000

    or-int/2addr v2, v9

    .line 105
    :cond_8
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    sget-object v10, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 109
    :sswitch_7
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const v10, 0x8000

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 110
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 114
    :sswitch_8
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x2

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 115
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 119
    :sswitch_9
    const/high16 v9, 0x40

    and-int/2addr v9, v2

    const/high16 v10, 0x40

    if-eq v9, v10, :cond_9

    .line 120
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    .line 121
    const/high16 v9, 0x40

    or-int/2addr v2, v9

    .line 123
    :cond_9
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    sget-object v10, Lcom/google/googlex/glass/common/proto/Attachment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 127
    :sswitch_a
    const/4 v5, 0x0

    .line 128
    .local v5, subBuilder:Lcom/google/googlex/glass/common/proto/Location$Builder;
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x10

    and-int/2addr v9, v10

    const/high16 v10, 0x10

    if-ne v9, v10, :cond_a

    .line 129
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/Location;->toBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v5

    .line 131
    :cond_a
    sget-object v9, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/Location;

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 132
    if-eqz v5, :cond_b

    .line 133
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-virtual {v5, v9}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 134
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 136
    :cond_b
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x10

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 140
    .end local v5           #subBuilder:Lcom/google/googlex/glass/common/proto/Location$Builder;
    :sswitch_b
    const/high16 v9, 0x100

    and-int/2addr v9, v2

    const/high16 v10, 0x100

    if-eq v9, v10, :cond_c

    .line 141
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    .line 142
    const/high16 v9, 0x100

    or-int/2addr v2, v9

    .line 144
    :cond_c
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    sget-object v10, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 148
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 149
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v8

    .line 150
    .local v8, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    if-nez v8, :cond_d

    .line 151
    const/16 v9, 0xc

    invoke-virtual {v7, v9, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 153
    :cond_d
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x40

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 154
    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    goto/16 :goto_0

    .line 159
    .end local v4           #rawValue:I
    .end local v8           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 160
    .restart local v4       #rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v8

    .line 161
    .local v8, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    if-nez v8, :cond_e

    .line 162
    const/16 v9, 0xd

    invoke-virtual {v7, v9, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 164
    :cond_e
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x100

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 165
    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    goto/16 :goto_0

    .line 170
    .end local v4           #rawValue:I
    .end local v8           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 171
    .restart local v4       #rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    move-result-object v8

    .line 172
    .local v8, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;
    if-nez v8, :cond_f

    .line 173
    const/16 v9, 0xe

    invoke-virtual {v7, v9, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 175
    :cond_f
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v9, v9, 0x800

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 176
    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    goto/16 :goto_0

    .line 181
    .end local v4           #rawValue:I
    .end local v8           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;
    :sswitch_f
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v9, v9, 0x200

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 182
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z

    goto/16 :goto_0

    .line 186
    :sswitch_10
    const/4 v5, 0x0

    .line 187
    .local v5, subBuilder:Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x20

    and-int/2addr v9, v10

    const/high16 v10, 0x20

    if-ne v9, v10, :cond_10

    .line 188
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->toBuilder()Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    move-result-object v5

    .line 190
    :cond_10
    sget-object v9, Lcom/google/googlex/glass/common/proto/NotificationConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/NotificationConfig;

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 191
    if-eqz v5, :cond_11

    .line 192
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-virtual {v5, v9}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;

    .line 193
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 195
    :cond_11
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x20

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 199
    .end local v5           #subBuilder:Lcom/google/googlex/glass/common/proto/NotificationConfig$Builder;
    :sswitch_11
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v9, v9, 0x20

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 200
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J

    goto/16 :goto_0

    .line 204
    :sswitch_12
    const/high16 v9, 0x200

    and-int/2addr v9, v2

    const/high16 v10, 0x200

    if-eq v9, v10, :cond_12

    .line 205
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    .line 206
    const/high16 v9, 0x200

    or-int/2addr v2, v9

    .line 208
    :cond_12
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    sget-object v10, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 212
    :sswitch_13
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x8

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 213
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 217
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 218
    .restart local v4       #rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    move-result-object v8

    .line 219
    .local v8, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;
    if-nez v8, :cond_13

    .line 220
    const/16 v9, 0x14

    invoke-virtual {v7, v9, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 222
    :cond_13
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x400

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 223
    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    goto/16 :goto_0

    .line 228
    .end local v4           #rawValue:I
    .end local v8           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;
    :sswitch_15
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v9, v9, 0x100

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 229
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z

    goto/16 :goto_0

    .line 233
    :sswitch_16
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x1

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 234
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 238
    :sswitch_17
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x4

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 239
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 243
    :sswitch_18
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 244
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 248
    :sswitch_19
    const/high16 v9, 0x10

    and-int/2addr v9, v2

    const/high16 v10, 0x10

    if-eq v9, v10, :cond_14

    .line 249
    new-instance v9, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v9}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 250
    const/high16 v9, 0x10

    or-int/2addr v2, v9

    .line 252
    :cond_14
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 256
    :sswitch_1a
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x800

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 257
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 261
    :sswitch_1b
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 262
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z

    goto/16 :goto_0

    .line 266
    :sswitch_1c
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v9, v9, 0x1000

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 267
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 271
    :sswitch_1d
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v9, v9, 0x2000

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 272
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 276
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 277
    .restart local v4       #rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v8

    .line 278
    .local v8, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    if-nez v8, :cond_15

    .line 279
    const/16 v9, 0x21

    invoke-virtual {v7, v9, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 281
    :cond_15
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x80

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 282
    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    goto/16 :goto_0

    .line 287
    .end local v4           #rawValue:I
    .end local v8           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 288
    .restart local v4       #rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v8

    .line 289
    .local v8, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    if-nez v8, :cond_16

    .line 290
    const/16 v9, 0x22

    invoke-virtual {v7, v9, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 292
    :cond_16
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v10, 0x200

    or-int/2addr v9, v10

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 293
    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    goto/16 :goto_0

    .line 298
    .end local v4           #rawValue:I
    .end local v8           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    :sswitch_20
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit8 v9, v9, 0x40

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 299
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J

    goto/16 :goto_0

    .line 303
    :sswitch_21
    iget v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    or-int/lit16 v9, v9, 0x80

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    .line 304
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 315
    .end local v6           #tag:I
    :cond_17
    const v9, 0x8000

    and-int/2addr v9, v2

    const v10, 0x8000

    if-ne v9, v10, :cond_18

    .line 316
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    .line 318
    :cond_18
    const/high16 v9, 0x40

    and-int/2addr v9, v2

    const/high16 v10, 0x40

    if-ne v9, v10, :cond_19

    .line 319
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    .line 321
    :cond_19
    const/high16 v9, 0x100

    and-int/2addr v9, v2

    const/high16 v10, 0x100

    if-ne v9, v10, :cond_1a

    .line 322
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    .line 324
    :cond_1a
    const/high16 v9, 0x200

    and-int/2addr v9, v2

    const/high16 v10, 0x200

    if-ne v9, v10, :cond_1b

    .line 325
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    .line 327
    :cond_1b
    const/high16 v9, 0x10

    and-int/2addr v9, v2

    const/high16 v10, 0x10

    if-ne v9, v10, :cond_1c

    .line 328
    new-instance v9, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v9, v10}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 330
    :cond_1c
    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 331
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->makeExtensionsImmutable()V

    .line 333
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

    .line 2332
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedIsInitialized:B

    .line 2446
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

    .line 2332
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedIsInitialized:B

    .line 2446
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
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/NotificationConfig;)Lcom/google/googlex/glass/common/proto/NotificationConfig;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;)Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/googlex/glass/common/proto/TimelineItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    return p1
.end method

.method static synthetic access$3900()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4000()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->alwaysUseFieldBuilders:Z

    return v0
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
    .line 336
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_TimelineItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2298
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;

    .line 2299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    .line 2300
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z

    .line 2301
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J

    .line 2302
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J

    .line 2303
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J

    .line 2304
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J

    .line 2305
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I

    .line 2306
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z

    .line 2307
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z

    .line 2308
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    .line 2309
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->GLASSWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    .line 2310
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    .line 2311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    .line 2312
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    .line 2313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    .line 2314
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    .line 2315
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    .line 2316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    .line 2317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    .line 2318
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    .line 2319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    .line 2320
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    .line 2321
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 2322
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    .line 2323
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    .line 2324
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    .line 2325
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 2326
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 2327
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 2328
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 2329
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->NATIVE:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    .line 2330
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2331
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 2664
    #calls: Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->create()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->access$100()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2667
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
    .line 2644
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
    .line 2650
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
    .line 2614
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
    .line 2620
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
    .line 2655
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
    .line 2661
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
    .line 2634
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
    .line 2640
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
    .line 2624
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
    .line 2630
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
    .line 1929
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    return-object v0
.end method

.method public getAttachmentCount()I
    .locals 1

    .prologue
    .line 1919
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
    .line 1898
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    return-object v0
.end method

.method public getAttachmentOrBuilder(I)Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1940
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
    .line 1909
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    return-object v0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 942
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    .line 943
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 944
    check-cast v1, Ljava/lang/String;

    .line 952
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 946
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 948
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 949
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 950
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 952
    goto :goto_0
.end method

.method public getBundleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 972
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    .line 973
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 974
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 977
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bundleId_:Ljava/lang/Object;

    .line 980
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
    .line 1397
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    .line 1398
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1399
    check-cast v1, Ljava/lang/String;

    .line 1407
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1401
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1403
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1404
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1405
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1407
    goto :goto_0
.end method

.method public getCanonicalUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1420
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    .line 1421
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1422
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1425
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->canonicalUrl_:Ljava/lang/Object;

    .line 1428
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
    .line 2207
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object v0
.end method

.method public getCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 1

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object v0
.end method

.method public getCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 1

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object v0
.end method

.method public getCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 1

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 1051
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J

    return-wide v0
.end method

.method public getCreator()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public getCreatorOrBuilder()Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
    .locals 1

    .prologue
    .line 1462
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
    .line 1105
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J

    return-wide v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1710
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    .line 1711
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1712
    check-cast v1, Ljava/lang/String;

    .line 1720
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1714
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1716
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1717
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1718
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1720
    goto :goto_0
.end method

.method public getHtmlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1733
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    .line 1734
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1735
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1738
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->html_:Ljava/lang/Object;

    .line 1741
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
    .line 1782
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
    .line 1795
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlPageCount()I
    .locals 1

    .prologue
    .line 1770
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
    .line 1758
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 870
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;

    .line 871
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 872
    check-cast v1, Ljava/lang/String;

    .line 880
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 874
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 876
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 877
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 878
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 880
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 894
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;

    .line 895
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 896
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 899
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->id_:Ljava/lang/Object;

    .line 902
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
    .line 1544
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    .line 1545
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1546
    check-cast v1, Ljava/lang/String;

    .line 1554
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1548
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1550
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1551
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1552
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1554
    goto :goto_0
.end method

.method public getInReplyToBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1568
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    .line 1569
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1570
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1573
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->inReplyTo_:Ljava/lang/Object;

    .line 1576
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
    .line 1026
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z

    return v0
.end method

.method public getIsDeleted()Z
    .locals 1

    .prologue
    .line 1213
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .prologue
    .line 1190
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z

    return v0
.end method

.method public getLocation()Lcom/google/googlex/glass/common/proto/Location;
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public getLocationOrBuilder()Lcom/google/googlex/glass/common/proto/LocationOrBuilder;
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    return-object v0
.end method

.method public getMenuItem(I)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public getMenuItemCount()I
    .locals 1

    .prologue
    .line 2016
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
    .line 1989
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    return-object v0
.end method

.method public getMenuItemOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2043
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
    .line 2003
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 1076
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J

    return-wide v0
.end method

.method public getNotification()Lcom/google/googlex/glass/common/proto/NotificationConfig;
    .locals 1

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    return-object v0
.end method

.method public getNotificationOrBuilder()Lcom/google/googlex/glass/common/proto/NotificationConfigOrBuilder;
    .locals 1

    .prologue
    .line 2144
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
    .line 358
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPendingAction(I)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2095
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
    .line 2083
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
    .line 2058
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    return-object v0
.end method

.method public getPendingActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;
    .locals 1
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2108
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
    .line 2071
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    return-object v0
.end method

.method public getPinScore()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I

    return v0
.end method

.method public getPinTime()J
    .locals 2

    .prologue
    .line 1134
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J

    return-wide v0
.end method

.method public getSendToPhoneUrl()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2262
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2263
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2264
    check-cast v1, Ljava/lang/String;

    .line 2272
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2266
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2268
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2269
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2270
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2272
    goto :goto_0
.end method

.method public getSendToPhoneUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2285
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2286
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2287
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2290
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sendToPhoneUrl_:Ljava/lang/Object;

    .line 2293
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

    .line 2448
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedSerializedSize:I

    .line 2449
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 2591
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 2451
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 2452
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 2453
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2456
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v9, :cond_2

    .line 2457
    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J

    invoke-static {v7, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2460
    :cond_2
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v10, :cond_3

    .line 2461
    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2464
    :cond_3
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_4

    .line 2465
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2468
    :cond_4
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_5

    .line 2469
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2472
    :cond_5
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 2473
    const/4 v5, 0x6

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2472
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2476
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const v5, 0x8000

    if-ne v4, v5, :cond_7

    .line 2477
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getInReplyToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2480
    :cond_7
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    const/high16 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 2481
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2484
    :cond_8
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 2485
    const/16 v5, 0x9

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2484
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2488
    :cond_9
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    const/high16 v5, 0x10

    if-ne v4, v5, :cond_a

    .line 2489
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2492
    :cond_a
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 2493
    const/16 v5, 0xb

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2492
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2496
    :cond_b
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    const/high16 v5, 0x40

    if-ne v4, v5, :cond_c

    .line 2497
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2500
    :cond_c
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    const/high16 v5, 0x100

    if-ne v4, v5, :cond_d

    .line 2501
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2504
    :cond_d
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_e

    .line 2505
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2508
    :cond_e
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_f

    .line 2509
    const/16 v4, 0xf

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2512
    :cond_f
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x20

    and-int/2addr v4, v5

    const/high16 v5, 0x20

    if-ne v4, v5, :cond_10

    .line 2513
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-static {v10, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2516
    :cond_10
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_11

    .line 2517
    const/16 v4, 0x11

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2520
    :cond_11
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_12

    .line 2521
    const/16 v5, 0x12

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2520
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2524
    :cond_12
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    const/high16 v5, 0x8

    if-ne v4, v5, :cond_13

    .line 2525
    const/16 v4, 0x13

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2528
    :cond_13
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x400

    and-int/2addr v4, v5

    const/high16 v5, 0x400

    if-ne v4, v5, :cond_14

    .line 2529
    const/16 v4, 0x14

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2532
    :cond_14
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_15

    .line 2533
    const/16 v4, 0x15

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2536
    :cond_15
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    const/high16 v5, 0x1

    if-ne v4, v5, :cond_16

    .line 2537
    const/16 v4, 0x17

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2540
    :cond_16
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    const/high16 v5, 0x4

    if-ne v4, v5, :cond_17

    .line 2541
    const/16 v4, 0x18

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2544
    :cond_17
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_18

    .line 2545
    const/16 v4, 0x19

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2549
    :cond_18
    const/4 v0, 0x0

    .line 2550
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_19

    .line 2551
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2550
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2554
    :cond_19
    add-int/2addr v2, v0

    .line 2555
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlPageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 2557
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x800

    and-int/2addr v4, v5

    const/high16 v5, 0x800

    if-ne v4, v5, :cond_1a

    .line 2558
    const/16 v4, 0x1c

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSendToPhoneUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2561
    :cond_1a
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_1b

    .line 2562
    const/16 v4, 0x1d

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2565
    :cond_1b
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_1c

    .line 2566
    const/16 v4, 0x1e

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceItemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2569
    :cond_1c
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_1d

    .line 2570
    const/16 v4, 0x1f

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCanonicalUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2573
    :cond_1d
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x80

    and-int/2addr v4, v5

    const/high16 v5, 0x80

    if-ne v4, v5, :cond_1e

    .line 2574
    const/16 v4, 0x21

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2577
    :cond_1e
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v5, 0x200

    and-int/2addr v4, v5

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_1f

    .line 2578
    const/16 v4, 0x22

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2581
    :cond_1f
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_20

    .line 2582
    const/16 v4, 0x23

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2585
    :cond_20
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_21

    .line 2586
    const/16 v4, 0x24

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2589
    :cond_21
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 2590
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedSerializedSize:I

    move v3, v2

    .line 2591
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "index"

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public getShareTargetCount()I
    .locals 1

    .prologue
    .line 1496
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
    .line 1475
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    return-object v0
.end method

.method public getShareTargetOrBuilder(I)Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1517
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
    .line 1486
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    return-object v0
.end method

.method public getSmsType()Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1256
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    .line 1257
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1258
    check-cast v1, Ljava/lang/String;

    .line 1266
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1260
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1262
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1263
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1264
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1266
    goto :goto_0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1288
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    .line 1289
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1290
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1293
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->source_:Ljava/lang/Object;

    .line 1296
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
    .line 1339
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    .line 1340
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1341
    check-cast v1, Ljava/lang/String;

    .line 1349
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1343
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1345
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1346
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1347
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1349
    goto :goto_0
.end method

.method public getSourceItemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1363
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    .line 1364
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1365
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1368
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceItemId_:Ljava/lang/Object;

    .line 1371
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
    .line 1312
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    return-object v0
.end method

.method public getSpeakableText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1842
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    .line 1843
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1844
    check-cast v1, Ljava/lang/String;

    .line 1852
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1846
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1848
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1849
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1850
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1852
    goto :goto_0
.end method

.method public getSpeakableTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1876
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    .line 1877
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1878
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1881
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->speakableText_:Ljava/lang/Object;

    .line 1884
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
    .line 1654
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    .line 1655
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1656
    check-cast v1, Ljava/lang/String;

    .line 1664
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1658
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1660
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1661
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1662
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1664
    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1676
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    .line 1677
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1678
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1681
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->text_:Ljava/lang/Object;

    .line 1684
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
    .line 1600
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    .line 1601
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1602
    check-cast v1, Ljava/lang/String;

    .line 1610
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1604
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1606
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1607
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1608
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1610
    goto :goto_0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1622
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    .line 1623
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1624
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1627
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->title_:Ljava/lang/Object;

    .line 1630
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
    .line 924
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
    .line 1386
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

.method public hasCloudSyncProtocol()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 2201
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
    const/high16 v1, 0x40

    .line 2158
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
    const/high16 v1, 0x200

    .line 2216
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
    const/high16 v1, 0x80

    .line 2182
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
    .line 1040
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
    .line 1442
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

.method public hasDisplayTime()Z
    .locals 2

    .prologue
    .line 1092
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
    const/high16 v1, 0x4

    .line 1699
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

    .line 858
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
    const v1, 0x8000

    .line 1532
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
    .line 1005
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
    .line 1203
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
    .line 1178
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
    const/high16 v1, 0x10

    .line 1953
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
    .line 1065
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
    const/high16 v1, 0x20

    .line 2122
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
    .line 1150
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
    .line 1121
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
    const/high16 v1, 0x800

    .line 2251
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
    const/high16 v1, 0x400

    .line 2231
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
    .line 1236
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

.method public hasSourceItemId()Z
    .locals 2

    .prologue
    .line 1327
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
    .line 1306
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
    const/high16 v1, 0x8

    .line 1820
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
    const/high16 v1, 0x2

    .line 1644
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
    const/high16 v1, 0x1

    .line 1590
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
    .line 341
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
    .line 2605
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 2606
    const-string v0, "com.google.googlex.glass.common.proto.MutableTimeline$TimelineItem"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2608
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2334
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedIsInitialized:B

    .line 2335
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 2338
    :goto_0
    return v1

    .line 2335
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2337
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 2665
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 2674
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/TimelineItem$1;)V

    .line 2675
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
    .line 2669
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
    .line 2598
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

    .line 2343
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSerializedSize()I

    .line 2344
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 2345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2347
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_1

    .line 2348
    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creationTime_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2350
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v7, :cond_2

    .line 2351
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->modifiedTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2353
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_3

    .line 2354
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2356
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_4

    .line 2357
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2359
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2360
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->shareTarget_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2362
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_6

    .line 2363
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getInReplyToBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2365
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 2366
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2368
    :cond_7
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 2369
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->attachment_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2368
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2371
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    const/high16 v2, 0x10

    if-ne v1, v2, :cond_9

    .line 2372
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2374
    :cond_9
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 2375
    const/16 v2, 0xb

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->menuItem_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2374
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2377
    :cond_a
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    const/high16 v2, 0x40

    if-ne v1, v2, :cond_b

    .line 2378
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2380
    :cond_b
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x100

    and-int/2addr v1, v2

    const/high16 v2, 0x100

    if-ne v1, v2, :cond_c

    .line 2381
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->cloudSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2383
    :cond_c
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_d

    .line 2384
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->sourceType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2386
    :cond_d
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_e

    .line 2387
    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isDeleted_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2389
    :cond_e
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_f

    .line 2390
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/NotificationConfig;

    invoke-virtual {p1, v7, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2392
    :cond_f
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_10

    .line 2393
    const/16 v1, 0x11

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->displayTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2395
    :cond_10
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 2396
    const/16 v2, 0x12

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pendingAction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2395
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2398
    :cond_11
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_12

    .line 2399
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2401
    :cond_12
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x400

    and-int/2addr v1, v2

    const/high16 v2, 0x400

    if-ne v1, v2, :cond_13

    .line 2402
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->smsType_:Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SmsType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2404
    :cond_13
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_14

    .line 2405
    const/16 v1, 0x15

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isPinned_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2407
    :cond_14
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 2408
    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2410
    :cond_15
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_16

    .line 2411
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2413
    :cond_16
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_17

    .line 2414
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2416
    :cond_17
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 2417
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->htmlPage_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2416
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2419
    :cond_18
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x800

    and-int/2addr v1, v2

    const/high16 v2, 0x800

    if-ne v1, v2, :cond_19

    .line 2420
    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSendToPhoneUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2422
    :cond_19
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_1a

    .line 2423
    const/16 v1, 0x1d

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->isBundleCover_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2425
    :cond_1a
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1b

    .line 2426
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceItemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2428
    :cond_1b
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_1c

    .line 2429
    const/16 v1, 0x1f

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCanonicalUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2431
    :cond_1c
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    const/high16 v2, 0x80

    if-ne v1, v2, :cond_1d

    .line 2432
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2434
    :cond_1d
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    const/high16 v2, 0x200

    and-int/2addr v1, v2

    const/high16 v2, 0x200

    if-ne v1, v2, :cond_1e

    .line 2435
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->companionSyncProtocol_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2437
    :cond_1e
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1f

    .line 2438
    const/16 v1, 0x23

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2440
    :cond_1f
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_20

    .line 2441
    const/16 v1, 0x24

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineItem;->pinScore_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2443
    :cond_20
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2444
    return-void
.end method
