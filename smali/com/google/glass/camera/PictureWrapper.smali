.class public Lcom/google/glass/camera/PictureWrapper;
.super Lcom/google/glass/camera/Picture;
.source "PictureWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/camera/PictureWrapper$1;,
        Lcom/google/glass/camera/PictureWrapper$GcamType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/glass/camera/PictureWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/PictureWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/glass/camera/Picture;-><init>()V

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/PictureWrapper;->requestTimeMillis:J

    .line 59
    sget-object v0, Lcom/google/glass/camera/SharedCameraConstants;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v0, v0, Lcom/google/glass/camera/Size;->width:I

    sget-object v1, Lcom/google/glass/camera/SharedCameraConstants;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    iget v1, v1, Lcom/google/glass/camera/Size;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/PictureWrapper;->thumbnail:Landroid/graphics/Bitmap;

    .line 61
    return-void
.end method

.method private getFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    iget-wide v1, p0, Lcom/google/glass/camera/PictureWrapper;->captureTimeMillis:J

    invoke-static {v1, v2}, Lcom/google/glass/util/FileHelper;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, fileName:Ljava/lang/String;
    const-string v1, "persist.gcam.debug"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/glass/hidden/HiddenSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    sget-object v1, Lcom/google/glass/camera/PictureWrapper$1;->$SwitchMap$com$google$glass$camera$PictureWrapper$GcamType:[I

    invoke-static {p0}, Lcom/google/glass/camera/PictureWrapper;->getGcamType(Lcom/google/glass/camera/Picture;)Lcom/google/glass/camera/PictureWrapper$GcamType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/camera/PictureWrapper$GcamType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    return-object v0

    .line 140
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_base"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    goto :goto_0

    .line 143
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_gcam"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    goto :goto_0

    .line 146
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_fallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getGcamType(Lcom/google/glass/camera/Picture;)Lcom/google/glass/camera/PictureWrapper$GcamType;
    .locals 1
    .parameter "picture"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isGcam:Z

    if-eqz v0, :cond_1

    .line 158
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isGcamHqFallback:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/camera/PictureWrapper$GcamType;->GCAM_HQ_FALLBACK:Lcom/google/glass/camera/PictureWrapper$GcamType;

    .line 160
    :goto_0
    return-object v0

    .line 158
    :cond_0
    sget-object v0, Lcom/google/glass/camera/PictureWrapper$GcamType;->GCAM:Lcom/google/glass/camera/PictureWrapper$GcamType;

    goto :goto_0

    .line 160
    :cond_1
    sget-object v0, Lcom/google/glass/camera/PictureWrapper$GcamType;->HQ:Lcom/google/glass/camera/PictureWrapper$GcamType;

    goto :goto_0
.end method


# virtual methods
.method saveJpeg(Landroid/content/Context;[B)Z
    .locals 11
    .parameter "context"
    .parameter "jpegData"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/camera/PictureWrapper;->jpegTimeMillis:J

    .line 109
    invoke-direct {p0}, Lcom/google/glass/camera/PictureWrapper;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, fileName:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/FileSaver;->getSharedInstance()Lcom/google/glass/util/FileSaver;

    move-result-object v4

    if-nez v4, :cond_0

    .line 112
    sget-object v3, Lcom/google/glass/camera/PictureWrapper;->TAG:Ljava/lang/String;

    const-string v4, "No file writer, not saving JPEG."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return v2

    .line 115
    :cond_0
    invoke-static {}, Lcom/google/glass/util/FileSaver;->getSharedInstance()Lcom/google/glass/util/FileSaver;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/glass/util/FileSaver;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, fullPath:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/FileSaver;->getSharedInstance()Lcom/google/glass/util/FileSaver;

    move-result-object v4

    invoke-static {p2}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/glass/util/FileSaver;->write(Lcom/google/glass/util/FileSaver$Saver;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    iput-object v1, p0, Lcom/google/glass/camera/PictureWrapper;->filePath:Ljava/lang/String;

    .line 122
    sget-object v4, Lcom/google/glass/camera/PictureWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved JPEG-encoded picture in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/glass/camera/PictureWrapper;->jpegTimeMillis:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/camera/PictureWrapper;->filePath:Ljava/lang/String;

    aput-object v5, v4, v2

    new-array v5, v3, [Ljava/lang/String;

    aput-object v10, v5, v2

    invoke-static {p1, v4, v5, v10}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    move v2, v3

    .line 128
    goto :goto_0

    .line 119
    :cond_1
    sget-object v3, Lcom/google/glass/camera/PictureWrapper;->TAG:Ljava/lang/String;

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
    .line 77
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/camera/PictureWrapper;->thumbnailTimeMillis:J

    .line 81
    iget-boolean v1, p0, Lcom/google/glass/camera/PictureWrapper;->isGcam:Z

    if-eqz v1, :cond_1

    .line 82
    sget-object v1, Lcom/google/glass/camera/PictureWrapper;->TAG:Ljava/lang/String;

    const-string v2, "saveThumbnail - isGCam true [just copying ARGB_8888 directly]."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, postviewBuf:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/google/glass/camera/PictureWrapper;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 92
    .end local v0           #postviewBuf:Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/glass/camera/PictureWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoded picture thumbnail in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/camera/PictureWrapper;->thumbnailTimeMillis:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 86
    :cond_1
    sget-object v1, Lcom/google/glass/camera/PictureWrapper;->TAG:Ljava/lang/String;

    const-string v2, "saveThumbnail - isGCam false [calling JNI to convert YUV to ARGB_8888]."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/google/glass/camera/PictureWrapper;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/google/glass/camera/CameraUtils;->populateBitmapFromYuv420Sp([BLandroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    sget-object v1, Lcom/google/glass/camera/PictureWrapper;->TAG:Ljava/lang/String;

    const-string v2, "buildBitmapFromYuv420Sp failed! Result may be corrupted."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setCaptureTimeNow()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/PictureWrapper;->captureTimeMillis:J

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/PictureWrapper;->shutterTimeMillis:J

    .line 67
    return-void
.end method
