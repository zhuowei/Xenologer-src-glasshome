.class public Lcom/google/glass/timeline/TimelineProvider;
.super Landroid/content/ContentProvider;
.source "TimelineProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;,
        Lcom/google/glass/timeline/TimelineProvider$PendingActionColumns;,
        Lcom/google/glass/timeline/TimelineProvider$TimelineColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.glass.timeline"

.field private static final BASE_URI:Landroid/net/Uri; = null

.field public static final BUNDLE_COVER_EXPLICIT:I = 0x1

.field public static final BUNDLE_COVER_NONE:I = 0x0

.field public static final BUNDLE_COVER_SINGLE:I = 0x3

.field public static final BUNDLE_COVER_STANDIN:I = 0x2

.field private static final DATABASE_NAME:Ljava/lang/String; = "timeline.db"

.field private static final DATABASE_UPGRADE_BATCH_SIZE:I = 0x64

.field private static final DATABASE_VERSION:I = 0x15

.field static final DEFAULT_PIN_SCORE:I = 0x7fffffff

.field private static final MATCH_PENDING_ACTIONS_BY_TIMELINE_ID:I = 0x3

.field private static final MATCH_TIMELINE:I = 0x1

.field private static final MATCH_TIMELINE_BY_ID:I = 0x2

.field private static final MAX_SYNCED_ITEM_MIGRATION:I = 0x3e8

.field private static final PENDING_ACTION_DELETE_TIMELINE_ID_TRIGGER:Ljava/lang/String; = "t_pending_actions_delete_timeline_id"

.field private static final PENDING_ACTION_TABLE:Ljava/lang/String; = "pending_actions"

.field private static final PENDING_ACTION_TIMELINE_ID_INDEX:Ljava/lang/String; = "ix_pending_actions_timeline_id"

.field private static final PENDING_ACTION_TYPE:Ljava/lang/String; = "vnd.com.google.glass.timeline.pending_action"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TIMELINE_BUNDLE_COVER_STATUS_INDEX:Ljava/lang/String; = "ix_timeline_bundle_cover_status"

.field private static final TIMELINE_BUNDLE_ID_INDEX:Ljava/lang/String; = "ix_timeline_bundle_id"

.field private static final TIMELINE_CLOUD_SYNC_STATUS_SYNC_PROTOCOL_INDEX:Ljava/lang/String; = "ix_timeline_sync_status_sync_protocol"

.field private static final TIMELINE_DELIVERY_TIME_INDEX:Ljava/lang/String; = "ix_timeline_delivery_time"

.field private static final TIMELINE_DISPLAY_TIME_INDEX:Ljava/lang/String; = "ix_timeline_display_time"

.field private static final TIMELINE_IS_DELETED_INDEX:Ljava/lang/String; = "ix_timeline_is_deleted"

.field private static final TIMELINE_PIN_SCORE_INDEX:Ljava/lang/String; = "ix_timeline_pin_score"

.field private static final TIMELINE_PIN_TIME_INDEX:Ljava/lang/String; = "ix_timeline_pin_time"

.field private static final TIMELINE_SOURCE_INDEX:Ljava/lang/String; = "ix_timeline_source"

.field private static final TIMELINE_TABLE:Ljava/lang/String; = "timeline"

.field private static final TIMELINE_TYPE:Ljava/lang/String; = "vnd.com.google.glass.timeline"

.field public static final TIMELINE_URI:Landroid/net/Uri; = null

.field static final UNPINNED_ITEM_PIN_TIME:J = -0x1L

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

.field private suppressCount:I

