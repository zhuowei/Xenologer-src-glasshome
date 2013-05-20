.class Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;
.super Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
.source "ImageItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/database/ImageItemViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAttachmentLoadingTask"
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

.field private final imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/google/glass/home/timeline/database/ImageItemViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/timeline/database/ImageItemViewBinder;Lcom/google/googlex/glass/common/proto/Attachment;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 0
    .parameter
    .parameter "attachment"
    .parameter "imageView"
    .parameter "bitmapFactory"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->this$0:Lcom/google/glass/home/timeline/database/ImageItemViewBinder;

    invoke-direct {p0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    .line 39
    iput-object p4, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 40
    iput-object p3, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    .line 41
    return-void
.end method

.method private loadContentFromCache()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 58
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v2, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/CachedBitmapFactory;->decodeAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 73
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected loadContent()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v1, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->attachment:Lcom/google/googlex/glass/common/proto/Attachment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedBitmapFactory;->decodeAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->loadContent()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->loadContentFromCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v3}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->showView(Landroid/view/View;Z)V

    .line 49
    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->cancel(Z)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
