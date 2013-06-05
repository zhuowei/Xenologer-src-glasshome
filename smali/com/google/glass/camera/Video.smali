.class public Lcom/google/glass/camera/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/camera/Video;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCEL_FALSE:I = 0x0

.field private static final PARCEL_TRUE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected endTimeMillis:J

.field protected filePath:Ljava/lang/String;

.field protected volatile isCanceled:Z

.field protected startTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/google/glass/camera/Video;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/Video;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/google/glass/camera/Video$1;

    invoke-direct {v0}, Lcom/google/glass/camera/Video$1;-><init>()V

    sput-object v0, Lcom/google/glass/camera/Video;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/camera/Video;->startTimeMillis:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/camera/Video;->endTimeMillis:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/camera/Video;->filePath:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/camera/Video;->isCanceled:Z

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/google/glass/camera/Video;->endTimeMillis:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/camera/Video;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/google/glass/camera/Video;->startTimeMillis:J

    return-wide v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/glass/camera/Video;->isCanceled:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/glass/camera/Video;->startTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-wide v0, p0, Lcom/google/glass/camera/Video;->endTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-object v0, p0, Lcom/google/glass/camera/Video;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-boolean v0, p0, Lcom/google/glass/camera/Video;->isCanceled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
