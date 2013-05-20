.class Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;
.super Ljava/lang/Object;
.source "TimelineProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private migrate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "db"
    .parameter "tempTimelineTable"
    .parameter "selection"
    .parameter "orderBy"

    .prologue
    .line 405
    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migrating selection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 407
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 408
    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Migration query returned null cursor."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    :try_start_0
    new-instance v12, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v12}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    .line 413
    .local v12, timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v11, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    const/4 v9, 0x0

    .line 418
    .local v9, count:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 419
    .local v13, total:I
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 420
    invoke-static {v10}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v9, v9, 0x1

    .line 423
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 424
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    iget-object v1, v1, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->context:Landroid/content/Context;

    invoke-virtual {v12, v1, v11}, Lcom/google/glass/timeline/TimelineHelper;->bulkInsertTimelineItem(Landroid/content/Context;Ljava/util/List;)I

    .line 425
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 427
    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have migrated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 435
    .end local v9           #count:I
    .end local v11           #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    .end local v12           #timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    .end local v13           #total:I
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_3

    .line 436
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 430
    .restart local v9       #count:I
    .restart local v11       #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    .restart local v12       #timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    .restart local v13       #total:I
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;

    iget-object v1, v1, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper;->context:Landroid/content/Context;

    invoke-virtual {v12, v1, v11}, Lcom/google/glass/timeline/TimelineHelper;->bulkInsertTimelineItem(Landroid/content/Context;Ljava/util/List;)I

    .line 431
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 433
    invoke-static {}, Lcom/google/glass/timeline/TimelineProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Have migrated all items."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    if-eqz v10, :cond_0

    .line 436
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "temp_timeline"

    const-string v2, "sync_status!=1"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->migrate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "temp_timeline"

    const-string v2, "sync_status=1"

    const-string v3, "display_time DESC LIMIT 1000"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->migrate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS temp_timeline"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 401
    return-void

    .line 399
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS temp_timeline"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw v0
.end method