.field private suppressedNotifyUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    const-class v0, Lcom/google/glass/timeline/TimelineProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    .line 144
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.glass.timeline"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineProvider;->BASE_URI:Landroid/net/Uri;

    .line 150
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "timeline"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    .line 165
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 168
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.timeline"

    const-string v2, "timeline"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.timeline"

    const-string v2, "timeline/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.timeline"

    const-string v2, "timeline/*/pending_actions"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 264
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private deleteSomeOldestItems()Z
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 691
    const/4 v6, 0x0

    .line 693
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "display_time ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 696
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 697
    .local v11, totalCount:I
    div-int/lit8 v9, v11, 0xa

    .line 699
    .local v9, lastIndexToDelete:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    const-string v0, "display_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 701
    .local v7, displayTime:J
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const-string v1, "display_time<=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/timeline/TimelineProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 703
    .local v10, numDeleted:I
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    if-lez v10, :cond_1

    move v0, v12

    .line 707
    :goto_0
    if-eqz v6, :cond_0

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 711
    .end local v7           #displayTime:J
    .end local v10           #numDeleted:I
    :cond_0
    :goto_1
    return v0

    .restart local v7       #displayTime:J
    .restart local v10       #numDeleted:I
    :cond_1
    move v0, v13

    .line 704
    goto :goto_0

    .line 707
    .end local v7           #displayTime:J
    .end local v10           #numDeleted:I
    :cond_2
    if-eqz v6, :cond_3

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v13

    .line 711
    goto :goto_1

    .line 707
    .end local v9           #lastIndexToDelete:I
    .end local v11           #totalCount:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "timelineItemId"

    .prologue
    .line 158
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pending_actions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private insertInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 568
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 574
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to insert into URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineProvider;->insertTimelineItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 572
    :goto_0
    return-object v0

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/google/glass/timeline/TimelineProvider;->insertPendingAction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 568
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private insertPendingAction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 736
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/glass/util/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 737
    const-string v6, "action_type"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 738
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 739
    .local v4, timelineItemId:Ljava/lang/String;
    const-string v6, "timeline_id"

    invoke-virtual {p2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :try_start_0
    sget-object v6, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserting pending action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "action_type"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineProvider;->dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 744
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "pending_actions"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 745
    .local v2, rowId:J
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 748
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #rowId:J
    :goto_0
    return-object v5

    .line 746
    :catch_0
    move-exception v1

    .line 747
    .local v1, e:Landroid/database/SQLException;
    invoke-direct {p0, v1, p1, p2}, Lcom/google/glass/timeline/TimelineProvider;->logAndThrow(Landroid/database/SQLException;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private insertTimelineItem(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 593
    const/4 v3, 0x2

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/google/glass/timeline/TimelineProvider;->insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 594
    .local v1, rowId:J
    sget-object v3, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserted new timeline item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 600
    sget-object v3, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 595
    .end local v1           #rowId:J
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineProvider;->overwriteTimelineItemIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v1

    .restart local v1       #rowId:J
    goto :goto_0

    .line 602
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_0
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Row not inserted for URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J
    .locals 5
    .parameter "db"
    .parameter "uri"
    .parameter "values"
    .parameter "algorithm"

    .prologue
    .line 670
    const-wide/16 v1, 0x0

    .line 672
    .local v1, rowId:J
    :try_start_0
    const-string v3, "timeline"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    :goto_0
    move-wide v3, v1

    .line 682
    :goto_1
    return-wide v3

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineProvider;->deleteSomeOldestItems()Z

    move-result v3

    if-nez v3, :cond_0

    .line 675
    invoke-direct {p0, v0, p2, p3}, Lcom/google/glass/timeline/TimelineProvider;->logAndThrow(Landroid/database/SQLException;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 678
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/timeline/TimelineProvider;->insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J

    move-result-wide v3

    goto :goto_1

    .line 679
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 680
    .local v0, e:Landroid/database/SQLException;
    invoke-direct {p0, v0, p2, p3}, Lcom/google/glass/timeline/TimelineProvider;->logAndThrow(Landroid/database/SQLException;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private logAndThrow(Landroid/database/SQLException;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "e"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 722
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception inserting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    throw p1
.end method

.method private mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "isDelete"

    .prologue
    .line 765
    new-instance v4, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v4, p3, p4}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 768
    .local v4, sb:Lcom/google/glass/util/SelectionBuilder;
    sget-object v6, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 769
    .local v3, match:I
    packed-switch v3, :pswitch_data_0

    .line 783
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to update or delete URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 771
    :pswitch_0
    const-string v5, "timeline"

    .line 786
    .local v5, table:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineProvider;->dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 788
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_1

    .line 789
    invoke-virtual {v4}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 801
    .local v0, count:I
    :goto_1
    if-lez v0, :cond_0

    .line 802
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineProvider;->notifyChange(Landroid/net/Uri;)V

    .line 804
    .end local v0           #count:I
    :cond_0
    :goto_2
    return v0

    .line 774
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #table:Ljava/lang/String;
    :pswitch_1
    const-string v5, "timeline"

    .line 775
    .restart local v5       #table:Ljava/lang/String;
    const-string v6, "_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 778
    .end local v5           #table:Ljava/lang/String;
    :pswitch_2
    const-string v5, "pending_actions"

    .line 779
    .restart local v5       #table:Ljava/lang/String;
    const-string v7, "timeline_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 792
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, p2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .restart local v0       #count:I
    goto :goto_1

    .line 793
    .end local v0           #count:I
    :catch_0
    move-exception v2

    .line 794
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineProvider;->deleteSomeOldestItems()Z

    move-result v6

    if-nez v6, :cond_2

    .line 795
    throw v2

    .line 798
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/timeline/TimelineProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto :goto_2

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private overwriteTimelineItemIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 18
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 615
    const-wide/16 v16, 0x0

    .line 616
    .local v16, rowId:J
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const-string v6, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 617
    .local v5, existingUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 619
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v4, 0x2

    :try_start_0
    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "modified_time"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "is_deleted"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/google/glass/timeline/TimelineProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 621
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 622
    const-string v4, "is_deleted"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 623
    .local v13, isDeleted:I
    if-lez v13, :cond_1

    .line 624
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insert ignored for timeline item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because it is already deleted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    const-wide/16 v6, 0x1

    .line 653
    if-eqz v10, :cond_0

    .line 654
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 657
    .end local v13           #isDeleted:I
    :cond_0
    :goto_0
    return-wide v6

    .line 629
    .restart local v13       #isDeleted:I
    :cond_1
    :try_start_1
    const-string v4, "is_deleted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 630
    .local v14, isDeletion:Ljava/lang/Integer;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    .line 631
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/timeline/TimelineProvider;->insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J

    move-result-wide v16

    .line 632
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overwrote timeline item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because it is now deleted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    if-eqz v10, :cond_2

    .line 654
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide/from16 v6, v16

    goto :goto_0

    .line 637
    :cond_3
    :try_start_2
    const-string v4, "modified_time"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 639
    .local v11, existingModifiedTime:J
    const-string v4, "modified_time"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    .line 640
    .local v15, modifiedTime:Ljava/lang/Long;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v11

    if-lez v4, :cond_6

    .line 641
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/timeline/TimelineProvider;->insertTimelineItemWithConflictAlgorithm(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;I)J

    move-result-wide v16

    .line 642
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overwrote timeline item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because existing modified time ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") < new modified time ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 653
    .end local v11           #existingModifiedTime:J
    .end local v13           #isDeleted:I
    .end local v14           #isDeletion:Ljava/lang/Integer;
    .end local v15           #modifiedTime:Ljava/lang/Long;
    :cond_4
    :goto_1
    if-eqz v10, :cond_5

    .line 654
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide/from16 v6, v16

    .line 657
    goto/16 :goto_0

    .line 646
    .restart local v11       #existingModifiedTime:J
    .restart local v13       #isDeleted:I
    .restart local v14       #isDeletion:Ljava/lang/Integer;
    .restart local v15       #modifiedTime:Ljava/lang/Long;
    :cond_6
    :try_start_3
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insert ignored for timeline item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because existing modified time ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") >= new modified time ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 649
    const-wide/16 v16, 0x1

    goto :goto_1

    .line 653
    .end local v11           #existingModifiedTime:J
    .end local v13           #isDeleted:I
    .end local v14           #isDeletion:Ljava/lang/Integer;
    .end local v15           #modifiedTime:Ljava/lang/Long;
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_7

    .line 654
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 543
    const/4 v3, 0x0

    .line 545
    .local v3, numInserts:I
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineProvider;->dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 546
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 548
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    array-length v4, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v4, :cond_0

    .line 550
    :try_start_1
    aget-object v4, p2, v2

    invoke-direct {p0, v0, p1, v4}, Lcom/google/glass/timeline/TimelineProvider;->insertInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 551
    add-int/lit8 v3, v3, 0x1

    .line 548
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :catch_0
    move-exception v1

    .line 553
    .local v1, e:Landroid/database/SQLException;
    :try_start_2
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v2

    const-string v7, "_id"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 558
    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 556
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 558
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 562
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineProvider;->notifyChange(Landroid/net/Uri;)V

    .line 564
    return v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 754
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 486
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 487
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 495
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 489
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.com.google.glass.timeline"

    goto :goto_0

    .line 491
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.com.google.glass.timeline"

    goto :goto_0

    .line 493
    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/vnd.com.google.glass.timeline.pending_action"

    goto :goto_0

    .line 487
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 531
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineProvider;->dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 532
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0, p1, p2}, Lcom/google/glass/timeline/TimelineProvider;->insertInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 533
    .local v1, resultUri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineProvider;->notifyChange(Landroid/net/Uri;)V

    .line 534
    return-object v1
.end method

.method notifyChange(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 814
    iget v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    if-lez v0, :cond_2

    .line 817
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 818
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    goto :goto_0

    .line 824
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineProvider;->notifyChangeInternal(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method notifyChangeInternal(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 829
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 830
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.google.glass.timeline"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 831
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 480
    new-instance v0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineProvider;->dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 501
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 502
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v10, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v10, p3, p4}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 504
    .local v10, sb:Lcom/google/glass/util/SelectionBuilder;
    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 505
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 519
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to query URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 507
    :pswitch_0
    const-string v2, "timeline"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 522
    :goto_0
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineProvider;->dbHelper:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 523
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v10}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 525
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 526
    return-object v8

    .line 510
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "timeline"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 511
    const-string v2, "_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :pswitch_2
    const-string v2, "pending_actions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 515
    const-string v3, "timeline_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startSuppressNotifyChange()V
    .locals 1

    .prologue
    .line 835
    iget v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    .line 836
    return-void
.end method

.method public stopSuppressNotifyChange()V
    .locals 2

    .prologue
    .line 843
    iget v1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    .line 844
    iget v1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 845
    iget v1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 846
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    .line 847
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/timeline/TimelineProvider;->suppressedNotifyUri:Landroid/net/Uri;

    .line 848
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineProvider;->notifyChangeInternal(Landroid/net/Uri;)V

    .line 850
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 844
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 759
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method
