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

.field private static final DATABASE_VERSION:I = 0xb

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

#the value of this static final field might be set in the static constructor
.field public static final RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J = 0x0L

.field private static final TAG:Ljava/lang/String; = null

.field public static final TYPE_GROUP:I = 0x0

.field public static final TYPE_INDIVIDUAL:I = 0x1

.field public static final URI:Landroid/net/Uri; = null

.field public static final URI_PARAM_GROUP_BY:Ljava/lang/String; = "groupBy"

.field public static final URI_PARAM_LIMIT:Ljava/lang/String; = "limit"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private clock:Lcom/google/glass/util/Clock;

.field private dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

.field private settingsHelper:Lcom/google/glass/util/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/entity/EntityProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProvider;->TAG:Ljava/lang/String;

    .line 78
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

    .line 84
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "entity"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    .line 87
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 89
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.entity"

    const-string v2, "entity"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.entity"

    const-string v2, "entity/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
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
    .line 31
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 202
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
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
    .line 467
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

    .line 474
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static getAllEntitiesUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 445
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 451
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "groupBy"

    const-string v2, "ifnull(obfuscated_gaia_id, \"FGID\" || _id)"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 453
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
    .line 383
    new-instance v3, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v3, p3, p4}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 386
    .local v3, sb:Lcom/google/glass/util/SelectionBuilder;
    sget-object v5, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 387
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 396
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

    .line 389
    :pswitch_0
    const-string v4, "entity"

    .line 399
    .local v4, table:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 401
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_0

    .line 402
    invoke-virtual {v3}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 407
    .local v0, count:I
    :goto_1
    return v0

    .line 392
    .end local v0           #count:I
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #table:Ljava/lang/String;
    :pswitch_1
    const-string v4, "entity"

    .line 393
    .restart local v4       #table:Ljava/lang/String;
    const-string v5, "_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
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

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 460
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 461
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.google.glass.entity"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 462
    return-void
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
    .line 417
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 418
    .local v1, exception:Landroid/content/OperationApplicationException;
    const/4 v3, 0x0

    .line 419
    .local v3, numExceptions:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 420
    .local v4, numOperations:I
    new-array v5, v4, [Landroid/content/ContentProviderResult;

    .line 421
    .local v5, results:[Landroid/content/ContentProviderResult;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 423
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProviderOperation;

    invoke-virtual {v6, p0, v5, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v6

    aput-object v6, v5, v2
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Landroid/content/OperationApplicationException;
    add-int/lit8 v3, v3, 0x1

    .line 428
    if-nez v1, :cond_0

    .line 429
    move-object v1, v0

    goto :goto_1

    .line 433
    .end local v0           #e:Landroid/content/OperationApplicationException;
    :cond_1
    if-eqz v1, :cond_2

    .line 434
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

    .line 436
    throw v1

    .line 438
    :cond_2
    return-object v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 372
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

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 300
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 301
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 307
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 303
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.com.google.glass.entity"

    goto :goto_0

    .line 305
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.com.google.glass.entity"

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 342
    sget-object v6, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 343
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 347
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

    .line 354
    :pswitch_0
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 355
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "entity"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v0, v6, v7, p2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 362
    .local v3, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 363
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityProvider;->notifyChange(Landroid/net/Uri;)V

    .line 364
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

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, e:Landroid/database/SQLException;
    sget-object v6, Lcom/google/glass/entity/EntityProvider;->TAG:Ljava/lang/String;

    const-string v7, "Exception inserting into entity DB"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 366
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

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 286
    new-instance v0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    .line 287
    new-instance v0, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v0}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/EntityProvider;->clock:Lcom/google/glass/util/Clock;

    .line 288
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityProvider;->settingsHelper:Lcom/google/glass/util/SettingsHelper;

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 313
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 314
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v13, Lcom/google/glass/util/SelectionBuilder;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v13, v0, v1}, Lcom/google/glass/util/SelectionBuilder;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 316
    .local v13, sb:Lcom/google/glass/util/SelectionBuilder;
    sget-object v4, Lcom/google/glass/entity/EntityProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 317
    .local v12, match:I
    packed-switch v12, :pswitch_data_0

    .line 326
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to query URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 319
    :pswitch_0
    const-string v4, "entity"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 329
    :goto_0
    const-string v4, "limit"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 330
    .local v10, limit:Ljava/lang/String;
    const-string v4, "groupBy"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 332
    .local v7, groupBy:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/entity/EntityProvider;->dbHelper:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 333
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 335
    .local v11, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v11, v4, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 337
    return-object v11

    .line 322
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #groupBy:Ljava/lang/String;
    .end local v10           #limit:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :pswitch_1
    const-string v4, "entity"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 323
    const-string v4, "_id=?"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setClock(Lcom/google/glass/util/Clock;)V
    .locals 0
    .parameter "clock"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/glass/entity/EntityProvider;->clock:Lcom/google/glass/util/Clock;

    .line 296
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 377
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
