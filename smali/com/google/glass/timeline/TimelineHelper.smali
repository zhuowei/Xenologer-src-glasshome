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
.field public static final ACTION_GO_TO_BUNDLE:Ljava/lang/String; = "com.google.glass.ACTION_GO_TO_BUNDLE"

.field public static final ACTION_NOTIFICATION_RECEIVED:Ljava/lang/String; = "com.google.glass.ACTION_NOTIFICATION_RECEIVED"

.field public static final EXTRA_IS_NOTIFICATION:Ljava/lang/String; = "is_notification"

.field public static final EXTRA_READ_MORE:Ljava/lang/String; = "read_more"

.field public static final EXTRA_TIMELINE_BUNDLE_ITEM_ID:Ljava/lang/String; = "bundle_item_id"

.field public static final EXTRA_TIMELINE_CREATOR:Ljava/lang/String; = "creator"

.field public static final EXTRA_TIMELINE_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final EXTRA_TIMELINE_MENU_ITEM_ID:Ljava/lang/String; = "menu_item_id"

.field public static final EXTRA_TIMELINE_SHARE_TARGET_COUNT:Ljava/lang/String; = "share_target_count"

.field public static final EXTRA_TIMELINE_SHARE_TARGET_PREFIX:Ljava/lang/String; = "share_target"

.field private static final IGNORE_INDEX:Ljava/lang/String; = "+"

.field private static final MAX_DISPLAY_ITEMS:I = 0xc8

.field static final MAX_LOCATION_AGE_FOR_TIMELINE_MS:J = 0x1b7740L

.field public static final NON_DATABASE_ITEM_ID_PREFIX:Ljava/lang/String; = "com.google.glass.non-database-item-id-prefix"

.field public static final SEARCH_PROTO_MIME_TYPE:Ljava/lang/String; = "proto/search"

.field private static final SOURCE_REDACTED:Ljava/lang/String; = "***"

.field private static final SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final SPEAKABLE_TEXT_MAX_LENGTH:I = 0xf9f

.field private static final SPEAKABLE_TEXT_TIME_FORMAT:Ljava/text/SimpleDateFormat; = null

.field public static final STREAM_URL_CONTENT_TYPE:Ljava/lang/String; = "video/vnd.google-glass.stream-url"

