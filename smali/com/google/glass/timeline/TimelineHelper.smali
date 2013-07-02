.class public Lcom/google/glass/timeline/TimelineHelper;
.super Ljava/lang/Object;
.source "TimelineHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;,
        Lcom/google/glass/timeline/TimelineHelper$Update;
    }
.end annotation


# static fields
.field public static final ACTION_ENTITY_TIMELINE:Ljava/lang/String; = "com.google.glass.ACTION_ENTITY_TIMELINE"

.field public static final ACTION_GO_TO_BUNDLE:Ljava/lang/String; = "com.google.glass.ACTION_GO_TO_BUNDLE"

.field public static final ACTION_NOTIFICATION_RECEIVED:Ljava/lang/String; = "com.google.glass.ACTION_NOTIFICATION_RECEIVED"

.field public static final ACTION_PLAY_VIDEO:Ljava/lang/String; = "com.google.glass.action.VIDEOPLAYER"

.field public static final ACTION_READ_MORE_HTML:Ljava/lang/String; = "com.google.glass.ACTION_READ_MORE_HTML"

.field public static final ACTION_READ_MORE_TEXT:Ljava/lang/String; = "com.google.glass.ACTION_READ_MORE_TEXT"

.field public static final EXTRA_ENTITY_IMAGE:Ljava/lang/String; = "entityImage"

.field public static final EXTRA_FILTER_ENTITY:Ljava/lang/String; = "filterEntity"

.field public static final EXTRA_IS_NOTIFICATION:Ljava/lang/String; = "is_notification"

.field public static final EXTRA_SHOW_VOICE_MENU:Ljava/lang/String; = "show_voice_menu"

.field public static final EXTRA_TIMELINE_BUNDLE_ITEM:Ljava/lang/String; = "bundle_item"

.field public static final EXTRA_TIMELINE_BUNDLE_ITEM_ID:Ljava/lang/String; = "bundle_item_id"

.field public static final EXTRA_TIMELINE_CREATOR:Ljava/lang/String; = "creator"

.field public static final EXTRA_TIMELINE_ITEM:Ljava/lang/String; = "item"

.field public static final EXTRA_TIMELINE_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final EXTRA_TIMELINE_MENU_ITEM_ID:Ljava/lang/String; = "menu_item_id"

.field public static final EXTRA_TIMELINE_SHARE_TARGET_COUNT:Ljava/lang/String; = "share_target_count"

.field public static final EXTRA_TIMELINE_SHARE_TARGET_PREFIX:Ljava/lang/String; = "share_target"

.field private static final IGNORE_INDEX:Ljava/lang/String; = "+"

.field private static final MAX_DISPLAY_ITEMS:I = 0xc8

.field static final MAX_LOCATION_AGE_FOR_TIMELINE_MS:J = 0x1b7740L

.field public static final NON_DATABASE_ITEM_ID_PREFIX:Ljava/lang/String; = "com.google.glass.non-database-item-id-prefix"

.field public static final PHONE_CALL_PROTO_MIME_TYPE:Ljava/lang/String; = "application/vnd.google-glass.phone-call-proto"

.field public static final SEARCH_HTML_MIME_TYPE:Ljava/lang/String; = "application/glass+html"

.field public static final SEARCH_PROTO_MIME_TYPE:Ljava/lang/String; = "proto/search"

.field private static final SOURCE_REDACTED:Ljava/lang/String; = "***"

.field private static final SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN:Ljava/util/regex/Pattern; = null

.field static final SPEAKABLE_TEXT_MAX_LENGTH:I = 0xf9f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SPEAKABLE_TEXT_TIME_FORMAT:Ljava/text/SimpleDateFormat; = null

.field public static final STREAM_URL_CONTENT_TYPE:Ljava/lang/String; = "video/vnd.google-glass.stream-url"

.field public static final SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

