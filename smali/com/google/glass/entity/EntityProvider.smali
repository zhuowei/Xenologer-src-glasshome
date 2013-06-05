.class public Lcom/google/glass/entity/EntityProvider;
.super Landroid/content/ContentProvider;
.source "EntityProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/EntityProvider$DatabaseHelper;,
        Lcom/google/glass/entity/EntityProvider$Columns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.glass.entity"

.field private static final BASE_URI:Landroid/net/Uri; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "entity.db"

.field private static final DATABASE_VERSION:I = 0x8

.field private static final ENTITY_EMAIL_INDEX:Ljava/lang/String; = "ix_entity_email"

.field private static final ENTITY_IS_COMMUNICATION_TARGET_INDEX:Ljava/lang/String; = "ix_entity_is_communication_target"

.field private static final ENTITY_IS_SHARE_TARGET_INDEX:Ljava/lang/String; = "ix_entity_is_share_target"

.field private static final ENTITY_PHONE_NUMBER_INDEX:Ljava/lang/String; = "ix_entity_phone_number"

.field private static final ENTITY_SHOULD_SYNC_INDEX:Ljava/lang/String; = "ix_entity_should_sync"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENTITY_SOURCE_INDEX:Ljava/lang/String; = "ix_entity_source"

.field private static final ENTITY_TABLE:Ljava/lang/String; = "entity"

.field private static final ENTITY_TYPE:Ljava/lang/String; = "vnd.com.google.glass.entity"

.field private static final LOG_QUERY:Z = false

.field private static final MATCH_ENTITY:I = 0x1

.field private static final MATCH_ENTITY_BY_ID:I = 0x2

.field private static final MATCH_PLUS_SHARE_ENTITIES:I = 0x3

.field private static final PLUS_SHARES_PATH:Ljava/lang/String; = "plusshares"

#the value of this static final field might be set in the static constructor
.field public static final RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J = 0x0L

.field private static final TAG:Ljava/lang/String; = null

.field public static final URI:Landroid/net/Uri; = null

.field private static final URI_PARAM_COMM_TARGETS_ONLY:Ljava/lang/String; = "onlyCommTargets"

.field private static final URI_PARAM_LIMIT:Ljava/lang/String; = "limit"

.field private static final URI_PARAM_MOST_SHARED:Ljava/lang/String; = "mostShared"

.field private static final URI_PARAM_MUST_HAVE_PHONE_NUMBER:Ljava/lang/String; = "havePhoneNumber"

.field private static final URI_PARAM_RECENT_SHARES:Ljava/lang/String; = "recentShares"

.field private static final URI_PARAM_SOURCE_RESTRICT:Ljava/lang/String; = "sourceRestrict"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private clock:Lcom/google/glass/util/Clock;

.field private dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

.field private settingsHelper:Lcom/google/glass/util/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    const-class v0, Lcom/google/glass/entity/EntityProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProvider;->TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.glass.entity"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProvider;->BASE_URI:Landroid/net/Uri;

    .line 94
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "entity"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    .line 97
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 99
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.entity"

    const-string v2, "entity"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.entity"

    const-string v2, "entity/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.entity"

    const-string v2, "plusshares"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/entity/EntityProvider;->RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 216
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private executeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 681
    iget-object v1, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 688
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private static getAndAppendIds(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 516
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 517
    .local v0, idColumnIndex:I
    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 518
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    :cond_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 524
    return-void
.end method

.method private static getBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "uri"
    .parameter "paramName"
    .parameter "defaultValue"

    .prologue
    .line 448
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, str:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 452
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method protected static getExcludeIdsSelection(Ljava/util/ArrayList;)Lcom/google/glass/util/SelectionBuilder;
    .locals 6
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/glass/util/SelectionBuilder;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 532
    :cond_0
    new-instance v3, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v3}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 543
    :goto_0
    return-object v3

    .line 534
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 535
    .local v2, size:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "_id NOT IN ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .local v1, selection:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 537
    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_2

    .line 539
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 542
    :cond_3
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    new-instance v4, Lcom/google/glass/util/SelectionBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0
.end method

