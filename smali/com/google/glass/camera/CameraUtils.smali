.class public Lcom/google/glass/camera/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final VIDEO_THUMBNAIL_JPEG_QUALITY:I = 0x5a


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/camera/CameraUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/CameraUtils;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "glasscamera"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static buildBitmapFromYuv420Sp([BII)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "input"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 39
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/google/glass/camera/CameraUtils;->populateBitmapFromYuv420Sp([BLandroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->TAG:Ljava/lang/String;

    const-string v2, "buildBitmapFromYuv420Sp failed! Result may be corrupted."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-object v0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "videoFilePath"
    .parameter "thumbnailFileName"

    .prologue
    const/4 v1, 0x0

    .line 62
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 63
    :cond_0
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoFilePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thumbnailFileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 87
    :goto_0
    return-object v0

    .line 66
    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, thumbnail:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 69
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create thumbnail for video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    new-instance v3, Lcom/google/glass/camera/CameraUtils$1;

    invoke-direct {v3, v0}, Lcom/google/glass/camera/CameraUtils$1;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 86
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created thumbnail for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static native populateBitmapFromYuv420Sp([BLandroid/graphics/Bitmap;)Z
.end method