.field public static final SUPPORTED_MEDIA_MIME_TYPES:[Ljava/lang/String;

.field public static final SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    const-class v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    .line 113
    const-string v0, "$DISPLAY_TIME"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 204
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    .line 207
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "video/mp4"

    aput-object v1, v0, v2

    const-string v1, "video/vnd.google-glass.stream-url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    .line 213
    invoke-static {}, Lcom/google/glass/timeline/TimelineHelper;->combineSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_MEDIA_MIME_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static addEntityContentValues(Lcom/google/googlex/glass/common/proto/Entity;ILandroid/content/ContentValues;Ljava/util/List;)V
    .locals 8
    .parameter "entity"
    .parameter "type"
    .parameter "baseValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            "I",
            "Landroid/content/ContentValues;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 913
    .local p3, values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->getIds(Lcom/google/googlex/glass/common/proto/Entity;)[Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, ids:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 915
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->getIds(Lcom/google/googlex/glass/common/proto/Entity;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 916
    .local v2, id:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 917
    .local v5, value:Landroid/content/ContentValues;
    const-string v6, "entityType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 918
    const-string v6, "entityId"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 922
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #value:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private static addEntityContentValues(Ljava/lang/Iterable;ILandroid/content/ContentValues;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter "type"
    .parameter "baseValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;I",
            "Landroid/content/ContentValues;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 898
    .local p0, entities:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/googlex/glass/common/proto/Entity;>;"
    .local p3, values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 899
    .local v0, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineHelper;->addEntityContentValues(Lcom/google/googlex/glass/common/proto/Entity;ILandroid/content/ContentValues;Ljava/util/List;)V

    goto :goto_0

    .line 901
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    return-void
.end method

.method public static atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V
    .locals 2
    .parameter "update"

    .prologue
    .line 597
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 598
    :try_start_0
    #calls: Lcom/google/glass/timeline/TimelineHelper$Update;->execute()V
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;->access$100(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 599
    monitor-exit v1

    .line 600
    return-void

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V
    .locals 1
    .parameter "update"

    .prologue
    .line 606
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$5;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/TimelineHelper$5;-><init>(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 612
    return-void
.end method

.method public static varargs binarySearch(Ljava/lang/String;JLandroid/database/Cursor;Z[I)I
    .locals 18
    .parameter "targetId"
    .parameter "targetDisplayTime"
    .parameter "cursor"
    .parameter "descDisplayTime"
    .parameter "hintIndices"

    .prologue
    .line 1629
    if-eqz p0, :cond_0

    if-nez p3, :cond_2

    .line 1630
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot search for target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const/4 v12, -0x1

    .line 1704
    :cond_1
    :goto_0
    return v12

    .line 1633
    :cond_2
    const/16 v17, 0x0

    .line 1634
    .local v17, startIndex:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .line 1636
    .local v9, endIndex:I
    const-string v1, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1637
    .local v11, idColumnIndex:I
    const-string v1, "display_time"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1638
    .local v8, displayTimeColumnIndex:I
    const-string v1, "is_deleted"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1640
    .local v14, isDeletedColumnIndex:I
    move-object/from16 v7, p5

    .local v7, arr$:[I
    array-length v15, v7

    .local v15, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v15, :cond_8

    aget v12, v7, v10

    .line 1642
    .local v12, index:I
    if-ltz v12, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v12, v1, :cond_5

    .line 1643
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1646
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1647
    .local v4, id:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .local v5, displayTime:J
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 1649
    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/TimelineHelper;->compare(Ljava/lang/String;JLjava/lang/String;J)I

    move-result v16

    .line 1652
    .local v16, result:I
    if-nez p4, :cond_3

    .line 1653
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    .line 1656
    :cond_3
    if-nez v16, :cond_4

    .line 1657
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1658
    .local v13, isDeleted:I
    if-eqz v13, :cond_1

    .line 1661
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v2, "Found item, but it is deleted. Ignoring the item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const/4 v12, -0x1

    goto :goto_0

    .line 1665
    .end local v13           #isDeleted:I
    :cond_4
    if-gez v16, :cond_6

    .line 1666
    add-int/lit8 v1, v12, 0x1

    move/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1640
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #displayTime:J
    .end local v16           #result:I
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1668
    .restart local v4       #id:Ljava/lang/String;
    .restart local v5       #displayTime:J
    .restart local v16       #result:I
    :cond_6
    add-int/lit8 v1, v12, -0x1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_2

    .line 1697
    :cond_7
    if-gez v16, :cond_a

    .line 1698
    add-int/lit8 v17, v12, 0x1

    .line 1673
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #displayTime:J
    .end local v12           #index:I
    .end local v16           #result:I
    :cond_8
    :goto_3
    move/from16 v0, v17

    if-gt v0, v9, :cond_b

    .line 1674
    add-int v1, v17, v9

    shr-int/lit8 v12, v1, 0x1

    .line 1675
    .restart local v12       #index:I
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1678
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1679
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .restart local v5       #displayTime:J
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 1681
    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/TimelineHelper;->compare(Ljava/lang/String;JLjava/lang/String;J)I

    move-result v16

    .line 1684
    .restart local v16       #result:I
    if-nez p4, :cond_9

    .line 1685
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    .line 1688
    :cond_9
    if-nez v16, :cond_7

    .line 1689
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1690
    .restart local v13       #isDeleted:I
    if-eqz v13, :cond_1

    .line 1693
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v2, "Found item, but it is deleted. Ignoring the item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 1700
    .end local v13           #isDeleted:I
    :cond_a
    add-int/lit8 v9, v12, -0x1

    goto :goto_3

    .line 1704
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #displayTime:J
    .end local v12           #index:I
    .end local v16           #result:I
    :cond_b
    const/4 v12, -0x1

    goto/16 :goto_0
.end method

.method public static canSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1840
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCompanionSyncProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static combineSupportedTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2332
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2333
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static compare(Ljava/lang/String;JLjava/lang/String;J)I
    .locals 2
    .parameter "targetId"
    .parameter "targetDisplayTime"
    .parameter "id"
    .parameter "displayTime"

    .prologue
    .line 1598
    invoke-virtual {p0, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1599
    .local v0, result:I
    if-nez v0, :cond_1

    .line 1600
    const/4 v0, 0x0

    .line 1610
    .end local v0           #result:I
    :cond_0
    :goto_0
    return v0

    .line 1603
    .restart local v0       #result:I
    :cond_1
    cmp-long v1, p1, p4

    if-gez v1, :cond_2

    .line 1604
    const/4 v0, -0x1

    goto :goto_0

    .line 1606
    :cond_2
    cmp-long v1, p1, p4

    if-lez v1, :cond_0

    .line 1607
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createItemLoaderForBundleTimeline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/content/CursorLoader;
    .locals 9
    .parameter "context"
    .parameter "itemId"
    .parameter "bundleId"
    .parameter "maxItemTimestamp"
    .parameter "descDisplayTime"
    .parameter "pinned"

    .prologue
    .line 1115
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 1120
    .local v7, maxItemTimestampString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1121
    .local v8, select:Ljava/lang/StringBuilder;
    const-string v0, "+is_deleted=0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pin_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p6, :cond_1

    const-string v0, "<>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    const-string v0, "bundle_cover_status!=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1131
    const-string v0, "_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object v7, v5, v0

    .line 1152
    .local v5, selectArgs:[Ljava/lang/String;
    :goto_1
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    const-string v0, "+delivery_time<=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    const-string v6, ""

    .line 1158
    .local v6, orderBy:Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pin_score DESC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pin_time, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_3

    const-string v0, " DESC "

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1166
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1123
    .end local v5           #selectArgs:[Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    :cond_1
    const-string v0, "=="

    goto/16 :goto_0

    .line 1139
    :cond_2
    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    const-string v0, "_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    const-string v0, " OR "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    const-string v0, "+bundle_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v7, v5, v0

    .restart local v5       #selectArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 1162
    .restart local v6       #orderBy:Ljava/lang/String;
    :cond_3
    const-string v0, " "

    goto :goto_2
.end method

.method public static createItemLoaderForGuestTimeline(Landroid/content/Context;ZZJ)Landroid/content/CursorLoader;
    .locals 10
    .parameter "context"
    .parameter "pinned"
    .parameter "descDisplayTime"
    .parameter "minCreationTime"

    .prologue
    .line 1066
    new-instance v9, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 1067
    .local v9, settingsSecure:Lcom/google/glass/util/SettingsSecure;
    invoke-static {v9}, Lcom/google/glass/timeline/TimelineHelper;->getLocalTimelineItemSource(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;

    move-result-object v7

    .line 1070
    .local v7, localTimelineItemSource:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1071
    .local v8, select:Ljava/lang/StringBuilder;
    const-string v0, "is_deleted=0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pin_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "<>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    const-string v0, "creation_time>=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    const-string v0, "source=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    const-string v0, " AND ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    const-string v0, "bundle_cover_status!=0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    const-string v0, " OR "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const-string v0, "bundle_id=\"\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    aput-object v7, v5, v0

    .line 1094
    .local v5, selectArgs:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    const-string v0, " DESC "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1098
    .local v6, orderBy:Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1073
    .end local v5           #selectArgs:[Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    :cond_0
    const-string v0, "="

    goto :goto_0

    .line 1094
    .restart local v5       #selectArgs:[Ljava/lang/String;
    :cond_1
    const-string v0, " "

    goto :goto_1
.end method

.method public static createItemLoaderForTimeline(Landroid/content/Context;JZZLcom/google/googlex/glass/common/proto/Entity;)Landroid/content/CursorLoader;
    .locals 10
    .parameter "context"
    .parameter "maxItemTimestamp"
    .parameter "pinned"
    .parameter "descDisplayTime"
    .parameter "entityFilter"

    .prologue
    .line 993
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 994
    .local v9, select:Ljava/lang/StringBuilder;
    const-string v0, "+is_deleted=0"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+pin_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_1

    const-string v0, "<>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    const-string v0, "+delivery_time<=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const-string v0, " AND ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    const-string v0, "bundle_cover_status!=0"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v0, " OR "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    const-string v0, "bundle_id=\"\""

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    if-eqz p5, :cond_3

    .line 1008
    invoke-static {p5}, Lcom/google/glass/entity/EntityHelper;->getIds(Lcom/google/googlex/glass/common/proto/Entity;)[Ljava/lang/String;

    move-result-object v8

    .line 1009
    .local v8, ids:[Ljava/lang/String;
    if-eqz v8, :cond_3

    array-length v0, v8

    if-eqz v0, :cond_3

    .line 1010
    const-string v0, " AND ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    const-string v0, "_id IN (SELECT timelineId FROM entity WHERE entityId IN ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v8

    if-ge v7, v0, :cond_2

    .line 1015
    const/16 v0, 0x3f

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1016
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    .line 1017
    const/16 v0, 0x2c

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1014
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 996
    .end local v7           #i:I
    .end local v8           #ids:[Ljava/lang/String;
    :cond_1
    const-string v0, "="

    goto :goto_0

    .line 1020
    .restart local v7       #i:I
    .restart local v8       #ids:[Ljava/lang/String;
    :cond_2
    const-string v0, ")))"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    .end local v7           #i:I
    .end local v8           #ids:[Ljava/lang/String;
    :cond_3
    const-string v6, ""

    .line 1026
    .local v6, orderBy:Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pin_score, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pin_time, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1030
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_5

    const-string v0, " DESC "

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1033
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, p5}, Lcom/google/glass/timeline/TimelineHelper;->getItemLoaderSelectArgs(JLcom/google/googlex/glass/common/proto/Entity;)[Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1030
    :cond_5
    const-string v0, " "

    goto :goto_2
.end method

.method public static createShareTargetExtraKey(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 2146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "share_target"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createTimelineItemBuilder(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;Ljava/lang/String;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 6
    .parameter "context"
    .parameter "sourceType"
    .parameter "sourcePrefix"
    .parameter "settingsSecure"

    .prologue
    .line 273
    const-string v5, "android_id"

    invoke-virtual {p3, v5}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, deviceId:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, source:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 277
    .local v1, currentTime:J
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 278
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-static {p0, v4, v0}, Lcom/google/glass/timeline/TimelineHelper;->populateLocation(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V

    .line 279
    invoke-static {p3}, Lcom/google/glass/timeline/TimelineHelper;->generateUniqueId(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSourceType(Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v5

    return-object v5
.end method

.method public static deleteAll(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "resolver"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1548
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1549
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1885
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->canSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->SYNC_FAILED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatAndSpeakText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 5
    .parameter "context"
    .parameter "text"
    .parameter "lang"
    .parameter "displayTime"

    .prologue
    .line 2019
    const/4 v2, 0x0

    invoke-static {p1, p3, v2}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    .line 2020
    .local v0, formattedTts:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2039
    :cond_0
    :goto_0
    return-void

    .line 2025
    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "en"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "en-us"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2026
    :cond_2
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/app/GlassApplication;->speakText(Ljava/lang/String;)V

    goto :goto_0

    .line 2028
    :cond_3
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using network to read \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    invoke-static {p1, p2}, Lcom/google/glass/voice/network/translate/NetworkTts;->getNetworkTtsUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2030
    .local v1, networkUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2031
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/timeline/TimelineHelper$6;

    invoke-direct {v3, v1}, Lcom/google/glass/timeline/TimelineHelper$6;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static formatAndSpeakText(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .parameter "context"
    .parameter "text"
    .parameter "displayTime"

    .prologue
    .line 2007
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    .line 2008
    .local v0, formattedTts:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2009
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassApplication;->speakText(Ljava/lang/String;)V

    .line 2011
    :cond_0
    return-void
.end method

.method public static formatSpeakableText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 1974
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1976
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSpeakableText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "speakExtraContext"

    .prologue
    .line 1991
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1993
    if-nez p1, :cond_0

    .line 1994
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v2, "Cannot format speakable text for null timeline item"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const/4 v1, 0x0

    .line 1999
    :goto_0
    return-object v1

    .line 1998
    :cond_0
    new-instance v1, Lcom/google/glass/timeline/SpeakableText;

    invoke-direct {v1, p0}, Lcom/google/glass/timeline/SpeakableText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/timeline/SpeakableText;->getSpeakableText(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Ljava/lang/String;

    move-result-object v0

    .line 1999
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDisplayTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1, p2}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected static formatSpeakableText(Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "displayTime"
    .parameter "speakExtraContext"

    .prologue
    const/16 v4, 0xf9f

    .line 1916
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1917
    :cond_0
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v3, "Request to format speakable text had no text to format"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    const/4 p0, 0x0

    .line 1960
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 1922
    .restart local p0
    :cond_2
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1923
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1924
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1925
    .local v1, time:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1934
    .end local v1           #time:Ljava/lang/String;
    :cond_3
    const-string v2, "[\\[\\]]"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1944
    const-string v2, "\\(Play voice recording\\)"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1945
    const-string v2, "Sent from my Glass"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1948
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1949
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1950
    const-string v2, " - web link - "

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1955
    :cond_4
    const-string v2, "throughglass"

    const-string v3, "through glass"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1957
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 1958
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static fromContentValues(Landroid/content/ContentValues;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 2
    .parameter "values"

    .prologue
    .line 929
    const-string v1, "protobuf_blob"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 931
    .local v0, protoByteArray:[B
    if-nez v0, :cond_0

    .line 932
    const/4 v1, 0x0

    .line 935
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    goto :goto_0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 942
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getProtobufBlob(Landroid/database/Cursor;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method private static fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 4
    .parameter "data"

    .prologue
    .line 1818
    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1824
    :goto_0
    return-object v1

    .line 1819
    :catch_0
    move-exception v0

    .line 1820
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v3, "Error deserializing protobuf"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1821
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static generateUniqueId(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;
    .locals 1
    .parameter "settingsSecure"

    .prologue
    .line 1584
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentOfType(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 3
    .parameter "item"
    .parameter "contentType"

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 2215
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2219
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "item"
    .parameter "contentTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2296
    .local v1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v5

    .local v5, n:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 2297
    invoke-virtual {p0, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 2298
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    const/4 v4, 0x0

    .local v4, ii:I
    array-length v6, p1

    .local v6, nn:I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 2299
    aget-object v2, p1, v4

    .line 2300
    .local v2, contentType:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2301
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2298
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2296
    .end local v2           #contentType:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2305
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    .end local v4           #ii:I
    .end local v6           #nn:I
    :cond_2
    return-object v1
.end method

.method public static getBundleCover(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/util/Pair;
    .locals 11
    .parameter "resolver"
    .parameter "bundleId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1173
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1177
    .local v8, select:Ljava/lang/StringBuilder;
    const-string v0, "is_deleted==0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    const-string v0, "bundle_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    const-string v0, "bundle_cover_status!=0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1189
    .local v4, selectArgs:[Ljava/lang/String;
    const-string v5, "display_time DESC"

    .line 1192
    .local v5, orderBy:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1194
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1196
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1197
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    .line 1198
    .local v6, cover:Lcom/google/googlex/glass/common/proto/TimelineItem;
    const-string v0, "bundle_cover_status"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1199
    .local v9, status:Ljava/lang/Integer;
    if-eqz v6, :cond_0

    if-nez v9, :cond_3

    .line 1205
    :cond_0
    if-eqz v7, :cond_1

    .line 1206
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    .line 1209
    .end local v6           #cover:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v9           #status:Ljava/lang/Integer;
    :cond_2
    :goto_0
    return-object v0

    .line 1202
    .restart local v6       #cover:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v9       #status:Ljava/lang/Integer;
    :cond_3
    :try_start_1
    invoke-static {v6, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1205
    if-eqz v7, :cond_2

    .line 1206
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1205
    .end local v6           #cover:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v9           #status:Ljava/lang/Integer;
    :cond_4
    if-eqz v7, :cond_5

    .line 1206
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v10

    .line 1209
    goto :goto_0

    .line 1205
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 1206
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getBundleCoverStatus(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 966
    const-string v0, "bundle_cover_status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J
    .locals 3
    .parameter "item"

    .prologue
    const-wide/16 v0, 0x0

    .line 1557
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasNotification()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1563
    :cond_0
    :goto_0
    return-wide v0

    .line 1560
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getNotification()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->hasDeliveryTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1563
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getNotification()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDeliveryTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J
    .locals 2
    .parameter "item"

    .prologue
    .line 1571
    if-nez p0, :cond_0

    .line 1572
    const-wide/16 v0, 0x0

    .line 1574
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasDisplayTime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDisplayTime()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getModifiedTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getItemLoaderSelectArgs(JLcom/google/googlex/glass/common/proto/Entity;)[Ljava/lang/String;
    .locals 3
    .parameter "maxItemTimestamp"
    .parameter "entityFilter"

    .prologue
    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    .local v0, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    if-eqz p2, :cond_0

    .line 1046
    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getIds(Lcom/google/googlex/glass/common/proto/Entity;)[Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, ids:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 1048
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1051
    .end local v1           #ids:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static getLocalTimelineItemSource(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;
    .locals 3
    .parameter "settingsSecure"

    .prologue
    .line 289
    const-string v1, "device:"

    .line 290
    .local v1, prefix:Ljava/lang/String;
    const-string v2, "android_id"

    invoke-virtual {p0, v2}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, deviceId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getPinTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J
    .locals 2
    .parameter "item"

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getPinTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getProtobufBlob(Landroid/database/Cursor;)[B
    .locals 1
    .parameter "cursor"

    .prologue
    .line 949
    const-string v0, "protobuf_blob"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getRedactedSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "rawSource"

    .prologue
    .line 300
    if-nez p0, :cond_1

    .line 301
    const/4 p0, 0x0

    .line 312
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 304
    .restart local p0
    :cond_1
    const-string v0, "device:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    const-string p0, "device:***"

    goto :goto_0

    .line 308
    :cond_2
    const-string v0, "companion:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string p0, "companion:***"

    goto :goto_0
.end method

.method public static getSupportedContextualVoiceCommands(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 4
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2272
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2274
    .local v0, commands:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem$Action;>;"
    if-nez p0, :cond_1

    .line 2284
    :cond_0
    :goto_0
    return-object v0

    .line 2278
    :cond_1
    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2280
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/google/glass/timeline/TimelineHelper;->hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2281
    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getThumbnailFilename(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/String;
    .locals 3
    .parameter "attachment"

    .prologue
    .line 1899
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1900
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1904
    :goto_0
    return-object v0

    .line 1901
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1902
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1904
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTimelineItemCount(Landroid/content/ContentResolver;)I
    .locals 7
    .parameter "resolver"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1528
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1530
    const/4 v6, 0x0

    .line 1532
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1533
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1535
    if-eqz v6, :cond_0

    .line 1536
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 1535
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 1536
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static getTimelineItemsForTest(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 8
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2339
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 2341
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2342
    .local v7, timelineItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    const/4 v6, 0x0

    .line 2344
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2345
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2346
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2349
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 2350
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 2349
    :cond_1
    if-eqz v6, :cond_2

    .line 2350
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2353
    :cond_2
    return-object v7
.end method

.method public static goToBundle(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineItemId;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "item"
    .parameter "id"
    .parameter "isNotification"
    .parameter "shouldShowVoiceMenuImmediately"

    .prologue
    .line 2098
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_GO_TO_BUNDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2099
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2100
    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2101
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2102
    const-string v1, "is_notification"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2103
    const-string v1, "show_voice_menu"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2104
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2105
    return-void
.end method

.method public static goToEntityTimeline(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "context"
    .parameter "entity"
    .parameter "existingEntityImage"

    .prologue
    .line 2081
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_ENTITY_TIMELINE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2082
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "filterEntity"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2086
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2087
    return-void
.end method

.method public static goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2053
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2054
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 2055
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2057
    :cond_0
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 2058
    return-void
.end method

.method public static goToTimelineHome(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2045
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 2046
    return-void
.end method

.method public static goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 2067
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2068
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2069
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2070
    if-eqz p1, :cond_0

    .line 2071
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2073
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2074
    return-void
.end method

.method public static varargs hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z
    .locals 4
    .parameter "item"
    .parameter "contentTypes"

    .prologue
    .line 2184
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2185
    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 2186
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/glass/timeline/TimelineHelper;->isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2187
    const/4 v3, 0x1

    .line 2190
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :goto_1
    return v3

    .line 2184
    .restart local v0       #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2190
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2310
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasBundleId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Z
    .locals 7
    .parameter "item"
    .parameter "menuItemActions"

    .prologue
    .line 2232
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItemCount()I

    move-result v4

    .local v4, n:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 2233
    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItem(I)Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v2

    .line 2234
    .local v2, menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    const/4 v1, 0x0

    .local v1, ii:I
    array-length v5, p1

    .local v5, nn:I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 2235
    aget-object v3, p1, v1

    .line 2236
    .local v3, menuItemAction:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2237
    const/4 v6, 0x1

    .line 2241
    .end local v1           #ii:I
    .end local v2           #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    .end local v3           #menuItemAction:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    .end local v5           #nn:I
    :goto_2
    return v6

    .line 2234
    .restart local v1       #ii:I
    .restart local v2       #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    .restart local v3       #menuItemAction:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    .restart local v5       #nn:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2232
    .end local v3           #menuItemAction:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2241
    .end local v1           #ii:I
    .end local v2           #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    .end local v5           #nn:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static varargs hasMenuItemBroadcastActions(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z
    .locals 7
    .parameter "item"
    .parameter "broadcastActions"

    .prologue
    .line 2253
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItemCount()I

    move-result v4

    .local v4, n:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 2254
    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItem(I)Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v3

    .line 2255
    .local v3, menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    const/4 v2, 0x0

    .local v2, ii:I
    array-length v5, p1

    .local v5, nn:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 2256
    aget-object v0, p1, v2

    .line 2257
    .local v0, broadcastAction:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2258
    const/4 v6, 0x1

    .line 2262
    .end local v0           #broadcastAction:Ljava/lang/String;
    .end local v2           #ii:I
    .end local v3           #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    .end local v5           #nn:I
    :goto_2
    return v6

    .line 2255
    .restart local v0       #broadcastAction:Ljava/lang/String;
    .restart local v2       #ii:I
    .restart local v3       #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    .restart local v5       #nn:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2253
    .end local v0           #broadcastAction:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2262
    .end local v2           #ii:I
    .end local v3           #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    .end local v5           #nn:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 1865
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1866
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    .line 1867
    .local v1, source:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1868
    invoke-static {v1}, Lcom/google/glass/companion/CompanionUtils;->getComponentFromSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1869
    .local v0, component:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1878
    .end local v0           #component:Ljava/lang/String;
    .end local v1           #source:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1872
    .restart local v0       #component:Ljava/lang/String;
    .restart local v1       #source:Ljava/lang/String;
    :cond_1
    const-string v3, "com.google.android.apps.googlevoice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.android.mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.google.glass.companion.sms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isRunningOnCompanion(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.glass.companion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "checkedContentType"
    .parameter "supportedContentTypes"

    .prologue
    .line 2198
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2199
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2200
    const/4 v4, 0x1

    .line 2203
    .end local v1           #contentType:Ljava/lang/String;
    :goto_1
    return v4

    .line 2198
    .restart local v1       #contentType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2203
    .end local v1           #contentType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isSyncingToCloud(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncingToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1856
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideo(Lcom/google/googlex/glass/common/proto/Attachment;)Z
    .locals 2
    .parameter "attachment"

    .prologue
    .line 1892
    const-string v0, "video/mp4"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static linearSearch(Ljava/lang/String;Landroid/database/Cursor;I)I
    .locals 9
    .parameter "targetId"
    .parameter "cursor"
    .parameter "maxIterations"

    .prologue
    const/4 v5, -0x1

    .line 1713
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1714
    :cond_0
    sget-object v6, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot search for target: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cursor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1745
    :cond_1
    :goto_0
    return v0

    .line 1719
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1720
    sget-object v6, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot search for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; no items."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1721
    goto :goto_0

    .line 1725
    :cond_3
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1726
    .local v2, idColumnIndex:I
    const-string v6, "is_deleted"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1727
    .local v4, isDeletedColumnIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_5

    .line 1728
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1729
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1732
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1733
    .local v3, isDeleted:I
    if-eqz v3, :cond_1

    .line 1736
    sget-object v6, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v7, "Found item, but it is deleted. Ignoring the item."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1737
    goto :goto_0

    .line 1741
    .end local v3           #isDeleted:I
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_6

    .end local v1           #id:Ljava/lang/String;
    :cond_5
    move v0, v5

    .line 1745
    goto :goto_0

    .line 1727
    .restart local v1       #id:Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static pickBundleCover(Ljava/util/List;)I
    .locals 2
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1298
    .local p0, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1299
    :cond_0
    const/4 v0, -0x1

    .line 1310
    :cond_1
    :goto_0
    return v0

    .line 1303
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1304
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsBundleCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1310
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "extra"
    .parameter "value"

    .prologue
    .line 2139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.VIDEOPLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2140
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2141
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2142
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2143
    return-void
.end method

.method static populateLocation(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    .locals 7
    .parameter "context"
    .parameter "source"
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2160
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->isRunningOnCompanion(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2161
    sget-object v3, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v4, "Not populating location on Companion"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    :cond_0
    :goto_0
    return-void

    .line 2163
    :cond_1
    invoke-static {}, Lcom/google/glass/location/LocationHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 2164
    .local v0, location:Landroid/location/Location;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2165
    .local v1, now:J
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v5, 0x1b7740

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 2166
    invoke-static {v0, p1}, Lcom/google/glass/location/LocationHelper;->toLocationProto(Landroid/location/Location;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_0
.end method

.method public static queryItemsByDeliveryTime(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "deliveryTime"

    .prologue
    .line 1454
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "delivery_time>=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "delivery_time ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static queryPinnedItems(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1464
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1465
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const-string v3, "pin_time<>-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static readMoreHtml(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_READ_MORE_HTML"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2130
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2131
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2132
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2133
    return-void
.end method

.method public static readMoreText(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_READ_MORE_TEXT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2116
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2117
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2118
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2119
    return-void
.end method

.method private static removeFileFromMediaStore(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Attachment;)V
    .locals 10
    .parameter "context"
    .parameter "attachment"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 525
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    const-string v0, "image/jpeg"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 539
    .local v1, contentUri:Landroid/net/Uri;
    :goto_1
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "_data"

    aput-object v0, v2, v9

    .line 543
    .local v2, fields:[Ljava/lang/String;
    const-string v3, "_data=?"

    .line 544
    .local v3, select:Ljava/lang/String;
    const/4 v6, 0x0

    .line 546
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 548
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 549
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 550
    .local v7, id:I
    int-to-long v4, v7

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 551
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v8, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 548
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 554
    .end local v7           #id:I
    .end local v8           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 555
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 532
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v2           #fields:[Ljava/lang/String;
    .end local v3           #select:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    const-string v0, "video/mp4"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #contentUri:Landroid/net/Uri;
    goto :goto_1

    .line 554
    .restart local v2       #fields:[Ljava/lang/String;
    .restart local v3       #select:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_4
    if-eqz v6, :cond_0

    .line 555
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineItem;IIZJ)Z
    .locals 4
    .parameter "item"
    .parameter "currentBundleCoverStatus"
    .parameter "targetBundleCoverStatus"
    .parameter "isBundlePinned"
    .parameter "bundlePinTime"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1392
    if-eq p1, p2, :cond_1

    move v0, v1

    .line 1400
    :cond_0
    :goto_0
    return v0

    .line 1397
    :cond_1
    if-eqz p3, :cond_3

    .line 1398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1400
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasPinTime()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static shouldReplyViaCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1849
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    move-result-object v0

    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->COMPANIONWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 2317
    if-eqz p0, :cond_0

    .line 2318
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->startSuppressNotifyChange()V

    .line 2320
    :cond_0
    return-void
.end method

.method private static stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 2324
    if-eqz p0, :cond_0

    .line 2325
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->stopSuppressNotifyChange()V

    .line 2327
    :cond_0
    return-void
.end method

.method public static toContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Landroid/content/ContentValues;
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 837
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 838
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v1, "creation_time"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreationTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 840
    const-string v1, "modified_time"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 841
    const-string v1, "display_time"

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 842
    const-string v1, "delivery_time"

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 843
    const-string v1, "pin_time"

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 844
    const-string v4, "pin_score"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasPinScore()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getPinScore()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    const-string v4, "is_deleted"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    const-string v1, "sync_status"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    const-string v1, "sync_protocol"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    const-string v4, "bundle_id"

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v1, "bundle_cover_status"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsBundleCover()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    const-string v2, "source"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v1, "protobuf_blob"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 855
    return-object v0

    .line 844
    :cond_0
    const v1, 0x7fffffff

    goto :goto_0

    :cond_1
    move v1, v3

    .line 846
    goto :goto_1

    .line 849
    :cond_2
    const-string v1, ""

    goto :goto_2

    :cond_3
    move v2, v3

    .line 851
    goto :goto_3

    .line 853
    :cond_4
    const-string v1, ""

    goto :goto_4
.end method

.method private static toContentValues(Lcom/google/googlex/glass/common/proto/UserAction;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "action"
    .parameter "timelineItemId"

    .prologue
    .line 867
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 868
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "action_type"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction;->getType()Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/UserAction$Type;->getNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 869
    const-string v1, "timeline_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction;->hasPayload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    const-string v1, "payload"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_0
    return-object v0
.end method

.method static toEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/ArrayList;
    .locals 4
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 882
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 883
    .local v1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 884
    .local v0, baseValue:Landroid/content/ContentValues;
    const-string v2, "timelineId"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->addEntityContentValues(Lcom/google/googlex/glass/common/proto/Entity;ILandroid/content/ContentValues;Ljava/util/List;)V

    .line 890
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->addEntityContentValues(Ljava/lang/Iterable;ILandroid/content/ContentValues;Ljava/util/List;)V

    .line 892
    return-object v1
.end method

.method static updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 19
    .parameter "resolver"
    .parameter "bundleId"
    .parameter "clearPin"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1224
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1227
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1228
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v2, "Cannot bundle items with empty bundle ID."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :goto_0
    return-void

    .line 1231
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating bundle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    sget-object v18, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v18

    .line 1238
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1239
    .local v17, select:Ljava/lang/StringBuilder;
    const-string v1, "+is_deleted==0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    const-string v1, "bundle_id==?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1249
    .local v5, selectArgs:[Ljava/lang/String;
    const-string v6, "display_time DESC"

    .line 1252
    .local v6, orderBy:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1253
    .local v8, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    .local v9, currentBundleCoverStatuses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .line 1255
    .local v11, isBundlePinned:Z
    const-wide/16 v12, -0x1

    .line 1256
    .local v12, bundlePinTime:J
    const/4 v15, 0x0

    .line 1258
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1260
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1263
    :cond_1
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found no items in bundle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; cannot update."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1280
    if-eqz v15, :cond_2

    .line 1281
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v18

    goto/16 :goto_0

    .line 1288
    .end local v5           #selectArgs:[Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    .end local v8           #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    .end local v9           #currentBundleCoverStatuses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11           #isBundlePinned:Z
    .end local v12           #bundlePinTime:J
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v17           #select:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1266
    .restart local v5       #selectArgs:[Ljava/lang/String;
    .restart local v6       #orderBy:Ljava/lang/String;
    .restart local v8       #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    .restart local v9       #currentBundleCoverStatuses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11       #isBundlePinned:Z
    .restart local v12       #bundlePinTime:J
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v17       #select:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    const-string v1, "bundle_cover_status"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1268
    .local v14, bundleCoverStatusColumn:I
    :cond_4
    invoke-static {v15}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v16

    .line 1269
    .local v16, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    if-nez p2, :cond_5

    .line 1275
    invoke-virtual/range {v16 .. v16}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v1

    or-int/2addr v11, v1

    .line 1276
    invoke-static/range {v16 .. v16}, Lcom/google/glass/timeline/TimelineHelper;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v1

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 1278
    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-nez v1, :cond_4

    .line 1280
    if-eqz v15, :cond_6

    .line 1281
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1286
    :cond_6
    invoke-static {v8}, Lcom/google/glass/timeline/TimelineHelper;->pickBundleCover(Ljava/util/List;)I

    move-result v10

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v13}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;IZJ)V

    .line 1288
    monitor-exit v18

    goto/16 :goto_0

    .line 1280
    .end local v14           #bundleCoverStatusColumn:I
    .end local v16           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :catchall_1
    move-exception v1

    if-eqz v15, :cond_7

    .line 1281
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method static updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;IZJ)V
    .locals 5
    .parameter "resolver"
    .parameter "item"
    .parameter "bundleCoverStatus"
    .parameter "isBundlePinned"
    .parameter "bundlePinTime"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1426
    if-eqz p3, :cond_2

    .line 1427
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-eqz v2, :cond_1

    .line 1428
    :cond_0
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object p1

    .line 1443
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1444
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "bundle_cover_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1445
    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1446
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1447
    return-void

    .line 1434
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasPinTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1435
    :cond_3
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearPinTime()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object p1

    goto :goto_0
.end method

.method static updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;IZJ)V
    .locals 9
    .parameter "resolver"
    .parameter
    .parameter
    .parameter "newCoverCardIndex"
    .parameter "isBundlePinned"
    .parameter "bundlePinTime"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;IZJ)V"
        }
    .end annotation

    .prologue
    .line 1328
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    .local p2, currentBundleCoverStatuses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 1330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1334
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 1335
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1336
    .local v1, currentBundleCoverStatus:I
    const/4 v2, 0x3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1338
    const/4 v4, 0x3

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;IZJ)V

    .line 1384
    .end local v0           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v1           #currentBundleCoverStatus:I
    :cond_0
    return-void

    .line 1328
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1342
    :cond_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_0

    .line 1343
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 1344
    .restart local v0       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1346
    .restart local v1       #currentBundleCoverStatus:I
    if-ne v8, p3, :cond_5

    .line 1349
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsBundleCover()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1350
    const/4 v2, 0x1

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1352
    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;IZJ)V

    .line 1342
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1356
    :cond_4
    const/4 v2, 0x2

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1358
    const/4 v4, 0x2

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;IZJ)V

    goto :goto_2

    .line 1365
    :cond_5
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsBundleCover()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1369
    const/4 v2, 0x1

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1371
    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;IZJ)V

    goto :goto_2

    .line 1375
    :cond_6
    const/4 v2, 0x0

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1377
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;IZJ)V

    goto :goto_2
.end method

.method private updateEntityContentValues(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 6
    .parameter "resolver"
    .parameter "item"

    .prologue
    .line 383
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->ENTITY_URI:Landroid/net/Uri;

    const-string v2, "timelineId=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 386
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->toEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 387
    .local v0, entityContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->ENTITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 391
    :cond_0
    return-void
.end method


# virtual methods
.method public bulkInsertTimelineItem(Landroid/content/Context;Ljava/util/List;)I
    .locals 13
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    const/4 v8, 0x0

    .line 402
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 404
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 444
    :goto_0
    return v8

    .line 409
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 411
    .local v1, bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    new-array v9, v10, [Landroid/content/ContentValues;

    .line 412
    .local v9, values:[Landroid/content/ContentValues;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 413
    .local v2, entityValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 414
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 415
    .local v5, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget-object v10, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Preparing to insert timeline item with ID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {v5}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Landroid/content/ContentValues;

    move-result-object v10

    aput-object v10, v9, v3

    .line 417
    invoke-static {v5}, Lcom/google/glass/timeline/TimelineHelper;->toEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 419
    invoke-static {v5}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 420
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 426
    .end local v5           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 427
    .local v7, resolver:Landroid/content/ContentResolver;
    const-string v10, "com.google.glass.timeline"

    invoke-virtual {v7, v10}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v6

    check-cast v6, Lcom/google/glass/timeline/TimelineProvider;

    .line 429
    .local v6, provider:Lcom/google/glass/timeline/TimelineProvider;
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 431
    :try_start_0
    sget-object v10, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v8

    .line 432
    .local v8, result:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_3

    .line 433
    sget-object v11, Lcom/google/glass/timeline/TimelineProvider;->ENTITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/content/ContentValues;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/content/ContentValues;

    invoke-virtual {v7, v11, v10}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 439
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 440
    .local v0, bundleId:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {v7, v0, v10}, Lcom/google/glass/timeline/TimelineHelper;->updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 444
    .end local v0           #bundleId:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #result:I
    :catchall_0
    move-exception v10

    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v10

    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #result:I
    :cond_4
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    goto/16 :goto_0
.end method

.method public createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "context"
    .parameter "settingsSecure"

    .prologue
    .line 257
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->GLASS_DEVICE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    const-string v1, "device:"

    invoke-static {p1, v0, v1, p2}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;Ljava/lang/String;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public deletePendingActions(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7
    .parameter "context"
    .parameter "timelineItemId"
    .parameter "maxRowId"

    .prologue
    .line 763
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 764
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 765
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 766
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineProvider;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id<=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 768
    .local v0, count:I
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending actions with maxRowId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    .end local v0           #count:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public deleteSyncedItemsOlderThan(Landroid/content/Context;Landroid/content/ContentResolver;J)V
    .locals 13
    .parameter "context"
    .parameter "resolver"
    .parameter "timestamp"

    .prologue
    .line 776
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 779
    const-string v3, "sync_status=1 AND modified_time<=?"

    .line 783
    .local v3, select:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 785
    .local v4, args:[Ljava/lang/String;
    sget-object v12, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v12

    .line 788
    :try_start_0
    const-string v0, "com.google.glass.timeline"

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v11

    check-cast v11, Lcom/google/glass/timeline/TimelineProvider;

    .line 790
    .local v11, provider:Lcom/google/glass/timeline/TimelineProvider;
    invoke-static {v11}, Lcom/google/glass/timeline/TimelineHelper;->startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 791
    const/4 v9, 0x0

    .line 795
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_1
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 798
    .local v8, bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "bundle_id"

    aput-object v5, v2, v0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 800
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 801
    const-string v0, "bundle_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 802
    .local v7, bundleIdColumn:I
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 803
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 804
    .local v6, bundleId:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 821
    .end local v6           #bundleId:Ljava/lang/String;
    .end local v7           #bundleIdColumn:I
    .end local v8           #bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    .line 822
    if-eqz v9, :cond_1

    .line 823
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 826
    :cond_1
    :try_start_3
    invoke-static {v11}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v0

    .line 829
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #provider:Lcom/google/glass/timeline/TimelineProvider;
    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 810
    .restart local v7       #bundleIdColumn:I
    .restart local v8       #bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #provider:Lcom/google/glass/timeline/TimelineProvider;
    :cond_2
    :try_start_4
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 813
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 814
    .restart local v6       #bundleId:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p2, v6, v0}, Lcom/google/glass/timeline/TimelineHelper;->updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 822
    .end local v6           #bundleId:Ljava/lang/String;
    .end local v7           #bundleIdColumn:I
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz v9, :cond_4

    .line 823
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 826
    :cond_4
    :try_start_6
    invoke-static {v11}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 829
    monitor-exit v12

    .line 830
    return-void

    .line 826
    :catchall_2
    move-exception v0

    invoke-static {v11}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v0

    .end local v8           #bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_3
    move-exception v0

    invoke-static {v11}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public deleteTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 7
    .parameter "context"
    .parameter "item"

    .prologue
    .line 474
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 477
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 478
    sget-object v4, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is already deleted."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    return-void

    .line 482
    :cond_1
    sget-object v4, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsDeleted(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSourceType()Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSourceType(Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreationTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDisplayTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getModifiedTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    .line 496
    .local v3, tombstone:Lcom/google/googlex/glass/common/proto/TimelineItem;
    new-instance v4, Lcom/google/glass/timeline/TimelineHelper$2;

    invoke-direct {v4, p0, p1, v3}, Lcom/google/glass/timeline/TimelineHelper$2;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {v4}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 505
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 506
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {p2, v0}, Lcom/google/glass/timeline/AttachmentHelper;->shouldDeleteLocalAttachment(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/Attachment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 507
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, clientCachePath:Ljava/lang/String;
    sget-object v4, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting attached file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 510
    sget-object v4, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    :cond_3
    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineHelper;->removeFileFromMediaStore(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Attachment;)V

    goto :goto_0
.end method

.method public deleteTimelineItemAsync(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 581
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/timeline/TimelineHelper$4;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 587
    return-void
.end method

.method public deleteTimelineItemAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "itemId"

    .prologue
    .line 564
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/timeline/TimelineHelper$3;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 575
    return-void
.end method

.method public getPendingActions(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    .locals 15
    .parameter "context"
    .parameter "timelineItemId"

    .prologue
    .line 725
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 727
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 729
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v8

    .line 730
    .local v8, builder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/googlex/glass/common/proto/UserAction;>;"
    const-wide/16 v10, 0x0

    .line 731
    .local v10, maxRowId:J
    invoke-static/range {p2 .. p2}, Lcom/google/glass/timeline/TimelineProvider;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 733
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 734
    const-string v2, "action_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/googlex/glass/common/proto/UserAction$Type;->valueOf(I)Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v14

    .line 736
    .local v14, type:Lcom/google/googlex/glass/common/proto/UserAction$Type;
    if-eqz v14, :cond_1

    .line 737
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v7

    .line 738
    .local v7, action:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    const-string v2, "payload"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 739
    .local v12, payload:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 740
    invoke-virtual {v7, v12}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    .line 742
    :cond_0
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 744
    .end local v7           #action:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .end local v12           #payload:Ljava/lang/String;
    :cond_1
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 745
    goto :goto_0

    .line 746
    .end local v14           #type:Lcom/google/googlex/glass/common/proto/UserAction$Type;
    :cond_2
    new-instance v13, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v13, v2, v10, v11, v3}, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;-><init>(Ljava/util/List;JLcom/google/glass/timeline/TimelineHelper$1;)V

    .line 747
    .local v13, response:Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->actions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending actions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    if-eqz v9, :cond_3

    .line 751
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v13

    .line 750
    .end local v8           #builder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/googlex/glass/common/proto/UserAction;>;"
    .end local v10           #maxRowId:J
    .end local v13           #response:Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_4

    .line 751
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public getUnsyncedItems(Landroid/content/ContentResolver;Ljava/util/List;Z)Ljava/util/Queue;
    .locals 11
    .parameter "resolver"
    .parameter
    .parameter "sharePriority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;",
            ">;Z)",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1759
    .local p2, syncProtocols:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v9

    .line 1761
    .local v9, items:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1762
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v1, "No sync protocol(s) specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_1
    :goto_0
    return-object v9

    .line 1766
    :cond_2
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting items with sync protocols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    const/4 v6, 0x0

    .line 1772
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1773
    .local v10, selection:Ljava/lang/StringBuilder;
    const-string v0, "sync_status=0"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1775
    const-string v0, "sync_protocol IN ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 1777
    if-lez v7, :cond_3

    .line 1778
    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    :cond_3
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getNumber()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1776
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1782
    :cond_4
    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "creation_time ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1792
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1793
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v8

    .line 1794
    .local v8, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz p3, :cond_6

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1795
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prioritizing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to shareCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v8}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1803
    .end local v7           #i:I
    .end local v8           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v10           #selection:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1804
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1799
    .restart local v7       #i:I
    .restart local v8       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v10       #selection:Ljava/lang/StringBuilder;
    :cond_6
    :try_start_1
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1803
    .end local v8           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_7
    if-eqz v6, :cond_1

    .line 1804
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "itemType"
    .parameter "action"

    .prologue
    .line 327
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 334
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v4, "com.google.glass.timeline"

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 336
    .local v0, contentProviderClient:Landroid/content/ContentProviderClient;
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    check-cast v2, Lcom/google/glass/timeline/TimelineProvider;

    .line 337
    .local v2, provider:Lcom/google/glass/timeline/TimelineProvider;
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 339
    :try_start_0
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 340
    .local v1, itemUri:Landroid/net/Uri;
    sget-object v5, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inserted timeline item [id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p4, :cond_3

    const-string v4, ""

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", itemType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz p4, :cond_0

    .line 345
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/timeline/TimelineProvider;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p4, v5}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/UserAction;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 349
    :cond_0
    invoke-direct {p0, v3, p2}, Lcom/google/glass/timeline/TimelineHelper;->updateEntityContentValues(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 353
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/glass/timeline/TimelineHelper;->updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_1
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 358
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 361
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v4

    sget-object v5, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    if-eq v4, v5, :cond_2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v4

    sget-object v5, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    if-eq v4, v5, :cond_2

    .line 363
    const-string v4, "com.google.glass.timeline"

    sget-object v5, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_TIMELINE:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {p1, v4, v5}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 373
    :cond_2
    new-instance v4, Lcom/google/glass/logging/UserEventHelper;

    invoke-direct {v4, p1}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/glass/logging/UserEventAction;->TIMELINE_ITEM_INSERTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p3}, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 375
    return-object v1

    .line 340
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", action="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Lcom/google/googlex/glass/common/proto/UserAction;->getType()Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto/16 :goto_0

    .line 357
    .end local v1           #itemUri:Landroid/net/Uri;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 358
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v4
.end method

.method public insertTimelineItemAsync(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)V
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "itemType"
    .parameter "action"

    .prologue
    .line 459
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper$1;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method

.method public queryTimelineItem(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 8
    .parameter "resolver"
    .parameter "itemUri"

    .prologue
    const/4 v7, 0x0

    .line 1503
    const/4 v6, 0x0

    .line 1505
    .local v6, timelineCursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1507
    if-nez v6, :cond_2

    .line 1517
    if-eqz v6, :cond_0

    .line 1518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v7

    :cond_1
    :goto_0
    return-object v0

    .line 1511
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 1517
    if-eqz v6, :cond_3

    .line 1518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v7

    goto :goto_0

    .line 1515
    :cond_4
    :try_start_2
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1517
    if-eqz v6, :cond_1

    .line 1518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1517
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 8
    .parameter "resolver"
    .parameter "itemId"

    .prologue
    .line 1476
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1478
    const/4 v6, 0x0

    .line 1479
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1481
    .local v7, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1488
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1492
    :cond_0
    if-eqz v6, :cond_1

    .line 1493
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1496
    :cond_1
    return-object v7

    .line 1492
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1493
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 12
    .parameter "context"
    .parameter "item"
    .parameter "action"
    .parameter "markAsSynced"
    .parameter "clearPin"

    .prologue
    .line 629
    sget-object v9, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateTimelineItem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " with markAsSynced = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", with number of attachments = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 633
    sget-object v9, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 634
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Cannot update without holding the UPDATE_LOCK"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 637
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 640
    .local v7, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v4

    .line 641
    .local v4, existing:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 644
    sget-object v9, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot un-delete item: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; update has been canceled."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v9, 0x0

    .line 698
    :goto_0
    return-object v9

    .line 649
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 652
    .local v2, bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 653
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_2
    invoke-static {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v10

    if-eqz p4, :cond_5

    sget-object v9, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    :goto_1
    invoke-virtual {v10, v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCloudSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object p2

    .line 665
    const-string v9, "com.google.glass.timeline"

    invoke-virtual {v7, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v6

    check-cast v6, Lcom/google/glass/timeline/TimelineProvider;

    .line 667
    .local v6, provider:Lcom/google/glass/timeline/TimelineProvider;
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 669
    :try_start_0
    sget-object v9, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 670
    .local v8, uri:Landroid/net/Uri;
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Landroid/content/ContentValues;

    move-result-object v3

    .line 671
    .local v3, contentValues:Landroid/content/ContentValues;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v3, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 673
    if-eqz p3, :cond_3

    .line 674
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/glass/timeline/TimelineProvider;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {p3, v10}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/UserAction;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 678
    :cond_3
    invoke-direct {p0, v7, p2}, Lcom/google/glass/timeline/TimelineHelper;->updateEntityContentValues(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 681
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 682
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 687
    .local v1, bundleId:Ljava/lang/String;
    move/from16 v0, p5

    invoke-static {v7, v1, v0}, Lcom/google/glass/timeline/TimelineHelper;->updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 690
    .end local v1           #bundleId:Ljava/lang/String;
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v9

    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v9

    .line 659
    .end local v6           #provider:Lcom/google/glass/timeline/TimelineProvider;
    :cond_5
    sget-object v9, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    goto :goto_1

    .line 690
    .restart local v3       #contentValues:Landroid/content/ContentValues;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #provider:Lcom/google/glass/timeline/TimelineProvider;
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_6
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 693
    if-nez p4, :cond_7

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v9

    sget-object v10, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    if-eq v9, v10, :cond_7

    .line 694
    const-string v9, "com.google.glass.timeline"

    sget-object v10, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_TIMELINE:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {p1, v9, v10}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    :cond_7
    move-object v9, p2

    .line 698
    goto/16 :goto_0
.end method
