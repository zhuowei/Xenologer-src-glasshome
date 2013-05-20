.class final Lcom/google/glass/util/ScreenshotUtil$Screenshot$1;
.super Ljava/lang/Object;
.source "ScreenshotUtil.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/ScreenshotUtil$Screenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/glass/util/ScreenshotUtil$Screenshot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/util/ScreenshotUtil$Screenshot;
    .locals 5
    .parameter "source"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v1, v3, [B

    .line 62
    .local v1, compressedData:[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 63
    invoke-static {}, Landroid/graphics/Bitmap$CompressFormat;->values()[Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v0, v3, v4

    .line 64
    .local v0, compressFormat:Landroid/graphics/Bitmap$CompressFormat;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, fileExtension:Ljava/lang/String;
    new-instance v3, Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/google/glass/util/ScreenshotUtil$Screenshot;-><init>([BLandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Lcom/google/glass/util/ScreenshotUtil$1;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/glass/util/ScreenshotUtil$Screenshot$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/util/ScreenshotUtil$Screenshot;
    .locals 1
    .parameter "size"

    .prologue
    .line 70
    new-array v0, p1, [Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/glass/util/ScreenshotUtil$Screenshot$1;->newArray(I)[Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    move-result-object v0

    return-object v0
.end method
