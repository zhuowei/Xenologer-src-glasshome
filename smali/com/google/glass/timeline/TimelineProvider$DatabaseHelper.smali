.class Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TimelineProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/TimelineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 309
    const-string v0, "timeline.db"

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 310
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->context:Landroid/content/Context;

    .line 311
    return-void
.end method

.method private createEntityTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 382
    const-string v0, "CREATE TABLE entity (_id INTEGER PRIMARY KEY,entityId TEXT,entityType INTEGER,timelineId TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 389
    const-string v0, "CREATE INDEX ix_entity_entityid ON entity(entityId);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method private createPendingActionsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 365
    const-string v0, "CREATE TABLE IF NOT EXISTS pending_actions (_id INTEGER PRIMARY KEY AUTOINCREMENT,timeline_id TEXT NOT NULL,action_type INTEGER NOT NULL,payload TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 370
    const-string v0, "CREATE INDEX IF NOT EXISTS ix_pending_actions_timeline_id ON pending_actions(timeline_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    const-string v0, "CREATE TRIGGER IF NOT EXISTS t_pending_actions_delete_timeline_id DELETE ON timeline BEGIN DELETE FROM pending_actions WHERE timeline_id=old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method private createTimelineTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 323
    const-string v0, "CREATE TABLE timeline (_id TEXT PRIMARY KEY,creation_time INTEGER,modified_time INTEGER,display_time INTEGER,delivery_time INTEGER,pin_time INTEGER DEFAULT -1,pin_score INTEGER DEFAULT 2147483647,is_deleted INTEGER DEFAULT 0,sync_status INTEGER DEFAULT 0,sync_protocol INTEGER DEFAULT 0,bundle_id TEXT DEFAULT \"\",bundle_cover_status INTEGER DEFAULT 0,source TEXT DEFAULT \"\",protobuf_blob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    const-string v0, "CREATE INDEX ix_timeline_display_time ON timeline(display_time);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    const-string v0, "CREATE INDEX ix_timeline_delivery_time ON timeline(delivery_time);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 346
    const-string v0, "CREATE INDEX ix_timeline_pin_time ON timeline(pin_time);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    const-string v0, "CREATE INDEX ix_timeline_pin_score ON timeline(pin_score);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 350
    const-string v0, "CREATE INDEX ix_timeline_is_deleted ON timeline(is_deleted);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    const-string v0, "CREATE INDEX ix_timeline_sync_status_sync_protocol ON timeline(sync_status, sync_protocol);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 355
    const-string v0, "CREATE INDEX ix_timeline_bundle_id ON timeline(bundle_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    const-string v0, "CREATE INDEX ix_timeline_bundle_cover_status ON timeline(bundle_cover_status);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 359
    const-string v0, "CREATE INDEX ix_timeline_source ON timeline(source);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method private dropEntityTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 409
    const-string v0, "DROP TABLE IF EXISTS entity"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    const-string v0, "DROP INDEX IF EXISTS ix_entity_entityid"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private dropPendingActionsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 415
    const-string v0, "DROP TABLE IF EXISTS pending_actions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 416
    const-string v0, "DROP INDEX IF EXISTS ix_pending_actions_timeline_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 417
    const-string v0, "DROP TRIGGER IF EXISTS t_pending_actions_delete_timeline_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method private dropTimelineTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 395
    const-string v0, "DROP TABLE IF EXISTS timeline"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 396
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_display_time"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 397
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_delivery_time"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 398
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_pin_time"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 399
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_pin_score"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 400
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_is_deleted"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 401
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_sync_status_sync_protocol"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 402
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_bundle_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 403
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_bundle_cover_status"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 404
    const-string v0, "DROP INDEX IF EXISTS ix_timeline_source"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 405
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->createTimelineTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 316
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->createPendingActionsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 317
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->createEntityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 318
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 508
    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->dropTimelineTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->dropPendingActionsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 511
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->dropEntityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 512
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 513
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 517
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 522
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 523
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 422
    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v0, "temp_timeline"

    .line 427
    .local v0, tempTimelineTable:Ljava/lang/String;
    const-string v1, "DROP TABLE IF EXISTS temp_timeline"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 428
    const-string v1, "ALTER TABLE timeline RENAME TO temp_timeline;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->dropTimelineTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 432
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->createTimelineTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 434
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->dropEntityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 435
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->createEntityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 439
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->createPendingActionsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 442
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;-><init>(Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method
