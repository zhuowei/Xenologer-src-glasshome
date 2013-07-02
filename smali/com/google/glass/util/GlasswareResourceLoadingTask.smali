.class public abstract Lcom/google/glass/util/GlasswareResourceLoadingTask;
.super Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
.source "GlasswareResourceLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/GlasswareResourceLoadingTask$3;,
        Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
        "<TResult;>;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final CACHE_RETRY_DELAY_MS:J = 0x0L

#the value of this static final field might be set in the static constructor
.field static final CACHE_VALIDATION_INTERVAL_MS:J = 0x0L

.field private static final MAX_CACHE_ENTRIES:I = 0x40

.field protected static final SHARED_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final cacheFilename:Ljava/lang/String;

.field private final cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final clock:Lcom/google/glass/util/Clock;

.field private entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final projectId:Ljava/lang/String;

.field private final requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private final resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

.field private final sharedCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->TAG:Ljava/lang/String;

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->CACHE_VALIDATION_INTERVAL_MS:J

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->CACHE_RETRY_DELAY_MS:J

    .line 57
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)V
    .locals 2
    .parameter "context"
    .parameter "cachedFilesManager"
    .parameter "requestDispatcher"
    .parameter
    .parameter "clock"
    .parameter "backgroundExecutor"
    .parameter "projectId"
    .parameter "resourceType"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/util/CachedFilesManager;",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<*>;>;",
            "Lcom/google/glass/util/Clock;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    .local p4, sharedCache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry<*>;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;-><init>(Landroid/content/Context;)V

    .line 142
    iput-object p2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 143
    iput-object p3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 144
    iput-object p4, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    .line 145
    iput-object p5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/util/Clock;

    .line 146
    iput-object p6, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 147
    iput-object p7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p8}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->getFilenameSuffix(Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    .line 149
    iput-object p8, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)V
    .locals 9
    .parameter "context"
    .parameter "projectId"
    .parameter "resourceType"

    .prologue
    .line 128
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v3

    sget-object v4, Lcom/google/glass/util/GlasswareResourceLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    new-instance v5, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v5}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/util/GlasswareResourceLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)V

    .line 135
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/util/GlasswareResourceLoadingTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->downloadResourceAndUpdateValidationTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/util/GlasswareResourceLoadingTask;)Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/util/GlasswareResourceLoadingTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->loadFromDiskCache()Z

    move-result v0

    return v0
.end method

