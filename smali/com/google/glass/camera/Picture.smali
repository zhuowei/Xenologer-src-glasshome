.class public Lcom/google/glass/camera/Picture;
.super Ljava/lang/Object;
.source "Picture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/camera/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCEL_FALSE:I = 0x0

.field private static final PARCEL_TRUE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected captureTimeMillis:J

.field protected filePath:Ljava/lang/String;

.field protected isGcam:Z

.field protected isGcamHqFallback:Z

.field protected jpegTimeMillis:J

.field protected requestTimeMillis:J

.field protected shutterTimeMillis:J

.field protected thumbnail:Landroid/graphics/Bitmap;

.field protected thumbnailTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/google/glass/camera/Picture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/Picture;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/google/glass/camera/Picture$1;

    invoke-direct {v0}, Lcom/google/glass/camera/Picture$1;-><init>()V

    sput-object v0, Lcom/google/glass/camera/Picture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/camera/Picture;->captureTimeMillis:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/camera/Picture;->requestTimeMillis:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/camera/Picture;->shutterTimeMillis:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/camera/Picture;->thumbnailTimeMillis:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/camera/Picture;->jpegTimeMillis:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/camera/Picture;->isGcam:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/google/glass/camera/Picture;->isGcamHqFallback:Z

    .line 79
    const-class v0, Lcom/google/glass/camera/Picture;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    .line 81
    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v1, v2

    .line 78
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getCaptureTime()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->captureTimeMillis:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getJpegTime()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->jpegTimeMillis:J

    return-wide v0
.end method

.method public getRequestTime()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->requestTimeMillis:J

    return-wide v0
.end method

.method public getShutterTime()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->shutterTimeMillis:J

    return-wide v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getThumbnailTime()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/google/glass/camera/Picture;->thumbnailTimeMillis:J

    return-wide v0
.end method

.method public setIsGcam(Z)V
    .locals 0
    .parameter "isGcam"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/google/glass/camera/Picture;->isGcam:Z

    .line 99
    return-void
.end method

.method public setIsGcamHqFallback(Z)V
    .locals 0
    .parameter "isHqFallback"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/google/glass/camera/Picture;->isGcamHqFallback:Z

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    iget-wide v3, p0, Lcom/google/glass/camera/Picture;->captureTimeMillis:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-wide v3, p0, Lcom/google/glass/camera/Picture;->requestTimeMillis:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-wide v3, p0, Lcom/google/glass/camera/Picture;->shutterTimeMillis:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget-wide v3, p0, Lcom/google/glass/camera/Picture;->thumbnailTimeMillis:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-wide v3, p0, Lcom/google/glass/camera/Picture;->jpegTimeMillis:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isGcam:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-boolean v0, p0, Lcom/google/glass/camera/Picture;->isGcamHqFallback:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 93
    iget-object v0, p0, Lcom/google/glass/camera/Picture;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return-void

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0

    :cond_1
    move v1, v2

    .line 91
    goto :goto_1
.end method
