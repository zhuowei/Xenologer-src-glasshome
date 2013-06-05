.class public abstract Lcom/google/glass/util/PersonImageDownloadTask;
.super Lcom/google/glass/util/ImageProxyBitmapLoadingTask;
.source "PersonImageDownloadTask.java"


# instance fields
.field private alwaysShowLabel:Z

.field private final nameView:Landroid/widget/TextView;

.field private final pictureView:Landroid/widget/ImageView;

.field private final profileImageUrlCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;II)V
    .locals 6
    .parameter "context"
    .parameter "imageUrl"
    .parameter "pictureView"
    .parameter "nameView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 34
    sget-object v5, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->SMART_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->alwaysShowLabel:Z

    .line 35
    iput-object p3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    .line 36
    iput-object p4, p0, Lcom/google/glass/util/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    .line 37
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getProfileImageUrlCache()Landroid/util/LruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->profileImageUrlCache:Landroid/util/LruCache;

    .line 38
    return-void
.end method

.method private setViewVisibilities(ZZ)V
    .locals 2
    .parameter "hasImage"
    .parameter "animate"

    .prologue
    const/4 v1, 0x1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/util/PersonImageDownloadTask;->showView(Landroid/view/View;Z)V

    .line 72
    iget-boolean v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->alwaysShowLabel:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/glass/util/PersonImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/glass/util/PersonImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    .line 77
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2}, Lcom/google/glass/util/PersonImageDownloadTask;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x1

    .line 126
    iget-object v0, p0, Lcom/google/glass/util/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/PersonImageDownloadTask;->setViewVisibilities(ZZ)V

    .line 128
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/PersonImageDownloadTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected abstract getCacheId()Ljava/lang/String;
.end method

.method protected abstract getDisplayText()Ljava/lang/String;
.end method

.method protected loadContent()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->onPreLoad()V

    .line 105
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, imageUrl:Ljava/lang/String;
    invoke-super {p0}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask;->loadContent()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->getCacheId()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, cacheId:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 111
    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->profileImageUrlCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic loadContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->loadContent()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPreLoad()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method protected prepareContent()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->getCacheId()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, cacheId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 45
    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->profileImageUrlCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/glass/util/PersonImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    :cond_0
    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 49
    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->getDisplayText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/PersonImageDownloadTask;->loadContentFromCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 55
    .local v2, hasImage:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 56
    iget-object v3, p0, Lcom/google/glass/util/PersonImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    invoke-virtual {p0, v4}, Lcom/google/glass/util/PersonImageDownloadTask;->cancel(Z)V

    .line 60
    :cond_2
    invoke-direct {p0, v2, v4}, Lcom/google/glass/util/PersonImageDownloadTask;->setViewVisibilities(ZZ)V

    .line 61
    return-void

    .end local v2           #hasImage:Z
    :cond_3
    move v2, v4

    .line 54
    goto :goto_0
.end method

.method public setAlwaysShowLabel(Z)V
    .locals 0
    .parameter "alwaysShowLabel"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/google/glass/util/PersonImageDownloadTask;->alwaysShowLabel:Z

    .line 86
    return-void
.end method
