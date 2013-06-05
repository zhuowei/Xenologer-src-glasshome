.class Lcom/google/glass/home/sync/EntitySyncHandler;
.super Lcom/google/glass/home/sync/BackOffSyncHandler;
.source "EntitySyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;
    }
.end annotation


# static fields
.field static final ENTITY_SYNC_SHARED_PREFS_NAME:Ljava/lang/String; = "entity_sync"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FULL_REFRESH_INTERVAL_MS:J = 0x5265c00L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LAST_FULL_REFRESH_MS:Ljava/lang/String; = "preference_lastFullRefreshMs"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final LOGGING_DATE_FMT:Ljava/text/SimpleDateFormat; = null

.field private static final TAG:Ljava/lang/String; = null

.field private static final WHERE:Ljava/lang/String; = "(_id=? AND source=?)"


# instance fields
.field private application:Lcom/google/glass/home/HomeApplication;

.field private batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private clock:Lcom/google/glass/util/Clock;

.field private prefs:Landroid/content/SharedPreferences;

.field private wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->LOGGING_DATE_FMT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 68
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/glass/util/WifiHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v2}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/glass/home/sync/EntitySyncHandler;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/Clock;)V

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/Clock;)V
    .locals 2
    .parameter "application"
    .parameter "batteryHelper"
    .parameter "wifiHelper"
    .parameter "clock"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/glass/home/sync/BackOffSyncHandler;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    .line 76
    const-string v0, "entity_sync"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/home/HomeApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->prefs:Landroid/content/SharedPreferences;

    .line 78
    iput-object p2, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 79
    iput-object p3, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 80
    iput-object p4, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->clock:Lcom/google/glass/util/Clock;

    .line 81
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/sync/EntitySyncHandler;Ljava/util/List;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/sync/EntitySyncHandler;->updateEntityProvider(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/sync/EntitySyncHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/home/sync/EntitySyncHandler;->updateLastFullRefreshTime()V

    return-void
.end method

.method static getUniqueId(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;
    .locals 3
    .parameter "entity"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private newDeleteOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;
    .locals 5
    .parameter "entity"

    .prologue
    .line 316
    sget-object v0, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "(_id=? AND source=?)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private newInsertOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;
    .locals 5
    .parameter "entity"

    .prologue
    .line 291
    sget-object v3, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 293
    .local v2, opBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 294
    .local v0, column:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 296
    .end local v0           #column:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    return-object v3
.end method

.method private newUpdateOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;
    .locals 8
    .parameter "entity"

    .prologue
    .line 303
    sget-object v3, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "(_id=? AND source=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 306
    .local v2, opBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 307
    .local v0, column:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 309
    .end local v0           #column:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    return-object v3
.end method

.method private updateEntityProvider(Ljava/util/List;Z)V
    .locals 13
    .parameter
    .parameter "requestedFullRefresh"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, entitiesListFromCloud:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 177
    .local v7, entitiesFromCloud:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/Entity;

    .line 178
    .local v9, fromCloud:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v9}, Lcom/google/glass/home/sync/EntitySyncHandler;->getUniqueId(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;

    move-result-object v1

    invoke-interface {v7, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    .end local v9           #fromCloud:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 182
    .local v8, entitiesFromDevice:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    iget-object v1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 183
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 185
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 186
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-static {v6}, Lcom/google/glass/entity/EntityHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v10

    .line 188
    .local v10, fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v10}, Lcom/google/glass/home/sync/EntitySyncHandler;->getUniqueId(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;

    move-result-object v1

    invoke-interface {v8, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 191
    .end local v10           #fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_1

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 191
    :cond_2
    if-eqz v6, :cond_3

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_3
    invoke-virtual {p0, v7, v8, v0, p2}, Lcom/google/glass/home/sync/EntitySyncHandler;->updateEntityProviderHelper(Ljava/util/Map;Ljava/util/Map;Landroid/content/ContentResolver;Z)Z

    move-result v11

    .line 198
    .local v11, hasChanges:Z
    if-eqz v11, :cond_4

    .line 200
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1, v2}, Lcom/google/glass/entity/EntityHelper;->broadcastSyncChanged(Landroid/content/Context;)V

    .line 204
    :goto_2
    return-void

    .line 202
    :cond_4
    sget-object v1, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "No changes made to entities, not sending broadcast."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateLastFullRefreshTime()V
    .locals 4

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "preference_lastFullRefreshMs"

    iget-object v2, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v2}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    return-void
.end method


# virtual methods
.method public fetchEntities()V
    .locals 7

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/glass/home/sync/EntitySyncHandler;->requiresFullRefresh()Z

    move-result v2

    .line 85
    .local v2, requiresFullRefresh:Z
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v1

    .line 86
    .local v1, request:Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    if-nez v2, :cond_0

    .line 88
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->setEnabledTargetsOnly(Z)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    .line 91
    :cond_0
    new-instance v3, Lcom/google/glass/home/sync/EntitySyncHandler$1;

    invoke-direct {v3, p0, v2}, Lcom/google/glass/home/sync/EntitySyncHandler$1;-><init>(Lcom/google/glass/home/sync/EntitySyncHandler;Z)V

    .line 116
    .local v3, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<Lcom/google/googlex/glass/common/proto/EntitySyncResponse;>;"
    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v4}, Lcom/google/glass/home/HomeApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    .line 117
    .local v0, dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    if-eqz v0, :cond_1

    .line 118
    sget-object v4, Lcom/google/glass/net/ServerConstants$Action;->ENTITY_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v5

    sget-object v6, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v0, v4, v5, v6, v3}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 122
    :cond_1
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method requiresFullRefresh()Z
    .locals 11
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v6, msg:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v7}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v7}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 139
    const-string v7, "Full refresh of entities since on wifi and powered."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/4 v0, 0x1

    .line 158
    .local v0, fullRefresh:Z
    :goto_0
    sget-object v7, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v0

    .line 144
    .end local v0           #fullRefresh:Z
    :cond_0
    iget-object v7, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "preference_lastFullRefreshMs"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 145
    .local v1, lastRefreshTimeMs:J
    iget-object v7, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v7}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 146
    .local v4, msSinceLastRefresh:J
    const-wide/32 v7, 0x5265c00

    cmp-long v7, v4, v7

    if-lez v7, :cond_1

    const/4 v0, 0x1

    .line 149
    .restart local v0       #fullRefresh:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 150
    const-string v7, "Full refresh of entities "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :goto_2
    sget-object v7, Lcom/google/glass/home/sync/EntitySyncHandler;->LOGGING_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, lastRefreshTimeStr:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[lastRefreshTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msSinceLastRefresh="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 146
    .end local v0           #fullRefresh:Z
    .end local v3           #lastRefreshTimeStr:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 152
    .restart local v0       #fullRefresh:Z
    :cond_2
    const-string v7, "Incremental sync of entities "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method updateEntityProviderHelper(Ljava/util/Map;Ljava/util/Map;Landroid/content/ContentResolver;Z)Z
    .locals 14
    .parameter
    .parameter
    .parameter "resolver"
    .parameter "requestedFullRefresh"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, entitiesFromCloud:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    .local p2, entitiesFromDevice:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 212
    .local v11, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v9, 0x0

    .line 213
    .local v9, numInserts:I
    const/4 v10, 0x0

    .line 214
    .local v10, numUpdates:I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 215
    .local v1, cloudEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/Entity;

    .line 216
    .local v4, fromCloud:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/Entity;

    .line 217
    .local v5, fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    if-nez v5, :cond_0

    .line 219
    invoke-direct {p0, v4}, Lcom/google/glass/home/sync/EntitySyncHandler;->newInsertOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v5, v4}, Lcom/google/googlex/glass/common/proto/Entity;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 225
    invoke-direct {p0, v4}, Lcom/google/glass/home/sync/EntitySyncHandler;->newUpdateOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v10, v10, 0x1

    .line 229
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 239
    .end local v1           #cloudEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    .end local v4           #fromCloud:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v5           #fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_2
    const/4 v8, 0x0

    .line 240
    .local v8, numDeletes:I
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/Entity;

    .line 241
    .restart local v5       #fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz p4, :cond_4

    .line 242
    invoke-direct {p0, v5}, Lcom/google/glass/home/sync/EntitySyncHandler;->newDeleteOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 245
    :cond_4
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getIsCommunicationTarget()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 249
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setIsCommunicationTarget(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 250
    .local v3, entityToUpdate:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-direct {p0, v3}, Lcom/google/glass/home/sync/EntitySyncHandler;->newUpdateOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v10, v10, 0x1

    .line 252
    goto :goto_1

    .end local v3           #entityToUpdate:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_5
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getShouldSync()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 255
    invoke-direct {p0, v5}, Lcom/google/glass/home/sync/EntitySyncHandler;->newDeleteOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 261
    .end local v5           #fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 264
    :try_start_0
    const-string v12, "com.google.glass.entity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v7, msg:Ljava/lang/StringBuilder;
    const-string v12, "Updating entities: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " inserts, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " updates, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " deletes."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    sget-object v12, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v12, 0x1

    .line 283
    .end local v7           #msg:Ljava/lang/StringBuilder;
    :goto_3
    return v12

    .line 265
    :catch_0
    move-exception v2

    .line 268
    .local v2, e:Landroid/content/OperationApplicationException;
    sget-object v12, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    const-string v13, "Batch db update failed."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 269
    .end local v2           #e:Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v2

    .line 271
    .local v2, e:Landroid/os/RemoteException;
    sget-object v12, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    const-string v13, "Unexpected RemoteException, batch db update failed."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 283
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_7
    const/4 v12, 0x0

    goto :goto_3
.end method
