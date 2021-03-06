.class Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;
.super Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
.source "VideoItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/database/VideoItemViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoAttachmentLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final attachment:Lcom/google/googlex/glass/common/proto/Attachment;

.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final placeholderView:Landroid/widget/ImageView;

.field private final playView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/google/glass/home/timeline/database/VideoItemViewBinder;

.field private final thumbnailView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/timeline/database/VideoItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Attachment;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attachment"
    .parameter "thumbnailView"
    .parameter "placeholderView"
    .parameter "playView"
    .parameter "bitmapFactory"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->this$0:Lcom/google/glass/home/timeline/database/VideoItemViewBinder;

    .line 45
    invoke-direct {p0, p2}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p3, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    .line 47
    iput-object p7, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 48
    iput-object p4, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->thumbnailView:Landroid/widget/ImageView;

    .line 49
    iput-object p5, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->placeholderView:Landroid/widget/ImageView;

    .line 50
    iput-object p6, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->playView:Landroid/widget/ImageView;

    .line 51
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 52
    return-void
.end method

.method private loadContentFromCache()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineHelper;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, thumbnailFilename:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x1

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 105
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->playView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 106
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->placeholderView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 108
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "v"

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "isCancelled"

    .prologue
    .line 83
    iget-object v2, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, thumbnailFilename:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, videoFilePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Lcom/google/glass/camera/CameraUtils;->createVideoThumbnail(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 95
    .end local v1           #videoFilePath:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 89
    .restart local v1       #videoFilePath:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v4, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 95
    .end local v1           #videoFilePath:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v3, v4, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->loadContentFromCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 65
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->playView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 66
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->placeholderView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->cancel(Z)V

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 70
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->playView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v2}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 71
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->placeholderView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method
