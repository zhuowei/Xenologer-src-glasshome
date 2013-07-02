.class public Lcom/google/glass/home/timeline/database/VideoItemViewBinder;
.super Lcom/google/glass/home/timeline/database/BaseItemViewBinder;
.source "VideoItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/google/glass/home/R$layout;->timeline_item_video:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;)Z
    .locals 9
    .parameter "context"
    .parameter "item"
    .parameter "inBundle"
    .parameter "isReadMore"
    .parameter "view"
    .parameter "bitmapFactory"
    .parameter "textClipListener"
    .parameter "contentSizedListener"

    .prologue
    .line 122
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 124
    .local v8, videoAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/util/Assert;->assertFalse(Z)V

    .line 125
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 127
    .local v3, videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;
    sget v1, Lcom/google/glass/home/R$id;->thumbnail:I

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 128
    .local v4, thumbnailView:Landroid/widget/ImageView;
    sget v1, Lcom/google/glass/home/R$id;->placeholder:I

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 129
    .local v5, placeholderView:Landroid/widget/ImageView;
    sget v1, Lcom/google/glass/home/R$id;->play:I

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .local v6, playView:Landroid/widget/ImageView;
    move-object v1, p5

    .line 132
    check-cast v1, Lcom/google/glass/home/timeline/VideoItemView;

    invoke-virtual {v1, v3, p6}, Lcom/google/glass/home/timeline/VideoItemView;->setVideoAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 135
    new-instance v0, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/home/timeline/database/VideoItemViewBinder$VideoAttachmentLoadingTask;-><init>(Lcom/google/glass/home/timeline/database/VideoItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Attachment;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 139
    .local v0, loadingTask:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    sget v1, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p5, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 142
    invoke-static {p5, v0}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 145
    const/4 v1, 0x0

    return v1
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "willBindSameItem"

    .prologue
    const/4 v3, 0x0

    .line 152
    sget v2, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    .line 153
    .local v0, loadingTask:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    if-eqz v0, :cond_0

    .line 154
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->cancel(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 155
    sget v2, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 159
    :cond_0
    sget v2, Lcom/google/glass/home/R$id;->thumbnail:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 160
    .local v1, thumbnailView:Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public splitBundle(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)V
    .locals 0
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method
