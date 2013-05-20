.class public Lcom/google/glass/util/CachedBitmapFactory;
.super Ljava/lang/Object;
.source "CachedBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final TEMP_STORAGE_BUFFER_SIZE_BYTES:I = 0x4000

.field private static final TEMP_STORAGE_NUM_BUFFERS:I = 0x4

.field private static decodeBufferPool:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field private final bitmapLoadLock:Ljava/lang/Object;

.field private final decodeCache:Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 25
    const-class v1, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->decodeBufferPool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 45
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->decodeBufferPool:Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "maxCacheSize"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->bitmapLoadLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/google/glass/util/CachedBitmapFactory$1;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory$1;-><init>(Lcom/google/glass/util/CachedBitmapFactory;III)V

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->decodeCache:Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;

    .line 78
    new-instance v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    .line 211
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 213
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/util/CachedFilesManager;->getType(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;

    move-result-object v0

    .line 216
    .local v0, type:Lcom/google/glass/util/CachedFilesManager$Type;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->NONE:Lcom/google/glass/util/CachedFilesManager$Type;

    if-eq v0, v1, :cond_0

    .line 217
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/util/CachedBitmapFactory$2;

    invoke-direct {v2, p0, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory$2;-><init>(Lcom/google/glass/util/CachedBitmapFactory;II)V

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 225
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadBitmapFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "path"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    const/4 v10, 0x1

    .line 238
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, attachmentFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 240
    sget-object v10, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The file \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" does not exist. Not decoding it as an image."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v1, 0x0

    .line 279
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-object v1

    .line 245
    .restart local p1
    .restart local p2
    :cond_1
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 246
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 247
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 250
    iget v6, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 251
    .local v6, fullWidth:I
    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 252
    .local v5, fullHeight:I
    if-gtz p1, :cond_2

    move p1, v10

    .end local p1
    :cond_2
    div-int v11, v6, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 253
    .local v8, sampleSizeX:I
    if-gtz p2, :cond_3

    move p2, v10

    .end local p2
    :cond_3
    div-int v11, v5, p2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 254
    .local v9, sampleSizeY:I
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 257
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v10, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 260
    sget-object v10, Lcom/google/glass/util/CachedBitmapFactory;->decodeBufferPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 261
    .local v2, buffer:[B
    if-eqz v2, :cond_4

    .line 262
    iput-object v2, v7, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 266
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 267
    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 268
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 269
    .local v4, decodedWidth:I
    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 271
    .local v3, decodedHeight:I
    sget-object v10, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Decoded a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " image ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") into a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bitmap."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v2, :cond_0

    .line 276
    sget-object v10, Lcom/google/glass/util/CachedBitmapFactory;->decodeBufferPool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v10, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public cacheContainsAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z
    .locals 3
    .parameter "attachment"

    .prologue
    .line 199
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 202
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const/4 v1, 0x1

    .line 207
    :goto_0
    return v1

    .line 206
    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 207
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->decodeCache:Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;

    invoke-virtual {v0}, Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;->evictAll()V

    .line 86
    return-void
.end method

.method public decodeAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "attachment"
    .parameter "lookupOnly"

    .prologue
    .line 143
    if-nez p2, :cond_0

    .line 144
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 147
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/Attachment;Z)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const/4 v1, 0x0

    .line 151
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public decodeFile(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "path"
    .parameter "lookupOnly"

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 104
    :cond_0
    if-nez p1, :cond_2

    .line 105
    const/4 v1, 0x0

    .line 130
    :cond_1
    :goto_0
    return-object v1

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/google/glass/util/CachedBitmapFactory;->decodeCache:Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 109
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 113
    iget-object v3, p0, Lcom/google/glass/util/CachedBitmapFactory;->bitmapLoadLock:Ljava/lang/Object;

    monitor-enter v3

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/util/CachedBitmapFactory;->decodeCache:Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 120
    if-nez v1, :cond_3

    .line 121
    iget-object v2, p0, Lcom/google/glass/util/CachedBitmapFactory;->decodeCache:Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;->provideBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_4

    .line 123
    iget-object v2, p0, Lcom/google/glass/util/CachedBitmapFactory;->decodeCache:Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;

    invoke-virtual {v2, p1, v1}, Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
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

    .line 125
    :cond_4
    :try_start_1
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

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

.method public getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/Attachment;Z)Ljava/lang/String;
    .locals 5
    .parameter "attachment"
    .parameter "lookupOnly"

    .prologue
    .line 165
    if-nez p2, :cond_0

    .line 166
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    .line 187
    :goto_0
    return-object v2

    .line 174
    :cond_1
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 175
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    if-nez p2, :cond_2

    .line 177
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentFromServer(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 179
    .local v1, content:Lcom/google/protobuf/ByteString;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 180
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/google/glass/util/FileSaver;->newSaver(Lcom/google/protobuf/ByteString;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 187
    .end local v1           #content:Lcom/google/protobuf/ByteString;
    :cond_2
    :goto_1
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 183
    .restart local v1       #content:Lcom/google/protobuf/ByteString;
    :cond_3
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get attachment from server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
