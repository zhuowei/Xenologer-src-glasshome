.class public Lcom/google/glass/camera/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private captureTimeMillis:J

.field private filePath:Ljava/lang/String;

.field private isGcam:Z

.field private jpegTimeMillis:J

.field private requestTimeMillis:J

.field private shutterTimeMillis:J

.field private thumbnail:Landroid/graphics/Bitmap;

.field private thumbnailTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/glass/camera/Picture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/Picture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/Picture;->requestTimeMillis:J

    .line 67
    sget-object v0, Lcom/google/glass/camera/SharedCameraConstants;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v0, v0, Lcom/google/glass/camera/Size;->width:I

    sget-object v1, Lcom/google/glass/camera/SharedCameraConstants;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v1, v1, Lcom/google/glass/camera/Size;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    .line 69
    return-void
.end method

.method private getFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/glass/camera/Picture;->captureTimeMillis:J

    invoke-static {v1, v2}, Lcom/google/glass/util/FileHelper;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCaptureTime()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->captureTimeMillis:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsGcam()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isGcam:Z

    return v0
.end method

.method public getJpegTime()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->jpegTimeMillis:J

    return-wide v0
.end method

.method public getRequestTime()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->requestTimeMillis:J

    return-wide v0
.end method

.method public getShutterTime()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->shutterTimeMillis:J

    return-wide v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getThumbnailTime()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->thumbnailTimeMillis:J

    return-wide v0
.end method

.method saveJpeg(Landroid/content/Context;[B)Z
    .locals 11
    .parameter "context"
    .parameter "jpegData"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/camera/Picture;->jpegTimeMillis:J

    .line 122
    invoke-direct {p0}, Lcom/google/glass/camera/Picture;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, fileName:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/FileSaver;->getSharedInstance()Lcom/google/glass/util/FileSaver;

    move-result-object v4

    if-nez v4, :cond_0

    .line 125
    sget-object v3, Lcom/google/glass/camera/Picture;->TAG:Ljava/lang/String;

    const-string v4, "No file writer, not saving JPEG."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return v2

    .line 128
    :cond_0
    invoke-static {}, Lcom/google/glass/util/FileSaver;->getSharedInstance()Lcom/google/glass/util/FileSaver;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/glass/util/FileSaver;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, fullPath:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/FileSaver;->getSharedInstance()Lcom/google/glass/util/FileSaver;

    move-result-object v4

    invoke-static {p2}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/glass/util/FileSaver;->write(Lcom/google/glass/util/FileSaver$Saver;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    iput-object v1, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    .line 135
    sget-object v4, Lcom/google/glass/camera/Picture;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved JPEG-encoded picture in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/glass/camera/Picture;->jpegTimeMillis:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    aput-object v5, v4, v2

    new-array v5, v3, [Ljava/lang/String;

    aput-object v10, v5, v2

    invoke-static {p1, v4, v5, v10}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    move v2, v3

    .line 141
    goto :goto_0

    .line 132
    :cond_1
    sget-object v3, Lcom/google/glass/camera/Picture;->TAG:Ljava/lang/String;

    const-string v4, "Failed to save JPEG."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method saveThumbnail([BII)V
    .locals 7
    .parameter "postviewData"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 90
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/camera/Picture;->thumbnailTimeMillis:J

    .line 94
    iget-boolean v1, p0, Lcom/google/glass/camera/Picture;->isGcam:Z

    if-eqz v1, :cond_1

    .line 95
    sget-object v1, Lcom/google/glass/camera/Picture;->TAG:Ljava/lang/String;

    const-string v2, "saveThumbnail - isGCam true [just copying ARGB_8888 directly]."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    .local v0, postviewBuf:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 105
    .end local v0           #postviewBuf:Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/glass/camera/Picture;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoded picture thumbnail in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/camera/Picture;->thumbnailTimeMillis:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 99
    :cond_1
    sget-object v1, Lcom/google/glass/camera/Picture;->TAG:Ljava/lang/String;

    const-string v2, "saveThumbnail - isGCam false [calling JNI to convert YUV to ARGB_8888]."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/google/glass/camera/CameraUtils;->populateBitmapFromYuv420Sp([BLandroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    sget-object v1, Lcom/google/glass/camera/Picture;->TAG:Ljava/lang/String;

    const-string v2, "buildBitmapFromYuv420Sp failed! Result may be corrupted."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setCaptureTimeNow()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/Picture;->captureTimeMillis:J

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/Picture;->shutterTimeMillis:J

    .line 75
    return-void
.end method

.method public setIsGcam(Z)V
    .locals 0
    .parameter "isGcam"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/google/glass/camera/Picture;->isGcam:Z

    .line 80
    return-void
.end method
