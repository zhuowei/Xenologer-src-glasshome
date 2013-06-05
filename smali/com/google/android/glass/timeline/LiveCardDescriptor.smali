.class public final Lcom/google/android/glass/timeline/LiveCardDescriptor;
.super Ljava/lang/Object;
.source "LiveCardDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/glass/timeline/LiveCardDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mId:I

.field private final mPid:I

.field private mViews:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/glass/timeline/LiveCardDescriptor$1;

    invoke-direct {v0}, Lcom/google/android/glass/timeline/LiveCardDescriptor$1;-><init>()V

    sput-object v0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter "pid"
    .parameter "id"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mPid:I

    .line 44
    iput p2, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mId:I

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mPid:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mId:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mViews:Landroid/widget/RemoteViews;

    .line 89
    :cond_1e
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/glass/timeline/LiveCardDescriptor$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/glass/timeline/LiveCardDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 49
    instance-of v2, p1, Lcom/google/android/glass/timeline/LiveCardDescriptor;

    if-nez v2, :cond_6

    .line 53
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 52
    check-cast v0, Lcom/google/android/glass/timeline/LiveCardDescriptor;

    .line 53
    .local v0, that:Lcom/google/android/glass/timeline/LiveCardDescriptor;
    iget v2, v0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mPid:I

    iget v3, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mPid:I

    if-ne v2, v3, :cond_5

    iget v2, v0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mId:I

    iget v3, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mId:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mId:I

    return v0
.end method

.method public getPid()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mPid:I

    return v0
.end method

.method public getViews()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mId:I

    iget v1, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mPid:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setViews(Landroid/widget/RemoteViews;)V
    .registers 2
    .parameter "views"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mViews:Landroid/widget/RemoteViews;

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 98
    iget v0, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_19

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/glass/timeline/LiveCardDescriptor;->mViews:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    :goto_18
    return-void

    .line 104
    :cond_19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18
.end method
