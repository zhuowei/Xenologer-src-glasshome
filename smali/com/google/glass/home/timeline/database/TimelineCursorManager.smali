.class public Lcom/google/glass/home/timeline/database/TimelineCursorManager;
.super Ljava/lang/Object;
.source "TimelineCursorManager.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Lcom/google/glass/home/timeline/TimelineItemLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/glass/home/timeline/TimelineItemLoader;"
    }
.end annotation


# static fields
.field private static final DESCENDING_HINTS:[I = null

.field private static final ITEM_CACHE_SIZE:I = 0x64

.field private static final LINEAR_SEARCH_MAX_ITERATIONS:I = 0x64

.field private static final POSITION_CACHE_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cursor:Landroid/database/Cursor;

.field private cursorCount:J

.field private final cursorLock:Ljava/util/concurrent/locks/Lock;

.field private descDisplayTime:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private itemCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;",
            ">;"
        }
    .end annotation
.end field

.field private positionCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/google/glass/timeline/TimelineItemId;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->DESCENDING_HINTS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4
    .parameter "descDisplayTime"

    .prologue
    const/16 v3, 0x64

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/google/glass/util/PriorityThreadFactory;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->executor:Ljava/util/concurrent/Executor;

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    .line 42
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->itemCache:Landroid/util/LruCache;

    .line 47
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->positionCache:Landroid/util/LruCache;

    .line 62
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->descDisplayTime:Z

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorCount:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->itemCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->positionCache:Landroid/util/LruCache;

    return-object v0
.end method

.method private setCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 222
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 224
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 226
    :try_start_0
    iput-object p1, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    .line 227
    iget-wide v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorCount:J

    .line 228
    sget-object v0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received updated cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->itemCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 232
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->positionCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 236
    return-void

    .line 234
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public asyncRead(ILcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;)V
    .locals 7
    .parameter "position"
    .parameter "callback"

    .prologue
    .line 118
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 121
    iget-wide v2, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorCount:J

    .line 124
    .local v2, cursorNumber:J
    iget-object v6, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;-><init>(Lcom/google/glass/home/timeline/database/TimelineCursorManager;JILcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method public find(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 7
    .parameter "id"

    .prologue
    .line 76
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 77
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->positionCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 84
    .local v6, position:Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 87
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->descDisplayTime:Z

    if-eqz v0, :cond_2

    .line 89
    sget-object v5, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->DESCENDING_HINTS:[I

    .line 95
    .local v5, hints:[I
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getDisplayTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    iget-boolean v4, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->descDisplayTime:Z

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->binarySearch(Ljava/lang/String;JLandroid/database/Cursor;Z[I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 99
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 100
    sget-object v0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with binary search, falling back to linear search."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/TimelineHelper;->linearSearch(Ljava/lang/String;Landroid/database/Cursor;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->positionCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v5           #hints:[I
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 92
    :cond_2
    const/4 v0, 0x2

    :try_start_1
    new-array v5, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, v5, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    aput v1, v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v5       #hints:[I
    goto :goto_0

    .line 112
    .end local v5           #hints:[I
    .end local v6           #position:Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 68
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->setCursor(Landroid/database/Cursor;)V

    .line 219
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
