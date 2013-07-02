.class public Lcom/google/glass/timeline/TimelineNotificationHelper;
.super Ljava/lang/Object;
.source "TimelineNotificationHelper.java"


# static fields
.field public static final ACTION_NOTIFY_TIMELINE_ITEM:Ljava/lang/String; = "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

.field private static final ATTACHMENT_TYPES_TO_PRELOAD:[Ljava/lang/String; = null

.field public static final EXTRA_BUNDLE_ITEM:Ljava/lang/String; = "bundle_item"

.field public static final EXTRA_BUNDLE_ITEM_ID:Ljava/lang/String; = "bundle_item_id"

.field public static final EXTRA_ITEM:Ljava/lang/String; = "item"

.field public static final EXTRA_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final EXTRA_NUM_NOTIFICATIONS:Ljava/lang/String; = "numNotifications"

.field private static final HTML_RESOURCE_WAIT_TIME_SECONDS:I = 0x1e

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->getAttachmentTypesToPreload()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->ATTACHMENT_TYPES_TO_PRELOAD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getAttachmentTypesToPreload()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 205
    .local v0, types:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    const-string v1, "video/vnd.google-glass.stream-url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;I)V
    .locals 2
    .parameter "context"
    .parameter "item"
    .parameter "numNotifications"

    .prologue
    .line 71
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineNotificationHelper$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/google/glass/timeline/TimelineNotificationHelper$1;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method static preloadAttachments(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 9
    .parameter "bitmapFactory"
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, html:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 144
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 146
    .local v4, renderer:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/html/HtmlRenderer;>;"
    :try_start_0
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 149
    .local v5, resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/google/glass/timeline/TimelineNotificationHelper$2;

    invoke-direct {v7, v4, p1, v5}, Lcom/google/glass/timeline/TimelineNotificationHelper$2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    const-wide/16 v6, 0x1e

    :try_start_1
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    :goto_0
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/google/glass/timeline/TimelineNotificationHelper$3;

    invoke-direct {v7, v4}, Lcom/google/glass/timeline/TimelineNotificationHelper$3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 201
    .end local v4           #renderer:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/html/HtmlRenderer;>;"
    .end local v5           #resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;
    :cond_0
    :goto_1
    return-void

    .line 178
    .restart local v4       #renderer:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/html/HtmlRenderer;>;"
    .restart local v5       #resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v1

    .line 179
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v6, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    const-string v7, "Interrupted while waiting for HTML resources."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 182
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v5           #resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v6

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Lcom/google/glass/timeline/TimelineNotificationHelper$3;

    invoke-direct {v8, v4}, Lcom/google/glass/timeline/TimelineNotificationHelper$3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    throw v6

    .line 192
    .end local v4           #renderer:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/html/HtmlRenderer;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 193
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/glass/timeline/TimelineNotificationHelper;->ATTACHMENT_TYPES_TO_PRELOAD:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/glass/timeline/TimelineHelper;->isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 195
    sget-object v6, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preloading image attachment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for notification."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v6, v7}, Lcom/google/glass/util/CachedBitmapFactory;->decodeAttachment(Lcom/google/googlex/glass/common/proto/Attachment;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    goto :goto_1
.end method
