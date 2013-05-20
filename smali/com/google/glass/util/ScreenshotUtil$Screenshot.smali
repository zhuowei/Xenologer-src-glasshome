.class public Lcom/google/glass/util/ScreenshotUtil$Screenshot;
.super Ljava/lang/Object;
.source "ScreenshotUtil.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/ScreenshotUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Screenshot"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/util/ScreenshotUtil$Screenshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public final compressedData:[B

.field public final fileExtension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/google/glass/util/ScreenshotUtil$Screenshot$1;

    invoke-direct {v0}, Lcom/google/glass/util/ScreenshotUtil$Screenshot$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>([BLandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V
    .locals 0
    .parameter "compressedData"
    .parameter "compressFormat"
    .parameter "fileExtension"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->compressedData:[B

    .line 41
    iput-object p2, p0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 42
    iput-object p3, p0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->fileExtension:Ljava/lang/String;

    .line 43
    return-void
.end method

.method synthetic constructor <init>([BLandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Lcom/google/glass/util/ScreenshotUtil$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/util/ScreenshotUtil$Screenshot;-><init>([BLandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->compressedData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->compressedData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->fileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->compressedData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v0, p0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->compressedData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 54
    iget-object v0, p0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->fileExtension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return-void
.end method
