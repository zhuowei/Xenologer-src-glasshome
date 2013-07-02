.class public Lcom/google/glass/util/MemoryCachedBitmapFactory;
.super Lcom/google/glass/util/CachedBitmapFactory;
.source "MemoryCachedBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bitmapLoadLock:Ljava/lang/Object;

.field private final decodeCache:Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/google/glass/util/MemoryCachedBitmapFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/MemoryCachedBitmapFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "maxCacheSizeKb"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory;-><init>(Landroid/content/Context;II)V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/MemoryCachedBitmapFactory;->bitmapLoadLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;

    invoke-direct {v0, p0, p4}, Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;-><init>(Lcom/google/glass/util/MemoryCachedBitmapFactory;I)V

    iput-object v0, p0, Lcom/google/glass/util/MemoryCachedBitmapFactory;->decodeCache:Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;

    .line 50
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/util/MemoryCachedBitmapFactory;->decodeCache:Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;

    invoke-virtual {v0}, Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;->evictAll()V

    .line 57
    return-void
.end method

.method public decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "path"
    .parameter "lookupOnly"
    .parameter "isCancelled"

    .prologue
    .line 61
    if-nez p2, :cond_0

    .line 62
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 65
    :cond_0
    if-nez p1, :cond_2

    .line 66
    const/4 v1, 0x0

    .line 91
    :cond_1
    :goto_0
    return-object v1

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/google/glass/util/MemoryCachedBitmapFactory;->decodeCache:Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 70
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 74
    iget-object v3, p0, Lcom/google/glass/util/MemoryCachedBitmapFactory;->bitmapLoadLock:Ljava/lang/Object;

    monitor-enter v3

    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/util/MemoryCachedBitmapFactory;->decodeCache:Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 81
    if-nez v1, :cond_3

    .line 82
    iget v2, p0, Lcom/google/glass/util/MemoryCachedBitmapFactory;->minWidth:I

    iget v4, p0, Lcom/google/glass/util/MemoryCachedBitmapFactory;->minHeight:I

    invoke-virtual {p0, p1, v2, v4, p3}, Lcom/google/glass/util/MemoryCachedBitmapFactory;->loadBitmap(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    iget-object v2, p0, Lcom/google/glass/util/MemoryCachedBitmapFactory;->decodeCache:Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;

    invoke-virtual {v2, p1, v1}, Lcom/google/glass/util/MemoryCachedBitmapFactory$BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_3
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 86
    :cond_4
    :try_start_1
    sget-object v2, Lcom/google/glass/util/MemoryCachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image loading error, bitmap==null, path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