.field public static final SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

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

    .line 70
    const-class v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    .line 99
    const-string v0, "$DISPLAY_TIME"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 103
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 156
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    .line 159
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "video/mp4"

    aput-object v1, v0, v2

    const-string v1, "video/vnd.google-glass.stream-url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V
    .locals 2
    .parameter "update"

    .prologue
    .line 527
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 528
    :try_start_0
    #calls: Lcom/google/glass/timeline/TimelineHelper$Update;->execute()V
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;->access$100(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 529
    monitor-exit v1

    .line 530
    return-void

    .line 529
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
    .line 536
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$5;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/TimelineHelper$5;-><init>(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 542
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
    .line 1427
    if-eqz p0, :cond_0

    if-nez p3, :cond_2

    .line 1428
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

    .line 1429
    const/4 v12, -0x1

    .line 1502
    :cond_1
    :goto_0
    return v12

    .line 1431
    :cond_2
    const/16 v17, 0x0

    .line 1432
    .local v17, startIndex:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .line 1434
    .local v9, endIndex:I
    const-string v1, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1435
    .local v11, idColumnIndex:I
    const-string v1, "display_time"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1436
    .local v8, displayTimeColumnIndex:I
    const-string v1, "is_deleted"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1438
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

    .line 1440
    .local v12, index:I
    if-ltz v12, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v12, v1, :cond_5

    .line 1441
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1444
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1445
    .local v4, id:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .local v5, displayTime:J
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 1447
    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/TimelineHelper;->compare(Ljava/lang/String;JLjava/lang/String;J)I

    move-result v16

    .line 1450
    .local v16, result:I
    if-nez p4, :cond_3

    .line 1451
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    .line 1454
    :cond_3
    if-nez v16, :cond_4

    .line 1455
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1456
    .local v13, isDeleted:I
    if-eqz v13, :cond_1

    .line 1459
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v2, "Found item, but it is deleted. Ignoring the item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/4 v12, -0x1

    goto :goto_0

    .line 1463
    .end local v13           #isDeleted:I
    :cond_4
    if-gez v16, :cond_6

    .line 1464
    add-int/lit8 v1, v12, 0x1

    move/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1438
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #displayTime:J
    .end local v16           #result:I
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1466
    .restart local v4       #id:Ljava/lang/String;
    .restart local v5       #displayTime:J
    .restart local v16       #result:I
    :cond_6
    add-int/lit8 v1, v12, -0x1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_2

    .line 1495
    :cond_7
    if-gez v16, :cond_a

    .line 1496
    add-int/lit8 v17, v12, 0x1

    .line 1471
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #displayTime:J
    .end local v12           #index:I
    .end local v16           #result:I
    :cond_8
    :goto_3
    move/from16 v0, v17

    if-gt v0, v9, :cond_b

    .line 1472
    add-int v1, v17, v9

    shr-int/lit8 v12, v1, 0x1

    .line 1473
    .restart local v12       #index:I
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1476
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1477
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .restart local v5       #displayTime:J
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 1479
    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/TimelineHelper;->compare(Ljava/lang/String;JLjava/lang/String;J)I

    move-result v16

    .line 1482
    .restart local v16       #result:I
    if-nez p4, :cond_9

    .line 1483
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    .line 1486
    :cond_9
    if-nez v16, :cond_7

    .line 1487
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1488
    .restart local v13       #isDeleted:I
    if-eqz v13, :cond_1

    .line 1491
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v2, "Found item, but it is deleted. Ignoring the item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 1498
    .end local v13           #isDeleted:I
    :cond_a
    add-int/lit8 v9, v12, -0x1

    goto :goto_3

    .line 1502
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
    .line 1638
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

.method private static compare(Ljava/lang/String;JLjava/lang/String;J)I
    .locals 2
    .parameter "targetId"
    .parameter "targetDisplayTime"
    .parameter "id"
    .parameter "displayTime"

    .prologue
    .line 1396
    invoke-virtual {p0, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1397
    .local v0, result:I
    if-nez v0, :cond_1

    .line 1398
    const/4 v0, 0x0

    .line 1408
    .end local v0           #result:I
    :cond_0
    :goto_0
    return v0

    .line 1401
    .restart local v0       #result:I
    :cond_1
    cmp-long v1, p1, p4

    if-gez v1, :cond_2

    .line 1402
    const/4 v0, -0x1

    goto :goto_0

    .line 1404
    :cond_2
    cmp-long v1, p1, p4

    if-lez v1, :cond_0

    .line 1405
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
    .line 913
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 918
    .local v7, maxItemTimestampString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .local v8, select:Ljava/lang/StringBuilder;
    const-string v0, "+is_deleted=0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
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

    .line 923
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string v0, "bundle_cover_status!=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 929
    const-string v0, "_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object v7, v5, v0

    .line 950
    .local v5, selectArgs:[Ljava/lang/String;
    :goto_1
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    const-string v0, "+delivery_time<=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    const-string v6, ""

    .line 956
    .local v6, orderBy:Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pin_score DESC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pin_time, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 960
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

    .line 964
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 921
    .end local v5           #selectArgs:[Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    :cond_1
    const-string v0, "=="

    goto/16 :goto_0

    .line 937
    :cond_2
    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const-string v0, "_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    const-string v0, " OR "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    const-string v0, "+bundle_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
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

    .line 960
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
    .line 864
    new-instance v9, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 865
    .local v9, settingsSecure:Lcom/google/glass/util/SettingsSecure;
    invoke-static {v9}, Lcom/google/glass/timeline/TimelineHelper;->getLocalTimelineItemSource(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;

    move-result-object v7

    .line 868
    .local v7, localTimelineItemSource:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .local v8, select:Ljava/lang/StringBuilder;
    const-string v0, "is_deleted=0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
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

    .line 873
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    const-string v0, "creation_time>=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    const-string v0, "source=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const-string v0, " AND ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const-string v0, "bundle_cover_status!=0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const-string v0, " OR "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    const-string v0, "bundle_id=\"\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    aput-object v7, v5, v0

    .line 892
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

    .line 896
    .local v6, orderBy:Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 871
    .end local v5           #selectArgs:[Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    :cond_0
    const-string v0, "="

    goto :goto_0

    .line 892
    .restart local v5       #selectArgs:[Ljava/lang/String;
    :cond_1
    const-string v0, " "

    goto :goto_1
.end method

.method public static createItemLoaderForTimeline(Landroid/content/Context;JZZ)Landroid/content/CursorLoader;
    .locals 8
    .parameter "context"
    .parameter "maxItemTimestamp"
    .parameter "pinned"
    .parameter "descDisplayTime"

    .prologue
    .line 813
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    .local v7, select:Ljava/lang/StringBuilder;
    const-string v0, "+is_deleted=0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
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

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    const-string v0, "+delivery_time<=?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    const-string v0, " AND ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    const-string v0, "bundle_cover_status!=0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string v0, " OR "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const-string v0, "bundle_id=\"\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    const-string v6, ""

    .line 830
    .local v6, orderBy:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pin_score, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pin_time, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 834
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_2

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

    .line 837
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2}, Lcom/google/glass/timeline/TimelineHelper;->getItemLoaderSelectArgs(J)[Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 816
    .end local v6           #orderBy:Ljava/lang/String;
    :cond_1
    const-string v0, "="

    goto/16 :goto_0

    .line 834
    .restart local v6       #orderBy:Ljava/lang/String;
    :cond_2
    const-string v0, " "

    goto :goto_1
.end method

.method public static createShareTargetExtraKey(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 1829
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
    .line 219
    const-string v5, "android_id"

    invoke-virtual {p3, v5}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, deviceId:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, source:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 223
    .local v1, currentTime:J
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 224
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-static {p0, v4, v0}, Lcom/google/glass/timeline/TimelineHelper;->populateLocation(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V

    .line 225
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

    .line 1346
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1347
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1676
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

.method public static formatSpeakableText(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;
    .locals 8
    .parameter "item"

    .prologue
    const/16 v7, 0xf9f

    .line 1708
    const/4 v1, 0x0

    .line 1709
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSpeakableText()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1710
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSpeakableText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1716
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 1717
    const/4 v3, 0x0

    .line 1759
    :goto_1
    return-object v3

    .line 1711
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1712
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1721
    :cond_2
    sget-object v3, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1722
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1723
    sget-object v3, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDisplayTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1724
    .local v2, time:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1733
    .end local v2           #time:Ljava/lang/String;
    :cond_3
    const-string v3, "[\\[\\]]"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1743
    const-string v3, "\\(Play voice recording\\)"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1744
    const-string v3, "Sent from my Glass"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1747
    sget-object v3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1748
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1749
    const-string v3, " - web link - "

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1754
    :cond_4
    const-string v3, "throughglass"

    const-string v4, "through glass"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1756
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_5

    .line 1757
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v1

    .line 1759
    goto :goto_1
.end method

.method public static fromContentValues(Landroid/content/ContentValues;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 2
    .parameter "values"

    .prologue
    .line 749
    const-string v1, "protobuf_blob"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 751
    .local v0, protoByteArray:[B
    if-nez v0, :cond_0

    .line 752
    const/4 v1, 0x0

    .line 755
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
    .line 762
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
    .line 1616
    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1622
    :goto_0
    return-object v1

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v3, "Error deserializing protobuf"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1619
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static generateUniqueId(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;
    .locals 1
    .parameter "settingsSecure"

    .prologue
    .line 1382
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
    .line 1897
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

    .line 1898
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1902
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
    .line 1956
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1957
    .local v1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v5

    .local v5, n:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1958
    invoke-virtual {p0, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 1959
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    const/4 v4, 0x0

    .local v4, ii:I
    array-length v6, p1

    .local v6, nn:I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 1960
    aget-object v2, p1, v4

    .line 1961
    .local v2, contentType:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1962
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1959
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1957
    .end local v2           #contentType:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1966
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

    .line 971
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 974
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    .local v8, select:Ljava/lang/StringBuilder;
    const-string v0, "is_deleted==0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v0, "bundle_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    const-string v0, "bundle_cover_status!=0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 987
    .local v4, selectArgs:[Ljava/lang/String;
    const-string v5, "display_time DESC"

    .line 990
    .local v5, orderBy:Ljava/lang/String;
    const/4 v7, 0x0

    .line 992
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 994
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 995
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    .line 996
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

    .line 997
    .local v9, status:Ljava/lang/Integer;
    if-eqz v6, :cond_0

    if-nez v9, :cond_3

    .line 1003
    :cond_0
    if-eqz v7, :cond_1

    .line 1004
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    .line 1007
    .end local v6           #cover:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v9           #status:Ljava/lang/Integer;
    :cond_2
    :goto_0
    return-object v0

    .line 1000
    .restart local v6       #cover:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v9       #status:Ljava/lang/Integer;
    :cond_3
    :try_start_1
    invoke-static {v6, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1003
    if-eqz v7, :cond_2

    .line 1004
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1003
    .end local v6           #cover:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v9           #status:Ljava/lang/Integer;
    :cond_4
    if-eqz v7, :cond_5

    .line 1004
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v10

    .line 1007
    goto :goto_0

    .line 1003
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 1004
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getBundleCoverStatus(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 786
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

    .line 1355
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasNotification()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return-wide v0

    .line 1358
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getNotification()Lcom/google/googlex/glass/common/proto/NotificationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->hasDeliveryTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1361
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
    .line 1369
    if-nez p0, :cond_0

    .line 1370
    const-wide/16 v0, 0x0

    .line 1372
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

.method public static getItemLoaderSelectArgs(J)[Ljava/lang/String;
    .locals 3
    .parameter "maxItemTimestamp"

    .prologue
    .line 846
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, maxItemTimestampString:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static getLocalTimelineItemSource(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;
    .locals 3
    .parameter "settingsSecure"

    .prologue
    .line 235
    const-string v1, "device:"

    .line 236
    .local v1, prefix:Ljava/lang/String;
    const-string v2, "android_id"

    invoke-virtual {p0, v2}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
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
    .line 728
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
    .line 769
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
    .line 246
    if-nez p0, :cond_1

    .line 247
    const/4 p0, 0x0

    .line 258
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 250
    .restart local p0
    :cond_1
    const-string v0, "device:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    const-string p0, "device:***"

    goto :goto_0

    .line 254
    :cond_2
    const-string v0, "companion:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string p0, "companion:***"

    goto :goto_0
.end method

.method public static getThumbnailFilename(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/String;
    .locals 3
    .parameter "attachment"

    .prologue
    .line 1690
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1691
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1695
    :goto_0
    return-object v0

    .line 1692
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1693
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1695
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
    .line 1326
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1328
    const/4 v6, 0x0

    .line 1330
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

    .line 1331
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1333
    if-eqz v6, :cond_0

    .line 1334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 1333
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 1334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static goToBundle(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "isNotification"

    .prologue
    .line 1806
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_GO_TO_BUNDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1807
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1808
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1809
    const-string v1, "is_notification"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1810
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1811
    return-void
.end method

.method public static goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1775
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1776
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 1777
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1779
    :cond_0
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1780
    return-void
.end method

.method public static goToTimelineHome(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1767
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 1768
    return-void
.end method

.method public static goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 1789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1790
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1791
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1792
    if-eqz p1, :cond_0

    .line 1793
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1795
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1796
    return-void
.end method

.method public static varargs hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z
    .locals 4
    .parameter "item"
    .parameter "contentTypes"

    .prologue
    .line 1867
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1868
    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 1869
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/glass/timeline/TimelineHelper;->isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1870
    const/4 v3, 0x1

    .line 1873
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :goto_1
    return v3

    .line 1867
    .restart local v0       #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1873
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1971
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
    .line 1915
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItemCount()I

    move-result v4

    .local v4, n:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 1916
    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItem(I)Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v2

    .line 1917
    .local v2, menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    const/4 v1, 0x0

    .local v1, ii:I
    array-length v5, p1

    .local v5, nn:I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 1918
    aget-object v3, p1, v1

    .line 1919
    .local v3, menuItemAction:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1920
    const/4 v6, 0x1

    .line 1924
    .end local v1           #ii:I
    .end local v2           #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    .end local v3           #menuItemAction:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    .end local v5           #nn:I
    :goto_2
    return v6

    .line 1917
    .restart local v1       #ii:I
    .restart local v2       #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    .restart local v3       #menuItemAction:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    .restart local v5       #nn:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1915
    .end local v3           #menuItemAction:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1924
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
    .line 1936
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItemCount()I

    move-result v4

    .local v4, n:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 1937
    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItem(I)Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v3

    .line 1938
    .local v3, menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    const/4 v2, 0x0

    .local v2, ii:I
    array-length v5, p1

    .local v5, nn:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 1939
    aget-object v0, p1, v2

    .line 1940
    .local v0, broadcastAction:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1941
    const/4 v6, 0x1

    .line 1945
    .end local v0           #broadcastAction:Ljava/lang/String;
    .end local v2           #ii:I
    .end local v3           #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    .end local v5           #nn:I
    :goto_2
    return v6

    .line 1938
    .restart local v0       #broadcastAction:Ljava/lang/String;
    .restart local v2       #ii:I
    .restart local v3       #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    .restart local v5       #nn:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1936
    .end local v0           #broadcastAction:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1945
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

    .line 1656
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1657
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    .line 1658
    .local v1, source:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1659
    invoke-static {v1}, Lcom/google/glass/companion/CompanionUtils;->getComponentFromSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1660
    .local v0, component:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1669
    .end local v0           #component:Ljava/lang/String;
    .end local v1           #source:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1663
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
    .line 1855
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
    .line 1881
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1882
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1883
    const/4 v4, 0x1

    .line 1886
    .end local v1           #contentType:Ljava/lang/String;
    :goto_1
    return v4

    .line 1881
    .restart local v1       #contentType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1886
    .end local v1           #contentType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isSyncingToCloud(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1630
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
    .line 1647
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
    .line 1683
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

    .line 1511
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1512
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

    .line 1543
    :cond_1
    :goto_0
    return v0

    .line 1517
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1518
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

    .line 1519
    goto :goto_0

    .line 1523
    :cond_3
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1524
    .local v2, idColumnIndex:I
    const-string v6, "is_deleted"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1525
    .local v4, isDeletedColumnIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_5

    .line 1526
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1527
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1530
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1531
    .local v3, isDeleted:I
    if-eqz v3, :cond_1

    .line 1534
    sget-object v6, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v7, "Found item, but it is deleted. Ignoring the item."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1535
    goto :goto_0

    .line 1539
    .end local v3           #isDeleted:I
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_6

    .end local v1           #id:Ljava/lang/String;
    :cond_5
    move v0, v5

    .line 1543
    goto :goto_0

    .line 1525
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
    .line 1096
    .local p0, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1097
    :cond_0
    const/4 v0, -0x1

    .line 1108
    :cond_1
    :goto_0
    return v0

    .line 1101
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1102
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsBundleCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1108
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static populateLocation(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)V
    .locals 7
    .parameter "context"
    .parameter "source"
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1843
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->isRunningOnCompanion(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1844
    sget-object v3, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v4, "Not populating location on Companion"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_0
    :goto_0
    return-void

    .line 1846
    :cond_1
    invoke-static {}, Lcom/google/glass/location/LocationHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 1847
    .local v0, location:Landroid/location/Location;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1848
    .local v1, now:J
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v5, 0x1b7740

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1849
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
    .line 1252
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1253
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

    .line 1262
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1263
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

.method public static readMore(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1821
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_GO_TO_BUNDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1822
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1823
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1824
    const-string v1, "read_more"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1825
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1826
    return-void
.end method

.method private static removeFileFromMediaStore(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Attachment;)V
    .locals 10
    .parameter "context"
    .parameter "attachment"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 455
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    const-string v0, "image/jpeg"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 461
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 469
    .local v1, contentUri:Landroid/net/Uri;
    :goto_1
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "_data"

    aput-object v0, v2, v9

    .line 473
    .local v2, fields:[Ljava/lang/String;
    const-string v3, "_data=?"

    .line 474
    .local v3, select:Ljava/lang/String;
    const/4 v6, 0x0

    .line 476
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

    .line 478
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 479
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 480
    .local v7, id:I
    int-to-long v4, v7

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 481
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v8, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 478
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 484
    .end local v7           #id:I
    .end local v8           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 462
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

    .line 463
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #contentUri:Landroid/net/Uri;
    goto :goto_1

    .line 484
    .restart local v2       #fields:[Ljava/lang/String;
    .restart local v3       #select:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_4
    if-eqz v6, :cond_0

    .line 485
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

    .line 1190
    if-eq p1, p2, :cond_1

    move v0, v1

    .line 1198
    :cond_0
    :goto_0
    return v0

    .line 1195
    :cond_1
    if-eqz p3, :cond_3

    .line 1196
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

    .line 1198
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

.method private static startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 1978
    if-eqz p0, :cond_0

    .line 1979
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->startSuppressNotifyChange()V

    .line 1981
    :cond_0
    return-void
.end method

.method private static stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 1985
    if-eqz p0, :cond_0

    .line 1986
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->stopSuppressNotifyChange()V

    .line 1988
    :cond_0
    return-void
.end method

.method public static toContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Landroid/content/ContentValues;
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 706
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 707
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v1, "creation_time"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreationTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 709
    const-string v1, "modified_time"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 710
    const-string v1, "display_time"

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 711
    const-string v1, "delivery_time"

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 712
    const-string v1, "pin_time"

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 713
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

    .line 715
    const-string v4, "is_deleted"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 716
    const-string v1, "sync_status"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 717
    const-string v1, "sync_protocol"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
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

    .line 720
    const-string v1, "bundle_cover_status"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsBundleCover()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    const-string v2, "source"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v1, "protobuf_blob"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 724
    return-object v0

    .line 713
    :cond_0
    const v1, 0x7fffffff

    goto :goto_0

    :cond_1
    move v1, v3

    .line 715
    goto :goto_1

    .line 718
    :cond_2
    const-string v1, ""

    goto :goto_2

    :cond_3
    move v2, v3

    .line 720
    goto :goto_3

    .line 722
    :cond_4
    const-string v1, ""

    goto :goto_4
.end method

.method private static toContentValues(Lcom/google/googlex/glass/common/proto/UserAction;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "action"
    .parameter "timelineItemId"

    .prologue
    .line 736
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 737
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "action_type"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction;->getType()Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/UserAction$Type;->getNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 738
    const-string v1, "timeline_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction;->hasPayload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    const-string v1, "payload"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/UserAction;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_0
    return-object v0
.end method

.method static updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 19
    .parameter "resolver"
    .parameter "bundleId"
    .parameter "clearPin"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1022
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1025
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v2, "Cannot bundle items with empty bundle ID."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :goto_0
    return-void

    .line 1029
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

    .line 1033
    sget-object v18, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v18

    .line 1036
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1037
    .local v17, select:Ljava/lang/StringBuilder;
    const-string v1, "+is_deleted==0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    const-string v1, "bundle_id==?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1047
    .local v5, selectArgs:[Ljava/lang/String;
    const-string v6, "display_time DESC"

    .line 1050
    .local v6, orderBy:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    .local v8, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    .local v9, currentBundleCoverStatuses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .line 1053
    .local v11, isBundlePinned:Z
    const-wide/16 v12, -0x1

    .line 1054
    .local v12, bundlePinTime:J
    const/4 v15, 0x0

    .line 1056
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1058
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1061
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

    .line 1078
    if-eqz v15, :cond_2

    .line 1079
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v18

    goto/16 :goto_0

    .line 1086
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

    .line 1064
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

    .line 1066
    .local v14, bundleCoverStatusColumn:I
    :cond_4
    invoke-static {v15}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v16

    .line 1067
    .local v16, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    if-nez p2, :cond_5

    .line 1073
    invoke-virtual/range {v16 .. v16}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v1

    or-int/2addr v11, v1

    .line 1074
    invoke-static/range {v16 .. v16}, Lcom/google/glass/timeline/TimelineHelper;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v1

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 1076
    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-nez v1, :cond_4

    .line 1078
    if-eqz v15, :cond_6

    .line 1079
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1084
    :cond_6
    invoke-static {v8}, Lcom/google/glass/timeline/TimelineHelper;->pickBundleCover(Ljava/util/List;)I

    move-result v10

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v13}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;IZJ)V

    .line 1086
    monitor-exit v18

    goto/16 :goto_0

    .line 1078
    .end local v14           #bundleCoverStatusColumn:I
    .end local v16           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :catchall_1
    move-exception v1

    if-eqz v15, :cond_7

    .line 1079
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

    .line 1224
    if-eqz p3, :cond_2

    .line 1225
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-eqz v2, :cond_1

    .line 1226
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

    .line 1241
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1242
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "bundle_cover_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1243
    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1244
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1245
    return-void

    .line 1232
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasPinTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1233
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
    .line 1126
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

    .line 1128
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1132
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 1133
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1134
    .local v1, currentBundleCoverStatus:I
    const/4 v2, 0x3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1136
    const/4 v4, 0x3

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;IZJ)V

    .line 1182
    .end local v0           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v1           #currentBundleCoverStatus:I
    :cond_0
    return-void

    .line 1126
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1140
    :cond_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_0

    .line 1141
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 1142
    .restart local v0       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1144
    .restart local v1       #currentBundleCoverStatus:I
    if-ne v8, p3, :cond_5

    .line 1147
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsBundleCover()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1148
    const/4 v2, 0x1

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1150
    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;IZJ)V

    .line 1140
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1154
    :cond_4
    const/4 v2, 0x2

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1156
    const/4 v4, 0x2

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;IZJ)V

    goto :goto_2

    .line 1163
    :cond_5
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsBundleCover()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1167
    const/4 v2, 0x1

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1169
    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;IZJ)V

    goto :goto_2

    .line 1173
    :cond_6
    const/4 v2, 0x0

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1175
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineItem;IZJ)V

    goto :goto_2
.end method


# virtual methods
.method public bulkInsertTimelineItem(Landroid/content/Context;Ljava/util/List;)I
    .locals 12
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
    const/4 v7, 0x0

    .line 329
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 331
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 367
    :goto_0
    return v7

    .line 336
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 338
    .local v1, bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    new-array v8, v9, [Landroid/content/ContentValues;

    .line 339
    .local v8, values:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 340
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 341
    .local v4, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget-object v9, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Preparing to insert timeline item with ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {v4}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Landroid/content/ContentValues;

    move-result-object v9

    aput-object v9, v8, v2

    .line 345
    invoke-static {v4}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 346
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 352
    .end local v4           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 353
    .local v6, resolver:Landroid/content/ContentResolver;
    const-string v9, "com.google.glass.timeline"

    invoke-virtual {v6, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v5

    check-cast v5, Lcom/google/glass/timeline/TimelineProvider;

    .line 355
    .local v5, provider:Lcom/google/glass/timeline/TimelineProvider;
    invoke-static {v5}, Lcom/google/glass/timeline/TimelineHelper;->startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 357
    :try_start_0
    sget-object v9, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v7

    .line 361
    .local v7, result:I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    .local v0, bundleId:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v6, v0, v9}, Lcom/google/glass/timeline/TimelineHelper;->updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 367
    .end local v0           #bundleId:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #result:I
    :catchall_0
    move-exception v9

    invoke-static {v5}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v9

    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v7       #result:I
    :cond_3
    invoke-static {v5}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    goto/16 :goto_0
.end method

.method public createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 2
    .parameter "context"
    .parameter "settingsSecure"

    .prologue
    .line 203
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
    .line 691
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 692
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 693
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 694
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

    .line 696
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

    .line 699
    .end local v0           #count:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public deleteTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 7
    .parameter "context"
    .parameter "item"

    .prologue
    .line 397
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 400
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 401
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

    .line 446
    :cond_0
    return-void

    .line 405
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

    .line 408
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

    .line 419
    .local v3, tombstone:Lcom/google/googlex/glass/common/proto/TimelineItem;
    new-instance v4, Lcom/google/glass/timeline/TimelineHelper$2;

    invoke-direct {v4, p0, p1, v3}, Lcom/google/glass/timeline/TimelineHelper$2;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {v4}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 429
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

    .line 430
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 435
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, clientCachePath:Ljava/lang/String;
    sget-object v4, Lcom/google/glass/app/GlassApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 437
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

    .line 438
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 439
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

    .line 441
    :cond_3
    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineHelper;->removeFileFromMediaStore(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Attachment;)V

    goto :goto_0
.end method

.method public deleteTimelineItemAsync(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 511
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/timeline/TimelineHelper$4;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 517
    return-void
.end method

.method public deleteTimelineItemAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "itemId"

    .prologue
    .line 494
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/timeline/TimelineHelper$3;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 505
    return-void
.end method

.method public getPendingActions(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    .locals 15
    .parameter "context"
    .parameter "timelineItemId"

    .prologue
    .line 653
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 655
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 657
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v8

    .line 658
    .local v8, builder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/googlex/glass/common/proto/UserAction;>;"
    const-wide/16 v10, 0x0

    .line 659
    .local v10, maxRowId:J
    invoke-static/range {p2 .. p2}, Lcom/google/glass/timeline/TimelineProvider;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 661
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 662
    const-string v2, "action_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/googlex/glass/common/proto/UserAction$Type;->valueOf(I)Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v14

    .line 664
    .local v14, type:Lcom/google/googlex/glass/common/proto/UserAction$Type;
    if-eqz v14, :cond_1

    .line 665
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v7

    .line 666
    .local v7, action:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    const-string v2, "payload"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 667
    .local v12, payload:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 668
    invoke-virtual {v7, v12}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    .line 670
    :cond_0
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 672
    .end local v7           #action:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .end local v12           #payload:Ljava/lang/String;
    :cond_1
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 673
    goto :goto_0

    .line 674
    .end local v14           #type:Lcom/google/googlex/glass/common/proto/UserAction$Type;
    :cond_2
    new-instance v13, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v13, v2, v10, v11, v3}, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;-><init>(Ljava/util/List;JLcom/google/glass/timeline/TimelineHelper$1;)V

    .line 675
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

    .line 678
    if-eqz v9, :cond_3

    .line 679
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v13

    .line 678
    .end local v8           #builder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/googlex/glass/common/proto/UserAction;>;"
    .end local v10           #maxRowId:J
    .end local v13           #response:Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_4

    .line 679
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
    .line 1557
    .local p2, syncProtocols:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v9

    .line 1559
    .local v9, items:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1560
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    const-string v1, "No sync protocol(s) specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_1
    :goto_0
    return-object v9

    .line 1564
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

    .line 1566
    const/4 v6, 0x0

    .line 1570
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1571
    .local v10, selection:Ljava/lang/StringBuilder;
    const-string v0, "sync_status=0"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    const-string v0, "sync_protocol IN ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 1575
    if-lez v7, :cond_3

    .line 1576
    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    :cond_3
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getNumber()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1574
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1580
    :cond_4
    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "creation_time ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1590
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1591
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v8

    .line 1592
    .local v8, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz p3, :cond_6

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1593
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

    .line 1595
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v8}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1601
    .end local v7           #i:I
    .end local v8           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v10           #selection:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1602
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1597
    .restart local v7       #i:I
    .restart local v8       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v10       #selection:Ljava/lang/StringBuilder;
    :cond_6
    :try_start_1
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1601
    .end local v8           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_7
    if-eqz v6, :cond_1

    .line 1602
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;
    .locals 7
    .parameter "context"
    .parameter "item"
    .parameter "itemType"
    .parameter "action"

    .prologue
    .line 273
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 280
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "com.google.glass.timeline"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/TimelineProvider;

    .line 282
    .local v1, provider:Lcom/google/glass/timeline/TimelineProvider;
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineHelper;->startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 284
    :try_start_0
    sget-object v3, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 285
    .local v0, itemUri:Landroid/net/Uri;
    sget-object v4, Lcom/google/glass/timeline/TimelineHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserted timeline item [id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p4, :cond_3

    const-string v3, ""

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", itemType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-eqz p4, :cond_0

    .line 290
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineProvider;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/UserAction;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 296
    :cond_0
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_1
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 303
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    if-eq v3, v4, :cond_2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    if-eq v3, v4, :cond_2

    .line 305
    const-string v3, "com.google.glass.timeline"

    invoke-static {p1, v3}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    :cond_2
    new-instance v3, Lcom/google/glass/logging/UserEventHelper;

    invoke-direct {v3, p1}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_ITEM_INSERTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p3}, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 317
    return-object v0

    .line 285
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", action="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/google/googlex/glass/common/proto/UserAction;->getType()Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 300
    .end local v0           #itemUri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v3
.end method

.method public insertTimelineItemAsync(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)V
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "itemType"
    .parameter "action"

    .prologue
    .line 382
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper$1;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method

.method public queryTimelineItem(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 8
    .parameter "resolver"
    .parameter "itemUri"

    .prologue
    const/4 v7, 0x0

    .line 1301
    const/4 v6, 0x0

    .line 1303
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

    .line 1305
    if-nez v6, :cond_2

    .line 1315
    if-eqz v6, :cond_0

    .line 1316
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v7

    :cond_1
    :goto_0
    return-object v0

    .line 1309
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 1315
    if-eqz v6, :cond_3

    .line 1316
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v7

    goto :goto_0

    .line 1313
    :cond_4
    :try_start_2
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1315
    if-eqz v6, :cond_1

    .line 1316
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1315
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1316
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 8
    .parameter "resolver"
    .parameter "itemId"

    .prologue
    .line 1274
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1276
    const/4 v6, 0x0

    .line 1277
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1279
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

    .line 1286
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1290
    :cond_0
    if-eqz v6, :cond_1

    .line 1291
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1294
    :cond_1
    return-object v7

    .line 1290
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1291
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
    .line 559
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

    .line 561
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 563
    sget-object v9, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 564
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Cannot update without holding the UPDATE_LOCK"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 567
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 570
    .local v7, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v4

    .line 571
    .local v4, existing:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 574
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

    .line 575
    const/4 v9, 0x0

    .line 626
    :goto_0
    return-object v9

    .line 579
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 582
    .local v2, bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 583
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 589
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

    .line 595
    const-string v9, "com.google.glass.timeline"

    invoke-virtual {v7, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v6

    check-cast v6, Lcom/google/glass/timeline/TimelineProvider;

    .line 597
    .local v6, provider:Lcom/google/glass/timeline/TimelineProvider;
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 599
    :try_start_0
    sget-object v9, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 600
    .local v8, uri:Landroid/net/Uri;
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineItem;)Landroid/content/ContentValues;

    move-result-object v3

    .line 601
    .local v3, contentValues:Landroid/content/ContentValues;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v3, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 603
    if-eqz p3, :cond_3

    .line 604
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/glass/timeline/TimelineProvider;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {p3, v10}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/UserAction;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 609
    :cond_3
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 610
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 614
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

    .line 615
    .local v1, bundleId:Ljava/lang/String;
    move/from16 v0, p5

    invoke-static {v7, v1, v0}, Lcom/google/glass/timeline/TimelineHelper;->updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 618
    .end local v1           #bundleId:Ljava/lang/String;
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v9

    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v9

    .line 589
    .end local v6           #provider:Lcom/google/glass/timeline/TimelineProvider;
    :cond_5
    sget-object v9, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    goto :goto_1

    .line 618
    .restart local v3       #contentValues:Landroid/content/ContentValues;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #provider:Lcom/google/glass/timeline/TimelineProvider;
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_6
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 621
    if-nez p4, :cond_7

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v9

    sget-object v10, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    if-eq v9, v10, :cond_7

    .line 622
    const-string v9, "com.google.glass.timeline"

    invoke-static {p1, v9}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    move-object v9, p2

    .line 626
    goto/16 :goto_0
.end method
