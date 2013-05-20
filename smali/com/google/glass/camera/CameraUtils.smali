.class public Lcom/google/glass/camera/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/google/glass/camera/CameraUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/CameraUtils;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, "glasscamera"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static buildBitmapFromYuv420Sp([BII)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "input"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 29
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/google/glass/camera/CameraUtils;->populateBitmapFromYuv420Sp([BLandroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->TAG:Ljava/lang/String;

    const-string v2, "buildBitmapFromYuv420Sp failed! Result may be corrupted."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-object v0
.end method

.method public static native populateBitmapFromYuv420Sp([BLandroid/graphics/Bitmap;)Z
.end method