.method private downloadResource()Z
    .locals 10

    .prologue
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 265
    sget-object v4, Lcom/google/glass/util/GlasswareResourceLoadingTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requesting resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fingerprint="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v8}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v4, v7}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->setType(Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v7}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->setFingerprint(J)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v2

    .line 273
    .local v2, request:Lcom/google/googlex/glass/common/proto/ResourceRequest;
    const/4 v3, 0x0

    .line 276
    .local v3, response:Lcom/google/googlex/glass/common/proto/ResourceResponse;
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v7, Lcom/google/glass/net/ServerConstants$Action;->RESOURCE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v8, Lcom/google/googlex/glass/common/proto/ResourceResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v4, v7, v2, v8}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceResponse;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getStatus()Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    move-result-object v4

    sget-object v7, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    if-ne v4, v7, :cond_1

    .line 283
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->hasData()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->hasFingerprint()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    sget-object v4, Lcom/google/glass/util/GlasswareResourceLoadingTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fingerprint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getFingerprint()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getFingerprint()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    invoke-direct {p0, v6, v7, v4}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->saveToDiskCache(J[B)V

    :goto_1
    move v4, v5

    .line 298
    :goto_2
    return v4

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, e:Ljava/lang/InterruptedException;
    sget-object v4, Lcom/google/glass/util/GlasswareResourceLoadingTask;->TAG:Ljava/lang/String;

    const-string v7, "Interrupted while requesting resource from clientproxy!"

    invoke-static {v4, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 288
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_0
    sget-object v4, Lcom/google/glass/util/GlasswareResourceLoadingTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No update: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 291
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getStatus()Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    move-result-object v4

    sget-object v7, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->NOT_FOUND:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    if-ne v4, v7, :cond_2

    .line 293
    sget-object v4, Lcom/google/glass/util/GlasswareResourceLoadingTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-wide/16 v7, 0x0

    new-array v4, v6, [B

    invoke-direct {p0, v7, v8, v4}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->saveToDiskCache(J[B)V

    move v4, v5

    .line 295
    goto :goto_2

    .line 297
    :cond_2
    sget-object v4, Lcom/google/glass/util/GlasswareResourceLoadingTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request failed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 298
    goto/16 :goto_2
.end method

.method private downloadResourceAndUpdateValidationTime()V
    .locals 5

    .prologue
    .line 257
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->downloadResource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    iget-object v1, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/google/glass/util/GlasswareResourceLoadingTask;->CACHE_VALIDATION_INTERVAL_MS:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->setNextValidationTime(J)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    iget-object v1, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/google/glass/util/GlasswareResourceLoadingTask;->CACHE_RETRY_DELAY_MS:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->setNextValidationTime(J)V

    goto :goto_0
.end method

.method static getFilenameSuffix(Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)Ljava/lang/String;
    .locals 3
    .parameter "resourceType"

    .prologue
    .line 153
    sget-object v0, Lcom/google/glass/util/GlasswareResourceLoadingTask$3;->$SwitchMap$com$google$googlex$glass$common$proto$ResourceRequest$ResourceType:[I

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 163
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown resource type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 155
    :pswitch_0
    const-string v0, "MEDIUM"

    .line 161
    :goto_0
    return-object v0

    .line 157
    :pswitch_1
    const-string v0, "SMALL"

    goto :goto_0

    .line 159
    :pswitch_2
    const-string v0, "MESSAGES"

    goto :goto_0

    .line 161
    :pswitch_3
    const-string v0, "STYLESHEET"

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private loadFromDiskCache()Z
    .locals 8

    .prologue
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 325
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v4, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    new-instance v6, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v6}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/glass/util/CachedFilesManager;->load(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 326
    .local v0, fileData:[B
    if-eqz v0, :cond_0

    array-length v3, v0

    if-ge v3, v7, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v2

    .line 329
    :cond_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x8

    new-array v1, v3, [B

    .line 330
    .local v1, resourceData:[B
    array-length v3, v1

    invoke-static {v0, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    iget-object v2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-static {v0}, Lcom/google/common/primitives/Longs;->fromByteArray([B)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->populate([BJ)V

    .line 332
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private populateCacheEntry()V
    .locals 4

    .prologue
    .line 240
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->downloadResourceAndUpdateValidationTime()V

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->loadFromDiskCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    sget-object v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->populate([BJ)V

    .line 248
    :cond_1
    return-void
.end method

.method private saveToDiskCache(J[B)V
    .locals 4
    .parameter "fingerprint"
    .parameter "data"

    .prologue
    .line 306
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    new-instance v3, Lcom/google/glass/util/GlasswareResourceLoadingTask$2;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/glass/util/GlasswareResourceLoadingTask$2;-><init>(Lcom/google/glass/util/GlasswareResourceLoadingTask;J[B)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 318
    return-void
.end method


# virtual methods
.method protected abstract bindContent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method protected final loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 7
    .parameter "isCancelled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/Condition;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 186
    invoke-virtual {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    const/4 v0, 0x0

    .line 232
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    const/4 v2, 0x0

    .line 191
    .local v2, isNewEntry:Z
    iget-object v4, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 192
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    iput-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    .line 193
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    if-nez v3, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->newCacheEntry()Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    .line 195
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v3, v5, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/4 v2, 0x1

    .line 198
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    if-eqz v2, :cond_3

    .line 201
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->populateCacheEntry()V

    .line 204
    :cond_3
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v3}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->waitForDecodedData()Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, bitmap:Ljava/lang/Object;,"TResult;"
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    #getter for: Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->access$200(Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v3}, Lcom/google/glass/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v5}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->getNextValidationTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 212
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/glass/util/GlasswareResourceLoadingTask$1;

    invoke-direct {v4, p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask$1;-><init>(Lcom/google/glass/util/GlasswareResourceLoadingTask;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Ljava/util/concurrent/RejectedExecutionException;
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    #getter for: Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->access$200(Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 198
    .end local v0           #bitmap:Ljava/lang/Object;,"TResult;"
    .end local v1           #e:Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 227
    .restart local v0       #bitmap:Ljava/lang/Object;,"TResult;"
    :cond_4
    sget-object v3, Lcom/google/glass/util/GlasswareResourceLoadingTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already updating resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fingerprint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v5}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected final loadContentFromCache()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    iget-object v1, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    iput-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    .line 172
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    #getter for: Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->decodedData:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->access$100(Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    .line 176
    :goto_0
    return-object v0

    .line 175
    :cond_0
    monitor-exit v1

    .line 176
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract newCacheEntry()Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<TResult;>;"
        }
    .end annotation
.end method

.method protected abstract prepareContent()V
.end method
