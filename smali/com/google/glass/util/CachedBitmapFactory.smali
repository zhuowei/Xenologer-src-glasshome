.class public Lcom/google/glass/util/CachedBitmapFactory;
.super Ljava/lang/Object;
.source "CachedBitmapFactory.java"


# static fields
.field private static final FILE_READ_BUFFER:[B = null

.field private static final MAX_IMAGE_SIZE:I = 0x400

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

    .line 24
    const-class v1, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 36
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
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
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory;->context:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcom/google/glass/util/CachedBitmapFactory;->minWidth:I

    .line 64
    iput p3, p0, Lcom/google/glass/util/CachedBitmapFactory;->minHeight:I

    .line 65
    new-instance v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 66
    return-void
.end method

.method private static isCancelled(Lcom/google/glass/util/Condition;)Z
    .locals 1
    .parameter "isCancelled"

    .prologue
    .line 329
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/util/Condition;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadBitmapFile(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 26
    .parameter "path"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "isCancelled"

    .prologue
    .line 214
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 216
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_1

    .line 218
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "The file \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\" does not exist. Not decoding it as an image."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v2, 0x0

    .line 325
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-object v2

    .line 222
    .restart local p1
    .restart local p2
    :cond_1
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 226
    .local v13, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 229
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [B

    .line 230
    .local v19, tempStorage:[B
    if-eqz v19, :cond_2

    .line 231
    move-object/from16 v0, v19

    iput-object v0, v13, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 241
    :cond_2
    :try_start_0
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER:[B

    monitor-enter v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 245
    .local v17, startTime:J
    invoke-static/range {p3 .. p3}, Lcom/google/glass/util/CachedBitmapFactory;->isCancelled(Lcom/google/glass/util/Condition;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 246
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    const-string v22, "Request for bitmap has been cancelled. Will not read file."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v2, 0x0

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    if-eqz v19, :cond_0

    .line 322
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    :cond_3
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v22

    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v20, v22, v24

    if-lez v20, :cond_4

    .line 253
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Shared file read buffer is too small to hold: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " bytes."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v3, v0, [B

    .line 255
    .local v3, buffer:[B
    move-object/from16 v0, p3

    invoke-static {v9, v3, v0}, Lcom/google/glass/util/FileHelper;->read(Ljava/io/File;[BLcom/google/glass/util/Condition;)I

    move-result v12

    .line 258
    .local v12, length:I
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 268
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/google/glass/util/CachedBitmapFactory;->isCancelled(Lcom/google/glass/util/Condition;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 269
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    const-string v22, "Request for bitmap has been cancelled. Will not decode dimensions."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v2, 0x0

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    if-eqz v19, :cond_0

    .line 322
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 260
    .end local v3           #buffer:[B
    .end local v12           #length:I
    :cond_4
    :try_start_3
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER:[B

    .line 261
    .restart local v3       #buffer:[B
    move-object/from16 v0, p3

    invoke-static {v9, v3, v0}, Lcom/google/glass/util/FileHelper;->read(Ljava/io/File;[BLcom/google/glass/util/Condition;)I

    move-result v12

    .line 264
    .restart local v12       #length:I
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    goto :goto_1

    .line 314
    .end local v3           #buffer:[B
    .end local v12           #length:I
    .end local v17           #startTime:J
    .end local p1
    .end local p2
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 315
    :catch_0
    move-exception v6

    .line 316
    .local v6, e:Ljava/io/IOException;
    :try_start_5
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "The file \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\" could not be read. Not decoding it as an image."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 317
    const/4 v2, 0x0

    .line 321
    if-eqz v19, :cond_0

    .line 322
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 274
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #buffer:[B
    .restart local v12       #length:I
    .restart local v17       #startTime:J
    .restart local p1
    .restart local p2
    :cond_5
    const/16 v20, 0x1

    :try_start_6
    move/from16 v0, v20

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 275
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v3, v0, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 278
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iget v11, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 279
    .local v11, fullWidth:I
    iget v10, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 280
    .local v10, fullHeight:I
    const/16 v20, 0x1

    if-gtz p1, :cond_6

    const/16 p1, 0x1

    .end local p1
    :cond_6
    div-int v22, v11, p1

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 281
    .local v15, sampleSizeX:I
    const/16 v20, 0x1

    if-gtz p2, :cond_7

    const/16 p2, 0x1

    .end local p2
    :cond_7
    div-int v22, v10, p2

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 282
    .local v16, sampleSizeY:I
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v14

    .line 286
    .local v14, sampleSize:I
    :goto_2
    div-int v20, v11, v14

    const/16 v22, 0x400

    move/from16 v0, v20

    move/from16 v1, v22

    if-gt v0, v1, :cond_8

    div-int v20, v10, v14

    const/16 v22, 0x400

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    .line 287
    :cond_8
    mul-int/lit8 v14, v14, 0x2

    goto :goto_2

    .line 289
    :cond_9
    iput v14, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 293
    if-eqz p3, :cond_a

    new-instance v20, Lcom/google/glass/util/CachedBitmapFactory$2;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lcom/google/glass/util/CachedBitmapFactory$2;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/glass/util/Condition;->addCallback(Ljava/lang/Runnable;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 301
    :cond_a
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 302
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v3, v0, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 305
    .local v7, endTime:J
    iget v5, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 306
    .local v5, decodedWidth:I
    iget v4, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 307
    .local v4, decodedHeight:I
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Decoded a "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " image ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") into a "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " bitmap, took "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sub-long v23, v7, v17

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 321
    if-eqz v19, :cond_0

    .line 322
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 311
    .end local v4           #decodedHeight:I
    .end local v5           #decodedWidth:I
    .end local v7           #endTime:J
    :cond_b
    :try_start_7
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    const-string v22, "Request for bitmap has been cancelled. Will not decode image."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v2, 0x0

    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 321
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    if-eqz v19, :cond_0

    .line 322
    sget-object v20, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 321
    .end local v3           #buffer:[B
    .end local v10           #fullHeight:I
    .end local v11           #fullWidth:I
    .end local v12           #length:I
    .end local v14           #sampleSize:I
    .end local v15           #sampleSizeX:I
    .end local v16           #sampleSizeY:I
    .end local v17           #startTime:J
    :catchall_1
    move-exception v20

    if-eqz v19, :cond_c

    .line 322
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_c
    throw v20
.end method


# virtual methods
.method public final cacheContainsAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z
    .locals 3
    .parameter "attachment"

    .prologue
    .line 146
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 149
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const/4 v1, 0x1

    .line 154
    :goto_0
    return v1

    .line 153
    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 154
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public decodeAttachment(Lcom/google/googlex/glass/common/proto/Attachment;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "attachment"
    .parameter "lookupOnly"
    .parameter "isCancelled"

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 84
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 87
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/Attachment;Z)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const/4 v1, 0x0

    .line 91
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "path"
    .parameter "lookupOnly"
    .parameter "isCancelled"

    .prologue
    .line 174
    if-eqz p2, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 177
    :cond_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 178
    iget v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->minWidth:I

    iget v1, p0, Lcom/google/glass/util/CachedBitmapFactory;->minHeight:I

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmap(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/Attachment;Z)Ljava/lang/String;
    .locals 6
    .parameter "attachment"
    .parameter "lookupOnly"

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 106
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    .line 134
    :goto_0
    return-object v3

    .line 114
    :cond_1
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 115
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    if-nez p2, :cond_2

    .line 117
    sget-object v3, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    const/4 v1, 0x0

    .line 121
    .local v1, content:Lcom/google/protobuf/ByteString;
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentFromServer(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 127
    sget-object v3, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/google/glass/util/FileSaver;->newSaver(Lcom/google/protobuf/ByteString;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 134
    .end local v1           #content:Lcom/google/protobuf/ByteString;
    :cond_2
    :goto_2
    sget-object v3, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 122
    .restart local v1       #content:Lcom/google/protobuf/ByteString;
    :catch_0
    move-exception v2

    .line 123
    .local v2, e:Ljava/lang/InterruptedException;
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupted while fetching attachment from server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 130
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_3
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get attachment from server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected final loadBitmap(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "isCancelled"

    .prologue
    .line 184
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 186
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/util/CachedFilesManager;->getType(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;

    move-result-object v0

    .line 189
    .local v0, type:Lcom/google/glass/util/CachedFilesManager$Type;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->NONE:Lcom/google/glass/util/CachedFilesManager$Type;

    if-eq v0, v1, :cond_0

    .line 190
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/util/CachedBitmapFactory$1;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/google/glass/util/CachedBitmapFactory$1;-><init>(Lcom/google/glass/util/CachedBitmapFactory;IILcom/google/glass/util/Condition;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 198
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method
