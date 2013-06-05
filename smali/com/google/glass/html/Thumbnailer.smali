.class public Lcom/google/glass/html/Thumbnailer;
.super Ljava/lang/Object;
.source "Thumbnailer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;
    }
.end annotation


# static fields
.field private static final JPEG_COMPRESSION_QUALITY:I = 0x5f

.field private static final PNG_COMPRESSION_QUALITY:I = 0x64

.field private static final TAG:Ljava/lang/String; = null

.field private static final THUMBNAIL_SIZE:I = 0x280


# instance fields
.field private final cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/html/Thumbnailer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/html/Thumbnailer;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 38
    return-void
.end method

.method private static computeSampleSize(II)I
    .locals 3
    .parameter "inputWidth"
    .parameter "inputHeight"

    .prologue
    const/16 v2, 0x500

    .line 190
    const/4 v0, 0x1

    .line 192
    .local v0, sampleSize:I
    :goto_0
    div-int v1, p0, v0

    if-ge v1, v2, :cond_0

    div-int v1, p1, v0

    if-lt v1, v2, :cond_1

    .line 193
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 195
    :cond_1
    return v0
.end method

.method private static isSupportedImageContentType(Ljava/lang/String;)Z
    .locals 5
    .parameter "contentType"

    .prologue
    .line 181
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 182
    .local v3, type:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    const/4 v4, 0x1

    .line 186
    .end local v3           #type:Ljava/lang/String;
    :goto_1
    return v4

    .line 181
    .restart local v3       #type:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v3           #type:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public createThumbnail(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/String;Z)Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;
    .locals 13
    .parameter "attachment"
    .parameter "imagePath"
    .parameter "skipCreatingThumbnail"

    .prologue
    .line 86
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 87
    new-instance v8, Lcom/google/glass/html/Timer;

    invoke-direct {v8}, Lcom/google/glass/html/Timer;-><init>()V

    .line 88
    .local v8, timer:Lcom/google/glass/html/Timer;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/glass/html/Thumbnailer;->isSupportedImageContentType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 89
    sget-object v10, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    .line 177
    :goto_0
    return-object v10

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/html/Thumbnailer;->getThumbnailFile(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/io/File;

    move-result-object v6

    .line 94
    .local v6, thumbnailFile:Ljava/io/File;
    if-nez v6, :cond_1

    .line 95
    sget-object v10, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    const-string v11, "Unable to determine filename for thumbnail"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v10, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 99
    sget-object v10, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_READY:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 103
    sget-object v10, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    const-string v11, "Interrupted!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v10, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 108
    :cond_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 109
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput v10, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 110
    const/4 v10, 0x1

    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 111
    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 112
    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v10, :cond_4

    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v10, :cond_5

    .line 113
    :cond_4
    sget-object v10, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to decode file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v10, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 116
    :cond_5
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 117
    .local v3, originalWidth:I
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 120
    .local v2, originalHeight:I
    const/16 v10, 0x280

    if-gt v3, v10, :cond_6

    const/16 v10, 0x280

    if-gt v2, v10, :cond_6

    .line 121
    sget-object v10, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 125
    :cond_6
    if-eqz p3, :cond_7

    .line 126
    sget-object v10, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_SKIPPED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 129
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 130
    sget-object v10, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    const-string v11, "Interrupted!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v10, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 136
    :cond_8
    invoke-static {v3, v2}, Lcom/google/glass/html/Thumbnailer;->computeSampleSize(II)I

    move-result v10

    iput v10, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 137
    const/4 v10, 0x0

    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 138
    const/4 v10, 0x0

    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 139
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 140
    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 141
    .local v5, thumbnail:Landroid/graphics/Bitmap;
    if-nez v5, :cond_9

    .line 142
    sget-object v10, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to decode file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v10, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 146
    :cond_9
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/16 v11, 0x280

    if-eq v10, v11, :cond_a

    .line 147
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 148
    .local v9, width:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 149
    .local v0, height:I
    sget-object v10, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Resampling thumbnail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-le v9, v0, :cond_b

    .line 151
    mul-int/lit16 v10, v0, 0x280

    div-int v0, v10, v9

    .line 152
    const/16 v9, 0x280

    .line 157
    :goto_1
    invoke-static {v5, v9, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 160
    .end local v0           #height:I
    .end local v9           #width:I
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 161
    sget-object v10, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    const-string v11, "Interrupted!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v10, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 154
    .restart local v0       #height:I
    .restart local v9       #width:I
    :cond_b
    mul-int/lit16 v10, v9, 0x280

    div-int v9, v10, v0

    .line 155
    const/16 v0, 0x280

    goto :goto_1

    .line 166
    .end local v0           #height:I
    .end local v9           #width:I
    :cond_c
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 167
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const-string v10, "image/jpeg"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 168
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5f

    invoke-virtual {v5, v10, v11, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 172
    :goto_2
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, thumbnailName:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/glass/html/Thumbnailer;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v11, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v12

    invoke-virtual {v10, v11, v7, v12}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 175
    sget-object v10, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Generated thumbnail: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v10, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_READY:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 170
    .end local v7           #thumbnailName:Ljava/lang/String;
    :cond_d
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v5, v10, v11, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_2
.end method

.method public getThumbnailFile(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/io/File;
    .locals 4
    .parameter "attachment"

    .prologue
    .line 42
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, thumbnailName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 46
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/glass/html/Thumbnailer;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
