.class public Lcom/google/glass/util/GlasswareIconLoadingTask;
.super Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
.source "GlasswareIconLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/GlasswareIconLoadingTask$3;,
        Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;,
        Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final CACHE_RETRY_DELAY_MS:J = 0x0L

#the value of this static final field might be set in the static constructor
.field static final CACHE_VALIDATION_INTERVAL_MS:J = 0x0L

.field private static final MAX_CACHE_ENTRIES:I = 0x40

.field private static final SHARED_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final cacheFilename:Ljava/lang/String;

.field private final cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final clock:Lcom/google/glass/util/Clock;

.field private entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

.field private final iconView:Landroid/widget/ImageView;

.field private final projectId:Ljava/lang/String;

.field private final requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private final resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

.field private final sharedCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-class v0, Lcom/google/glass/util/GlasswareIconLoadingTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask;->TAG:Ljava/lang/String;

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/util/GlasswareIconLoadingTask;->CACHE_VALIDATION_INTERVAL_MS:J

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/util/GlasswareIconLoadingTask;->CACHE_RETRY_DELAY_MS:J

    .line 64
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V
    .locals 9
    .parameter "context"
    .parameter "projectId"
    .parameter "size"
    .parameter "iconView"

    .prologue
    .line 134
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v2

    sget-object v3, Lcom/google/glass/util/GlasswareIconLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    new-instance v4, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v4}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/util/GlasswareIconLoadingTask;-><init>(Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V

    .line 142
    return-void
.end method

.method constructor <init>(Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V
    .locals 2
    .parameter "cachedFilesManager"
    .parameter "requestDispatcher"
    .parameter
    .parameter "clock"
    .parameter "backgroundExecutor"
    .parameter "projectId"
    .parameter "size"
    .parameter "iconView"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/CachedFilesManager;",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;",
            ">;",
            "Lcom/google/glass/util/Clock;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p3, sharedCache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;>;"
    invoke-direct {p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 150
    iput-object p2, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 151
    iput-object p3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->sharedCache:Landroid/util/LruCache;

    .line 152
    iput-object p4, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->clock:Lcom/google/glass/util/Clock;

    .line 153
    iput-object p5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 154
    iput-object p6, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->projectId:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->cacheFilename:Ljava/lang/String;

    .line 156
    iput-object p8, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    .line 158
    sget-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$3;->$SwitchMap$com$google$glass$util$GlasswareIconLoadingTask$IconSize:[I

    invoke-virtual {p7}, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 164
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_MEDIUM:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    iput-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 167
    :goto_0
    return-void

    .line 160
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_SMALL:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    iput-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/util/GlasswareIconLoadingTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->downloadIconAndUpdateValidationTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/util/GlasswareIconLoadingTask;)Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/util/GlasswareIconLoadingTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->loadFromDiskCache()Z

    move-result v0

    return v0
.end method

.method private downloadIcon()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 282
    sget-object v4, Lcom/google/glass/util/GlasswareIconLoadingTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fingerprint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    invoke-virtual {v6}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->setType(Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    invoke-virtual {v5}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->setFingerprint(J)Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/ResourceRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ResourceRequest;

    move-result-object v0

    .line 290
    .local v0, request:Lcom/google/googlex/glass/common/proto/ResourceRequest;
    iget-object v4, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v5, Lcom/google/glass/net/ServerConstants$Action;->RESOURCE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v6, Lcom/google/googlex/glass/common/proto/ResourceResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v4, v5, v0, v6}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/Parser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/ResourceResponse;

    .line 293
    .local v1, response:Lcom/google/googlex/glass/common/proto/ResourceResponse;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getStatus()Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    move-result-object v4

    sget-object v5, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    if-ne v4, v5, :cond_1

    .line 294
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->hasData()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->hasFingerprint()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    sget-object v3, Lcom/google/glass/util/GlasswareIconLoadingTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fingerprint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getFingerprint()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getFingerprint()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/glass/util/GlasswareIconLoadingTask;->saveToDiskCache(J[B)V

    .line 309
    :goto_0
    return v2

    .line 299
    :cond_0
    sget-object v3, Lcom/google/glass/util/GlasswareIconLoadingTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getStatus()Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    move-result-object v4

    sget-object v5, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->NOT_FOUND:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    if-ne v4, v5, :cond_2

    .line 304
    sget-object v4, Lcom/google/glass/util/GlasswareIconLoadingTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-wide/16 v4, 0x0

    new-array v3, v3, [B

    invoke-direct {p0, v4, v5, v3}, Lcom/google/glass/util/GlasswareIconLoadingTask;->saveToDiskCache(J[B)V

    goto :goto_0

    .line 308
    :cond_2
    sget-object v2, Lcom/google/glass/util/GlasswareIconLoadingTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 309
    goto/16 :goto_0
.end method

.method private downloadIconAndUpdateValidationTime()V
    .locals 5

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->downloadIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/google/glass/util/GlasswareIconLoadingTask;->CACHE_VALIDATION_INTERVAL_MS:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->setNextValidationTime(J)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/google/glass/util/GlasswareIconLoadingTask;->CACHE_RETRY_DELAY_MS:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->setNextValidationTime(J)V

    goto :goto_0
.end method

.method private loadFromDiskCache()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 334
    iget-object v3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v4, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->cacheFilename:Ljava/lang/String;

    new-instance v6, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v6}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/glass/util/CachedFilesManager;->load(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 335
    .local v0, fileData:[B
    if-eqz v0, :cond_0

    array-length v3, v0

    if-ge v3, v7, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v2

    .line 338
    :cond_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x8

    new-array v1, v3, [B

    .line 339
    .local v1, iconData:[B
    array-length v3, v1

    invoke-static {v0, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    iget-object v2, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    invoke-static {v0}, Lcom/google/common/primitives/Longs;->fromByteArray([B)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->populate([BJ)V

    .line 341
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private populateCacheEntry()V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v2, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->downloadIconAndUpdateValidationTime()V

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->loadFromDiskCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    sget-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->populate([BJ)V

    .line 245
    :cond_1
    return-void
.end method

.method private saveToDiskCache(J[B)V
    .locals 4
    .parameter "fingerprint"
    .parameter "data"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v2, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->cacheFilename:Ljava/lang/String;

    new-instance v3, Lcom/google/glass/util/GlasswareIconLoadingTask$2;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/glass/util/GlasswareIconLoadingTask$2;-><init>(Lcom/google/glass/util/GlasswareIconLoadingTask;J[B)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 327
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/util/GlasswareIconLoadingTask;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/GlasswareIconLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected loadContent()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 181
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 183
    invoke-virtual {p0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    const/4 v0, 0x0

    .line 229
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    const/4 v2, 0x0

    .line 188
    .local v2, isNewEntry:Z
    iget-object v4, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->sharedCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 189
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    iput-object v3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    .line 190
    iget-object v3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    if-nez v3, :cond_2

    .line 191
    new-instance v3, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    invoke-direct {v3}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;-><init>()V

    iput-object v3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    .line 192
    iget-object v3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->cacheFilename:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    invoke-virtual {v3, v5, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/4 v2, 0x1

    .line 195
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    if-eqz v2, :cond_3

    .line 198
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->populateCacheEntry()V

    .line 201
    :cond_3
    iget-object v3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    invoke-virtual {v3}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->waitForBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    #getter for: Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->access$200(Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v3}, Lcom/google/glass/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    invoke-virtual {v5}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->getNextValidationTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 209
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/glass/util/GlasswareIconLoadingTask$1;

    invoke-direct {v4, p0}, Lcom/google/glass/util/GlasswareIconLoadingTask$1;-><init>(Lcom/google/glass/util/GlasswareIconLoadingTask;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, e:Ljava/util/concurrent/RejectedExecutionException;
    iget-object v3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    #getter for: Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->access$200(Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 195
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 224
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    sget-object v3, Lcom/google/glass/util/GlasswareIconLoadingTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already updating icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fingerprint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    invoke-virtual {v5}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected bridge synthetic loadContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->loadContent()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected loadContentFromCache()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->sharedCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v2, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    iput-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    .line 172
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->entry:Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;

    #getter for: Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;->access$100(Lcom/google/glass/util/GlasswareIconLoadingTask$CacheEntry;)Landroid/graphics/Bitmap;

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

.method protected prepareContent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->loadContentFromCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask;->showView(Landroid/view/View;Z)V

    .line 255
    invoke-virtual {p0, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask;->cancel(Z)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
