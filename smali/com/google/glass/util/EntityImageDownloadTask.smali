.class public Lcom/google/glass/util/EntityImageDownloadTask;
.super Lcom/google/glass/util/ImageProxyBitmapLoadingTask;
.source "EntityImageDownloadTask.java"


# instance fields
.field private final entity:Lcom/google/googlex/glass/common/proto/Entity;

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
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V
    .locals 6
    .parameter "context"
    .parameter "entity"
    .parameter "pictureView"
    .parameter "nameView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 36
    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->SMART_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    move-object v0, p0

    move-object v1, p1

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)V

    .line 37
    if-nez p2, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entity cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 41
    iput-object p3, p0, Lcom/google/glass/util/EntityImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    .line 42
    iput-object p4, p0, Lcom/google/glass/util/EntityImageDownloadTask;->nameView:Landroid/widget/TextView;

    .line 43
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getProfileImageUrlCache()Landroid/util/LruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/EntityImageDownloadTask;->profileImageUrlCache:Landroid/util/LruCache;

    .line 44
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lcom/google/glass/util/EntityImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/glass/util/EntityImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/google/glass/util/EntityImageDownloadTask;->showView(Landroid/view/View;Z)V

    .line 105
    iget-object v0, p0, Lcom/google/glass/util/EntityImageDownloadTask;->nameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/glass/util/EntityImageDownloadTask;->nameView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/glass/util/EntityImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    .line 109
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/EntityImageDownloadTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected loadContent()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 81
    .local v1, imageUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/util/EntityImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v2, v3}, Lcom/google/glass/entity/EntityHelper;->getPictureUrlViaPhoneNumber(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/util/EntityImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/EntityImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v2, v3}, Lcom/google/glass/entity/EntityHelper;->getPictureUrlViaEmail(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/util/EntityImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    :cond_1
    invoke-super {p0}, Lcom/google/glass/util/ImageProxyBitmapLoadingTask;->loadContent()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity;->hasId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->profileImageUrlCache:Landroid/util/LruCache;

    iget-object v3, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_2
    return-object v0
.end method

.method protected bridge synthetic loadContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/glass/util/EntityImageDownloadTask;->loadContent()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/google/glass/util/EntityImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->profileImageUrlCache:Landroid/util/LruCache;

    iget-object v3, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/glass/util/EntityImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/EntityImageDownloadTask;->loadContentFromCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 57
    iget-object v2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    iget-object v2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->nameView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v4, v4}, Lcom/google/glass/util/EntityImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4}, Lcom/google/glass/util/EntityImageDownloadTask;->showView(Landroid/view/View;Z)V

    .line 62
    invoke-virtual {p0, v4}, Lcom/google/glass/util/EntityImageDownloadTask;->cancel(Z)V

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_2
    iget-object v2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v2}, Lcom/google/glass/entity/EntityHelper;->getDisplayableName(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->nameView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 66
    iget-object v2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->nameView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v4}, Lcom/google/glass/util/EntityImageDownloadTask;->showView(Landroid/view/View;Z)V

    .line 69
    :cond_3
    iget-object v2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->pictureView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/glass/util/EntityImageDownloadTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
