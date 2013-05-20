.class Lcom/google/glass/home/sync/EntitySyncHandler;
.super Lcom/google/glass/home/sync/BackOffSyncHandler;
.source "EntitySyncHandler.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/home/sync/BackOffSyncHandler;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/EntitySyncResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final WHERE:Ljava/lang/String; = "(_id=? AND source=?)"


# instance fields
.field private application:Lcom/google/glass/home/HomeApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 0
    .parameter "application"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/glass/home/sync/BackOffSyncHandler;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    .line 55
    return-void
.end method

.method static getUniqueId(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;
    .locals 3
    .parameter "entity"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 91
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
    .line 212
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
    .line 187
    sget-object v3, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 189
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

    .line 190
    .local v0, column:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 192
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
    .line 199
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

    .line 202
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

    .line 203
    .local v0, column:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 205
    .end local v0           #column:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    return-object v3
.end method

.method private updateEntityProvider(Ljava/util/List;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, entitiesListFromCloud:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 97
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

    .line 98
    .local v9, fromCloud:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v9}, Lcom/google/glass/home/sync/EntitySyncHandler;->getUniqueId(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;

    move-result-object v1

    invoke-interface {v7, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    .end local v9           #fromCloud:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 102
    .local v8, entitiesFromDevice:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    iget-object v1, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 105
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    invoke-static {v6}, Lcom/google/glass/entity/EntityHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v10

    .line 108
    .local v10, fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v10}, Lcom/google/glass/home/sync/EntitySyncHandler;->getUniqueId(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;

    move-result-object v1

    invoke-interface {v8, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 111
    .end local v10           #fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_1

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 111
    :cond_2
    if-eqz v6, :cond_3

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_3
    invoke-virtual {p0, v7, v8, v0}, Lcom/google/glass/home/sync/EntitySyncHandler;->updateEntityProviderHelper(Ljava/util/Map;Ljava/util/Map;Landroid/content/ContentResolver;)Z

    move-result v11

    .line 118
    .local v11, hasChanges:Z
    if-eqz v11, :cond_4

    .line 120
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1, v2}, Lcom/google/glass/entity/EntityHelper;->broadcastSyncChanged(Landroid/app/Application;)V

    .line 124
    :goto_2
    return-void

    .line 122
    :cond_4
    sget-object v1, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "No changes made to entities, not sending broadcast."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public fetchEntities()V
    .locals 5

    .prologue
    .line 58
    invoke-static {}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    move-result-object v2

    .line 59
    .local v2, requestBuilder:Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->AUTO_SHARE_TARGETS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->setAllShareTargets(Z)Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;

    .line 62
    :cond_0
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/EntitySyncRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/EntitySyncRequest;

    move-result-object v1

    .line 64
    .local v1, request:Lcom/google/googlex/glass/common/proto/EntitySyncRequest;
    iget-object v3, p0, Lcom/google/glass/home/sync/EntitySyncHandler;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v3}, Lcom/google/glass/home/HomeApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    .line 65
    .local v0, dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    if-eqz v0, :cond_1

    .line 66
    sget-object v3, Lcom/google/glass/net/ServerConstants$Action;->ENTITY_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v4, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v0, v3, v1, v4, p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 69
    :cond_1
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    const-string v1, "Entity sync cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 78
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entity sync error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/google/glass/home/sync/EntitySyncHandler;->handleFail()V

    .line 80
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)V
    .locals 3
    .parameter "responseProto"

    .prologue
    .line 84
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->getEntitiesCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->getEntitiesList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/sync/EntitySyncHandler;->updateEntityProvider(Ljava/util/List;)V

    .line 86
    invoke-virtual {p0}, Lcom/google/glass/home/sync/EntitySyncHandler;->handleSuccess()V

    .line 87
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/sync/EntitySyncHandler;->onSuccess(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)V

    return-void
.end method

.method updateEntityProviderHelper(Ljava/util/Map;Ljava/util/Map;Landroid/content/ContentResolver;)Z
    .locals 12
    .parameter
    .parameter
    .parameter "resolver"
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
            ")Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, entitiesFromCloud:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    .local p2, entitiesFromDevice:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 131
    .local v9, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 132
    .local v7, numInserts:I
    const/4 v8, 0x0

    .line 133
    .local v8, numUpdates:I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    .local v0, cloudEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Entity;

    .line 135
    .local v3, fromCloud:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/Entity;

    .line 136
    .local v4, fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    if-nez v4, :cond_0

    .line 138
    invoke-direct {p0, v3}, Lcom/google/glass/home/sync/EntitySyncHandler;->newInsertOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v4, v3}, Lcom/google/googlex/glass/common/proto/Entity;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 144
    invoke-direct {p0, v3}, Lcom/google/glass/home/sync/EntitySyncHandler;->newUpdateOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v8, v8, 0x1

    .line 148
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p2, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    .end local v0           #cloudEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/glass/home/sync/EntitySyncHandler$UniqueEntityId;Lcom/google/googlex/glass/common/proto/Entity;>;"
    .end local v3           #fromCloud:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v4           #fromDevice:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/Entity;

    .line 154
    .local v2, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-direct {p0, v2}, Lcom/google/glass/home/sync/EntitySyncHandler;->newDeleteOperation(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    .end local v2           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 160
    :try_start_0
    const-string v10, "com.google.glass.entity"

    invoke-virtual {p3, v10, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v6, msg:Ljava/lang/StringBuilder;
    const-string v10, "Updating entities: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " inserts, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " updates, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " deletes."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    sget-object v10, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v10, 0x1

    .line 179
    .end local v6           #msg:Ljava/lang/StringBuilder;
    :goto_3
    return v10

    .line 161
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Landroid/content/OperationApplicationException;
    sget-object v10, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    const-string v11, "Batch db update failed."

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 165
    .end local v1           #e:Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v1

    .line 167
    .local v1, e:Landroid/os/RemoteException;
    sget-object v10, Lcom/google/glass/home/sync/EntitySyncHandler;->TAG:Ljava/lang/String;

    const-string v11, "Unexpected RemoteException, batch db update failed."

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 179
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    const/4 v10, 0x0

    goto :goto_3
.end method
