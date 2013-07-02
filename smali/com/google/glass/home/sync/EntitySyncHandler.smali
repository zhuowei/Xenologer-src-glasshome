.class Lcom/google/glass/home/sync/EntitySyncHandler;
.super Lcom/google/glass/sync/BackOffSyncHandler;
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
    .line 43
    const-class v0, Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    .line 46
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
    .line 69
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/glass/util/WifiHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v2}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/glass/home/sync/EntitySyncHandler;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/Clock;)V

    .line 71
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
    .line 75
    invoke-direct {p0}, Lcom/google/glass/sync/BackOffSyncHandler;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    .line 77
    const-string v0, "entity_sync"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/home/HomeApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->prefs:Landroid/content/SharedPreferences;

    .line 79
    iput-object p2, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 80
    iput-object p3, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 81
    iput-object p4, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->clock:Lcom/google/glass/util/Clock;

    .line 82
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/sync/EntitySyncHandler;Ljava/util/List;Ljava/util/Map;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/sync/EntitySyncHandler;->updateEntityProvider(Ljava/util/List;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/sync/EntitySyncHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/home/sync/EntitySyncHandler;->updateLastFullRefreshTime()V

    return-void
.end method

.method private getEntitiesFromDevice()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 183
    .local v7, entitiesFromDevice:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    iget-object v1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 186
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 187
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-static {v6}, Lcom/google/glass/entity/EntityHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v8

    .line 189
    .local v8, fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v8}, Lcom/google/glass/home/sync/EntitySyncHandler;->getUniqueId(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;

    move-result-object v1

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 192
    .end local v8           #fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_0

    .line 193
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 192
    :cond_1
    if-eqz v6, :cond_2

    .line 193
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_2
    return-object v7
.end method

.method static getUniqueId(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;
    .locals 3
    .parameter "entity"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 178
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
    .line 328
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
    .line 303
    sget-object v3, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 305
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

    .line 306
    .local v0, column:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 308
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
    .line 315
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

    .line 318
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

    .line 319
    .local v0, column:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 321
    .end local v0           #column:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    return-object v3
.end method

.method private updateEntityProvider(Ljava/util/List;Ljava/util/Map;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter "requestedFullRefresh"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, entitiesListFromCloud:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    .local p2, entitiesFromDevice:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 204
    .local v0, entitiesFromCloud:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Entity;

    .line 205
    .local v1, fromCloud:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v1}, Lcom/google/glass/home/sync/EntitySyncHandler;->getUniqueId(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    .end local v1           #fromCloud:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    iget-object v4, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v4}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0, v0, p2, v4, p3}, Lcom/google/glass/home/sync/EntitySyncHandler;->updateEntityProviderHelper(Ljava/util/Map;Ljava/util/Map;Landroid/content/ContentResolver;Z)Z

    move-result v2

    .line 210
    .local v2, hasChanges:Z
    if-eqz v2, :cond_1

    .line 212
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v4, v5}, Lcom/google/glass/entity/EntityHelper;->broadcastSyncChanged(Landroid/content/Context;)V

    .line 216
    :goto_1
    return-void

    .line 214
    :cond_1
    sget-object v4, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    const-string v5, "No changes made to entities, not sending broadcast."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateLastFullRefreshTime()V
    .locals 4

    .prologue
    .line 171
    iget-object v1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "preference_lastFullRefreshMs"

    iget-object v2, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v2}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    return-void
.end method


# virtual methods
.method public fetchEntities()V
    .locals 8

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/glass/home/sync/EntitySyncHandler;->getEntitiesFromDevice()Ljava/util/Map;

    move-result-object v1

    .line 86
    .local v1, entitiesFromDevice:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-virtual {p0, v1}, Lcom/google/glass/home/sync/EntitySyncHandler;->requiresFullRefresh(Ljava/util/Map;)Z

    move-result v3

    .line 87
    .local v3, requiresFullRefresh:Z
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v2

    .line 88
    .local v2, request:Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    if-nez v3, :cond_0

    .line 90
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->setEnabledTargetsOnly(Z)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    .line 93
    :cond_0
    new-instance v4, Lcom/google/glass/home/sync/EntitySyncHandler$1;

    invoke-direct {v4, p0, v1, v3}, Lcom/google/glass/home/sync/EntitySyncHandler$1;-><init>(Lcom/google/glass/home/sync/EntitySyncHandler;Ljava/util/Map;Z)V

    .line 119
    .local v4, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<Lcom/google/googlex/glass/common/proto/EntitySyncResponse;>;"
    iget-object v5, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v5}, Lcom/google/glass/home/HomeApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    .line 120
    .local v0, dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    if-eqz v0, :cond_1

    .line 121
    sget-object v5, Lcom/google/glass/net/ServerConstants$Action;->ENTITY_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v6

    sget-object v7, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 125
    :cond_1
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method requiresFullRefresh(Ljava/util/Map;)Z
    .locals 11
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, entitiesFromDevice:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    const/4 v0, 0x1

    .line 138
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 167
    :goto_0
    return v0

    .line 142
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v6, msg:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v7}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v7}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 147
    const-string v7, "Full refresh of entities since on wifi and powered."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/4 v0, 0x1

    .line 166
    .local v0, fullRefresh:Z
    :goto_1
    sget-object v7, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    .end local v0           #fullRefresh:Z
    :cond_1
    iget-object v7, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "preference_lastFullRefreshMs"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 153
    .local v1, lastRefreshTimeMs:J
    iget-object v7, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v7}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 154
    .local v4, msSinceLastRefresh:J
    const-wide/32 v7, 0x5265c00

    cmp-long v7, v4, v7

    if-lez v7, :cond_2

    .line 157
    .restart local v0       #fullRefresh:Z
    :goto_2
    if-eqz v0, :cond_3

    .line 158
    const-string v7, "Full refresh of entities "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :goto_3
    sget-object v7, Lcom/google/glass/home/sync/EntitySyncHandler;->LOGGING_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 163
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

    goto :goto_1

    .line 154
    .end local v0           #fullRefresh:Z
    .end local v3           #lastRefreshTimeStr:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 160
    .restart local v0       #fullRefresh:Z
    :cond_3
    const-string v7, "Incremental sync of entities "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
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
    .line 223
    .local p1, entitiesFromCloud:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    .local p2, entitiesFromDevice:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 224
    .local v11, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v9, 0x0

    .line 225
    .local v9, numInserts:I
    const/4 v10, 0x0

    .line 226
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

    .line 227
    .local v1, cloudEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/Entity;

    .line 228
    .local v4, fromCloud:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/Entity;

    .line 229
    .local v5, fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    if-nez v5, :cond_0

    .line 231
    invoke-direct {p0, v4}, Lcom/google/glass/home/sync/EntitySyncHandler;->newInsertOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v5, v4}, Lcom/google/googlex/glass/common/proto/Entity;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 237
    invoke-direct {p0, v4}, Lcom/google/glass/home/sync/EntitySyncHandler;->newUpdateOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v10, v10, 0x1

    .line 241
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 251
    .end local v1           #cloudEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    .end local v4           #fromCloud:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v5           #fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_2
    const/4 v8, 0x0

    .line 252
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

    .line 253
    .restart local v5       #fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz p4, :cond_4

    .line 254
    invoke-direct {p0, v5}, Lcom/google/glass/home/sync/EntitySyncHandler;->newDeleteOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 257
    :cond_4
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getIsCommunicationTarget()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 261
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setIsCommunicationTarget(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 262
    .local v3, entityToUpdate:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-direct {p0, v3}, Lcom/google/glass/home/sync/EntitySyncHandler;->newUpdateOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v10, v10, 0x1

    .line 264
    goto :goto_1

    .end local v3           #entityToUpdate:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_5
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getShouldSync()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 267
    invoke-direct {p0, v5}, Lcom/google/glass/home/sync/EntitySyncHandler;->newDeleteOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 273
    .end local v5           #fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 276
    :try_start_0
    const-string v12, "com.google.glass.entity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v7, msg:Ljava/lang/StringBuilder;
    const-string v12, "Updating entities: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " inserts, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " updates, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " deletes."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    sget-object v12, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v12, 0x1

    .line 295
    .end local v7           #msg:Ljava/lang/StringBuilder;
    :goto_3
    return v12

    .line 277
    :catch_0
    move-exception v2

    .line 280
    .local v2, e:Landroid/content/OperationApplicationException;
    sget-object v12, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    const-string v13, "Batch db update failed."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 281
    .end local v2           #e:Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v2

    .line 283
    .local v2, e:Landroid/os/RemoteException;
    sget-object v12, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    const-string v13, "Unexpected RemoteException, batch db update failed."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 295
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_7
    const/4 v12, 0x0

    goto :goto_3
.end method
