.class public Lcom/google/glass/util/GlasswareMessagesLoadingTask;
.super Lcom/google/glass/util/GlasswareResourceLoadingTask;
.source "GlasswareMessagesLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/GlasswareMessagesLoadingTask$NameCacheEntry;,
        Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/GlasswareResourceLoadingTask",
        "<",
        "Lcom/google/googlex/glass/common/proto/GlasswareMessages;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "cachedFilesManager"
    .parameter "requestDispatcher"
    .parameter
    .parameter "clock"
    .parameter "backgroundExecutor"
    .parameter "projectId"
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
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p4, sharedCache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry<*>;>;"
    sget-object v8, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_MESSAGES:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/util/GlasswareResourceLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;)V
    .locals 1
    .parameter "context"
    .parameter "projectId"
    .parameter "receiver"

    .prologue
    .line 75
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_MESSAGES:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)V

    .line 76
    iput-object p3, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;

    .line 77
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static getGlasswareName(JLcom/google/glass/util/GlasswareMessagesLoadingTask;)Ljava/lang/String;
    .locals 11
    .parameter "timeoutMs"
    .parameter "task"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 168
    cmp-long v6, p0, v7

    if-lez v6, :cond_0

    .line 170
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 173
    :cond_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 174
    .local v2, loadLatch:Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 177
    .local v5, ref:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/googlex/glass/common/proto/GlasswareMessages;>;"
    new-instance v4, Lcom/google/glass/util/GlasswareMessagesLoadingTask$1;

    invoke-direct {v4, v5, v2}, Lcom/google/glass/util/GlasswareMessagesLoadingTask$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 184
    .local v4, receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;
    invoke-direct {p2, v4}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->setMessagesReceiver(Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;)V

    .line 186
    invoke-static {}, Lcom/google/glass/util/Assert;->isUiThread()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 187
    invoke-static {p2}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 194
    :goto_0
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 195
    .local v3, loaded:Z
    if-nez v3, :cond_3

    .line 196
    cmp-long v6, p0, v7

    if-lez v6, :cond_2

    .line 197
    sget-object v6, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->TAG:Ljava/lang/String;

    const-string v7, "Timed out waiting for glassware name"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :goto_1
    const-string v6, ""
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_2
    return-object v6

    .line 189
    .end local v3           #loaded:Z
    :cond_1
    invoke-static {p2}, Lcom/google/glass/util/DeferredContentLoader;->postLoadToUiThread(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    goto :goto_0

    .line 199
    .restart local v3       #loaded:Z
    :cond_2
    :try_start_1
    sget-object v6, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->TAG:Ljava/lang/String;

    const-string v7, "No glassware name available in cache"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 205
    .end local v3           #loaded:Z
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v6, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->TAG:Ljava/lang/String;

    const-string v7, "Interrupted waiting for glassware name"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p2, v10}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->cancel(Z)V

    .line 208
    throw v0

    .line 212
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v3       #loaded:Z
    :cond_3
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    .line 213
    .local v1, glasswareMessages:Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    if-nez v1, :cond_4

    .line 214
    sget-object v6, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->TAG:Ljava/lang/String;

    const-string v7, "Failed to load glassware name"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const-string v6, ""

    goto :goto_2

    .line 218
    :cond_4
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasSpeakableName()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 219
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getSpeakableName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 221
    :cond_5
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasName()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 222
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 225
    :cond_6
    sget-object v6, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->TAG:Ljava/lang/String;

    const-string v7, "Glassware has no defined name."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    const-string v6, ""

    goto :goto_2
.end method

.method public static getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;J)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "entity"
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    sget-object v1, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->TAG:Ljava/lang/String;

    const-string v2, "No glassware resources available for this entity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    const-string v1, ""

    .line 131
    :goto_0
    return-object v1

    .line 129
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, projectId:Ljava/lang/String;
    invoke-static {p0, v0, p2, p3}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;J)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    sget-object v1, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->TAG:Ljava/lang/String;

    const-string v2, "No glassware resources available for this timeline item"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    const-string v1, ""

    .line 98
    :goto_0
    return-object v1

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, projectId:Ljava/lang/String;
    invoke-static {p0, v0, p2, p3}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getGlasswareName(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "projectId"
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;)V

    .line 162
    .local v0, task:Lcom/google/glass/util/GlasswareMessagesLoadingTask;
    invoke-static {p2, p3, v0}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(JLcom/google/glass/util/GlasswareMessagesLoadingTask;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getGlasswareNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "entity"

    .prologue
    .line 139
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static getGlasswareNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 104
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private setMessagesReceiver(Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;

    .line 231
    return-void
.end method


# virtual methods
.method protected bindContent(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)V
    .locals 3
    .parameter "resource"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;

    invoke-interface {v0, p1}, Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;->onMessagesLoaded(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    sget-object v0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->TAG:Ljava/lang/String;

    const-string v1, "Got glassware messages without a receiver to deliver them to."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->bindContent(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    const-string v0, "gm"

    return-object v0
.end method

.method protected newCacheEntry()Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lcom/google/glass/util/GlasswareMessagesLoadingTask$NameCacheEntry;

    invoke-direct {v0}, Lcom/google/glass/util/GlasswareMessagesLoadingTask$NameCacheEntry;-><init>()V

    return-object v0
.end method

.method protected prepareContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->loadContentFromCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    .line 241
    .local v0, messages:Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    if-eqz v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;

    invoke-interface {v1, v0}, Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;->onMessagesLoaded(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)V

    .line 247
    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->cancel(Z)V

    .line 249
    :cond_0
    return-void

    .line 245
    :cond_1
    sget-object v1, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->TAG:Ljava/lang/String;

    const-string v2, "Got glassware messages without a receiver to deliver them to."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