.method private static getIntQueryParameter(Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 1
    .parameter "uri"
    .parameter "paramName"
    .parameter "defaultValue"

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, str:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 444
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method private getShareContacts(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "uri"
    .parameter "projection"

    .prologue
    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/entity/EntityProvider;->settingsHelper:Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v17

    .line 356
    .local v17, entityHelper:Lcom/google/glass/entity/EntityHelper;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/glass/entity/EntityHelper;->getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 357
    .local v16, email:Ljava/lang/String;
    if-nez v16, :cond_0

    .line 359
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 436
    .end local v16           #email:Ljava/lang/String;
    .end local v17           #entityHelper:Lcom/google/glass/entity/EntityHelper;
    :goto_0
    return-object v4

    .line 361
    .restart local v16       #email:Ljava/lang/String;
    .restart local v17       #entityHelper:Lcom/google/glass/entity/EntityHelper;
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 362
    const-string v5, "entity"

    const-string v7, "email=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v16, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v12}, Lcom/google/glass/entity/EntityProvider;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    .line 366
    .end local v16           #email:Ljava/lang/String;
    .end local v17           #entityHelper:Lcom/google/glass/entity/EntityHelper;
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 367
    .local v15, cursors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    const/16 v24, 0x0

    .line 369
    .local v24, totalCount:I
    const-string v4, "sourceRestrict"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 370
    .local v23, sourceRestrict:Ljava/lang/String;
    const-string v4, "recentShares"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/glass/entity/EntityProvider;->getIntQueryParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v20

    .line 371
    .local v20, maxMostRecentShare:I
    const-string v4, "mostShared"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/glass/entity/EntityProvider;->getIntQueryParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v21

    .line 372
    .local v21, maxMostSharedPromotes:I
    const-string v4, "limit"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/glass/entity/EntityProvider;->getIntQueryParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v19

    .line 374
    .local v19, limit:I
    new-instance v13, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v13}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 375
    .local v13, baseSelection:Lcom/google/glass/util/SelectionBuilder;
    if-eqz v23, :cond_2

    .line 376
    const-string v4, "source=?"

    move-object/from16 v0, v23

    invoke-virtual {v13, v4, v0}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_2
    const-string v4, "onlyCommTargets"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/glass/entity/EntityProvider;->getBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 379
    const-string v4, "is_communication_target=?"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_3
    const-string v4, "havePhoneNumber"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/glass/entity/EntityProvider;->getBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 382
    const-string v4, "phone_numberIS NOT NULL"

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 390
    .local v18, excludeIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-lez v20, :cond_5

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v13, v2}, Lcom/google/glass/entity/EntityProvider;->getRecentlySharedEntities([Ljava/lang/String;Lcom/google/glass/util/SelectionBuilder;I)Landroid/database/Cursor;

    move-result-object v14

    .line 392
    .local v14, c:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_a

    .line 393
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int v24, v24, v4

    .line 394
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lcom/google/glass/entity/EntityProvider;->getAndAppendIds(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    .line 402
    .end local v14           #c:Landroid/database/Cursor;
    :cond_5
    :goto_1
    if-lez v21, :cond_7

    .line 406
    move/from16 v22, v21

    .line 407
    .local v22, numMostSharedLimit:I
    if-lez v19, :cond_6

    .line 408
    sub-int v4, v19, v24

    move/from16 v0, v21

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 410
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, v22

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/google/glass/entity/EntityProvider;->getMostSharedEntities([Ljava/lang/String;Lcom/google/glass/util/SelectionBuilder;Ljava/util/ArrayList;I)Landroid/database/Cursor;

    move-result-object v14

    .line 412
    .restart local v14       #c:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_b

    .line 413
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int v24, v24, v4

    .line 414
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lcom/google/glass/entity/EntityProvider;->getAndAppendIds(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    .line 423
    .end local v14           #c:Landroid/database/Cursor;
    .end local v22           #numMostSharedLimit:I
    :cond_7
    :goto_2
    if-ltz v19, :cond_8

    if-lez v19, :cond_9

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 424
    :cond_8
    sub-int v4, v19, v24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v13, v2, v4}, Lcom/google/glass/entity/EntityProvider;->getAllShareEntities([Ljava/lang/String;Lcom/google/glass/util/SelectionBuilder;Ljava/util/ArrayList;I)Landroid/database/Cursor;

    move-result-object v14

    .line 425
    .restart local v14       #c:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_c

    .line 426
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .end local v14           #c:Landroid/database/Cursor;
    :cond_9
    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_d

    .line 434
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 398
    .restart local v14       #c:Landroid/database/Cursor;
    :cond_a
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 418
    .restart local v22       #numMostSharedLimit:I
    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 428
    .end local v22           #numMostSharedLimit:I
    :cond_c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 436
    .end local v14           #c:Landroid/database/Cursor;
    :cond_d
    new-instance v5, Landroid/database/MergeCursor;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/database/Cursor;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/database/Cursor;

    invoke-direct {v5, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v4, v5

    goto/16 :goto_0
.end method

.method public static getShareContactsUri(Ljava/lang/String;IIIZZ)Landroid/net/Uri;
    .locals 3
    .parameter "source"
    .parameter "maxRecentPromotes"
    .parameter "maxMostSharedPromotes"
    .parameter "limit"
    .parameter "communicationTargetsOnly"
    .parameter "mustHavePhoneNumber"

    .prologue
    .line 663
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 664
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "plusshares"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 665
    if-eqz p0, :cond_0

    .line 666
    const-string v1, "sourceRestrict"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 668
    :cond_0
    const-string v1, "recentShares"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 669
    const-string v1, "mostShared"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 670
    const-string v1, "limit"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 671
    const-string v1, "onlyCommTargets"

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 673
    const-string v1, "havePhoneNumber"

    invoke-static {p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 675
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "isDelete"

    .prologue
    .line 591
    new-instance v3, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v3, p3, p4}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 594
    .local v3, sb:Lcom/google/glass/util/SelectionBuilder;
    sget-object v5, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 595
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 604
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to update URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 597
    :pswitch_0
    const-string v4, "entity"

    .line 607
    .local v4, table:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 609
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_0

    .line 610
    invoke-virtual {v3}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 615
    .local v0, count:I
    :goto_1
    return v0

    .line 600
    .end local v0           #count:I
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #table:Ljava/lang/String;
    :pswitch_1
    const-string v4, "entity"

    .line 601
    .restart local v4       #table:Ljava/lang/String;
    const-string v5, "_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 612
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v3}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, p2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0       #count:I
    goto :goto_1

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 625
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 626
    .local v1, exception:Landroid/content/OperationApplicationException;
    const/4 v3, 0x0

    .line 627
    .local v3, numExceptions:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 628
    .local v4, numOperations:I
    new-array v5, v4, [Landroid/content/ContentProviderResult;

    .line 629
    .local v5, results:[Landroid/content/ContentProviderResult;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 631
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProviderOperation;

    invoke-virtual {v6, p0, v5, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v6

    aput-object v6, v5, v2
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Landroid/content/OperationApplicationException;
    add-int/lit8 v3, v3, 0x1

    .line 636
    if-nez v1, :cond_0

    .line 637
    move-object v1, v0

    goto :goto_1

    .line 641
    .end local v0           #e:Landroid/content/OperationApplicationException;
    :cond_1
    if-eqz v1, :cond_2

    .line 642
    sget-object v6, Lcom/google/glass/entity/EntityProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyBatch() failed on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " out of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " total operations."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    throw v1

    .line 646
    :cond_2
    return-object v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 580
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/entity/EntityProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method protected getAllShareEntities([Ljava/lang/String;Lcom/google/glass/util/SelectionBuilder;Ljava/util/ArrayList;I)Landroid/database/Cursor;
    .locals 10
    .parameter "projection"
    .parameter "baseSelection"
    .parameter
    .parameter "limit"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/SelectionBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p3, excludeIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 505
    invoke-static {p3}, Lcom/google/glass/entity/EntityProvider;->getExcludeIdsSelection(Ljava/util/ArrayList;)Lcom/google/glass/util/SelectionBuilder;

    move-result-object v9

    .line 506
    .local v9, sb:Lcom/google/glass/util/SelectionBuilder;
    invoke-virtual {v9, p2}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Lcom/google/glass/util/SelectionBuilder;)V

    .line 507
    const-string v1, "entity"

    invoke-virtual {v9}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v4

    const-string v7, "display_name"

    if-lez p4, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/entity/EntityProvider;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v8, v5

    goto :goto_0
.end method

.method protected getMostSharedEntities([Ljava/lang/String;Lcom/google/glass/util/SelectionBuilder;Ljava/util/ArrayList;I)Landroid/database/Cursor;
    .locals 10
    .parameter "projection"
    .parameter "baseSelection"
    .parameter
    .parameter "limit"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/SelectionBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p3, excludeIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 488
    invoke-static {p3}, Lcom/google/glass/entity/EntityProvider;->getExcludeIdsSelection(Ljava/util/ArrayList;)Lcom/google/glass/util/SelectionBuilder;

    move-result-object v9

    .line 489
    .local v9, sb:Lcom/google/glass/util/SelectionBuilder;
    invoke-virtual {v9, p2}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Lcom/google/glass/util/SelectionBuilder;)V

    .line 490
    const-string v0, "share_count!= ?"

    const-string v1, "0"

    invoke-virtual {v9, v0, v1}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v1, "entity"

    invoke-virtual {v9}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v4

    const-string v7, "share_count DESC"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v2, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/entity/EntityProvider;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getRecentlySharedEntities([Ljava/lang/String;Lcom/google/glass/util/SelectionBuilder;I)Landroid/database/Cursor;
    .locals 12
    .parameter "projection"
    .parameter "baseSelection"
    .parameter "limit"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 465
    new-instance v11, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v11}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 466
    .local v11, sb:Lcom/google/glass/util/SelectionBuilder;
    invoke-virtual {v11, p2}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Lcom/google/glass/util/SelectionBuilder;)V

    .line 468
    iget-object v0, p0, Lcom/google/glass/entity/EntityProvider;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v0}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/google/glass/entity/EntityProvider;->RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J

    sub-long v9, v0, v2

    .line 471
    .local v9, recentShareBoostCutoff:J
    const-string v0, "share_time>?"

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v1, "entity"

    invoke-virtual {v11}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v4

    const-string v7, "share_time DESC"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v2, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/entity/EntityProvider;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 311
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 312
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 319
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 315
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.com.google.glass.entity"

    goto :goto_0

    .line 317
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.com.google.glass.entity"

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 549
    sget-object v6, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 550
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 554
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to insert into URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 561
    :pswitch_0
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 562
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "entity"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v0, v6, v7, p2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 569
    .local v3, rowId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 571
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.google.glass.entity"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 572
    sget-object v5, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v5, "_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #rowId:J
    :goto_0
    return-object v5

    .line 564
    :catch_0
    move-exception v1

    .line 565
    .local v1, e:Landroid/database/SQLException;
    sget-object v6, Lcom/google/glass/entity/EntityProvider;->TAG:Ljava/lang/String;

    const-string v7, "Exception inserting into entity DB"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 574
    .end local v1           #e:Landroid/database/SQLException;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #rowId:J
    :cond_0
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Row not inserted for URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 297
    new-instance v0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    .line 298
    new-instance v0, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v0}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/EntityProvider;->clock:Lcom/google/glass/util/Clock;

    .line 299
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityProvider;->settingsHelper:Lcom/google/glass/util/SettingsHelper;

    .line 301
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
    .line 325
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 326
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v10, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v10, p3, p4}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 328
    .local v10, sb:Lcom/google/glass/util/SelectionBuilder;
    sget-object v2, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 329
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 340
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

    .line 331
    :pswitch_0
    const-string v2, "entity"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 343
    :goto_0
    iget-object v2, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 344
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

    .line 346
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 347
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_1
    return-object v8

    .line 334
    :pswitch_1
    const-string v2, "entity"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 335
    const-string v2, "_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/glass/entity/EntityProvider;->getShareContacts(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setClock(Lcom/google/glass/util/Clock;)V
    .locals 0
    .parameter "clock"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/glass/entity/EntityProvider;->clock:Lcom/google/glass/util/Clock;

    .line 307
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 585
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/entity/EntityProvider;->mutate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method
