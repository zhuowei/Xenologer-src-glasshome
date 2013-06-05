.class public Lcom/google/glass/util/CachedBitmapFactory;
.super Ljava/lang/Object;
.source "CachedBitmapFactory.java"


# static fields
.field private static final FILE_READ_BUFFER:[B = null

.field private static final TAG:Ljava/lang/String; = null

.field private static final TEMP_STORAGE_BUFFER_SIZE_BYTES:I = 0x4000

.field private static final TEMP_STORAGE_NUM_BUFFERS:I = 0x4

.field private static tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field protected final context:Landroid/content/Context;

.field protected final minHeight:I

.field protected final minWidth:I


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

    .line 33
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 36
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 37
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    const/high16 v1, 0x20

    new-array v1, v1, [B

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory;->context:Landroid/content/Context;

    .line 61
    iput p2, p0, Lcom/google/glass/util/CachedBitmapFactory;->minWidth:I

    .line 62
    iput p3, p0, Lcom/google/glass/util/CachedBitmapFactory;->minHeight:I

    .line 63
    new-instance v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 64
    return-void
.end method

.method public static loadBitmapFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 25
    .parameter "path"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    .line 194
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 196
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_1

    .line 198
    sget-object v19, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "The file \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\" does not exist. Not decoding it as an image."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v2, 0x0

    .line 274
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-object v2

    .line 202
    .restart local p1
    .restart local p2
    :cond_1
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 205
    .local v13, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v19

    iput-object v0, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 209
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 212
    sget-object v19, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    .line 213
    .local v18, tempStorage:[B
    if-eqz v18, :cond_2

    .line 214
    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 223
    :cond_2
    :try_start_0
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER:[B

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 228
    .local v16, startTime:J
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v21

    sget-object v19, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER:[B

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v19, v21, v23

    if-lez v19, :cond_5

    .line 229
    sget-object v19, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Shared file read buffer is too small to hold: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {v9}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v3

    .line 231
    .local v3, buffer:[B
    array-length v12, v3

    .line 234
    .local v12, length:I
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 244
    :goto_1
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 245
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v3, v0, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 248
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iget v11, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 249
    .local v11, fullWidth:I
    iget v10, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 250
    .local v10, fullHeight:I
    const/16 v19, 0x1

    if-gtz p1, :cond_3

    const/16 p1, 0x1

    .end local p1
    :cond_3
    div-int v21, v11, p1

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 251
    .local v14, sampleSizeX:I
    const/16 v19, 0x1

    if-gtz p2, :cond_4

    const/16 p2, 0x1

    .end local p2
    :cond_4
    div-int v21, v10, p2

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 252
    .local v15, sampleSizeY:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    iput v0, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 255
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 256
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v3, v0, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 259
    .local v7, endTime:J
    iget v5, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 260
    .local v5, decodedWidth:I
    iget v4, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 261
    .local v4, decodedHeight:I
    sget-object v19, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Decoded a "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " image ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ") into a "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bitmap, took "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v7, v16

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    if-eqz v18, :cond_0

    .line 271
    sget-object v19, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 236
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #buffer:[B
    .end local v4           #decodedHeight:I
    .end local v5           #decodedWidth:I
    .end local v7           #endTime:J
    .end local v10           #fullHeight:I
    .end local v11           #fullWidth:I
    .end local v12           #length:I
    .end local v14           #sampleSizeX:I
    .end local v15           #sampleSizeY:I
    .restart local p1
    .restart local p2
    :cond_5
    :try_start_2
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER:[B

    .line 237
    .restart local v3       #buffer:[B
    invoke-static {v9, v3}, Lcom/google/glass/util/FileHelper;->read(Ljava/io/File;[B)I

    move-result v12

    .line 240
    .restart local v12       #length:I
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    goto/16 :goto_1

    .line 263
    .end local v3           #buffer:[B
    .end local v12           #length:I
    .end local v16           #startTime:J
    .end local p1
    .end local p2
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 264
    :catch_0
    move-exception v6

    .line 265
    .local v6, e:Ljava/io/IOException;
    :try_start_4
    sget-object v19, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "The file \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\" could not be read. Not decoding it as an image."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 266
    const/4 v2, 0x0

    .line 270
    if-eqz v18, :cond_0

    .line 271
    sget-object v19, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 270
    .end local v6           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v19

    if-eqz v18, :cond_6

    .line 271
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_6
    throw v19
.end method


# virtual methods
.method public final cacheContainsAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z
    .locals 3
    .parameter "attachment"

    .prologue
    .line 132
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 135
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const/4 v1, 0x1

    .line 140
    :goto_0
    return v1

    .line 139
    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 140
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public decodeAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "attachment"
    .parameter "lookupOnly"

    .prologue
    .line 76
    if-nez p2, :cond_0

    .line 77
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 80
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/Attachment;Z)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v1, 0x0

    .line 84
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public decodeFile(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "path"
    .parameter "lookupOnly"

    .prologue
    .line 158
    if-eqz p2, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 162
    iget v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->minWidth:I

    iget v1, p0, Lcom/google/glass/util/CachedBitmapFactory;->minHeight:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/Attachment;Z)Ljava/lang/String;
    .locals 5
    .parameter "attachment"
    .parameter "lookupOnly"

    .prologue
    .line 98
    if-nez p2, :cond_0

    .line 99
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    .line 120
    :goto_0
    return-object v2

    .line 107
    :cond_1
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 108
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    if-nez p2, :cond_2

    .line 110
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentFromServer(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 112
    .local v1, content:Lcom/google/protobuf/ByteString;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 113
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/google/glass/util/FileSaver;->newSaver(Lcom/google/protobuf/ByteString;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 120
    .end local v1           #content:Lcom/google/protobuf/ByteString;
    :cond_2
    :goto_1
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 116
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

.method protected final loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    .line 167
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 169
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/util/CachedFilesManager;->getType(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;

    move-result-object v0

    .line 172
    .local v0, type:Lcom/google/glass/util/CachedFilesManager$Type;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->NONE:Lcom/google/glass/util/CachedFilesManager$Type;

    if-eq v0, v1, :cond_0

    .line 173
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/util/CachedBitmapFactory$1;

    invoke-direct {v2, p0, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory$1;-><init>(Lcom/google/glass/util/CachedBitmapFactory;II)V

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 181
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method
