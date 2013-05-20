.class public Lcom/google/glass/home/timeline/database/ImageItemViewBinder;
.super Lcom/google/glass/home/timeline/database/BaseItemViewBinder;
.source "ImageItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/google/glass/home/R$layout;->timeline_item_image:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)Z
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "inBundle"
    .parameter "isReadMore"
    .parameter "view"
    .parameter "bitmapFactory"
    .parameter "textClipListener"

    .prologue
    .line 87
    sget v6, Lcom/google/glass/home/R$id;->text:I

    invoke-virtual {p5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 88
    .local v5, textView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget v6, Lcom/google/glass/home/R$id;->overlay:I

    invoke-virtual {p5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 92
    .local v4, overlayView:Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasText()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    sget v6, Lcom/google/glass/home/R$drawable;->overlay_large:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    :goto_0
    sget-object v6, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p2, v6}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, imageAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    invoke-static {v6}, Lcom/google/glass/util/Assert;->assertFalse(Z)V

    .line 103
    sget v6, Lcom/google/glass/home/R$id;->image:I

    invoke-virtual {p5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 107
    .local v2, imageView:Landroid/widget/ImageView;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v3, loadingTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 109
    const/4 v6, 0x1

    if-lt v0, v6, :cond_2

    .line 117
    :cond_0
    sget v6, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p5, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 120
    invoke-static {p5, v3}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Ljava/util/List;)V

    .line 123
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_2
    return v6

    .line 95
    .end local v0           #i:I
    .end local v1           #imageAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    .end local v2           #imageView:Landroid/widget/ImageView;
    .end local v3           #loadingTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    :cond_1
    sget v6, Lcom/google/glass/home/R$drawable;->overlay_small:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 112
    .restart local v0       #i:I
    .restart local v1       #imageAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    .restart local v2       #imageView:Landroid/widget/ImageView;
    .restart local v3       #loadingTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    :cond_2
    new-instance v7, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-direct {v7, p0, v6, v2, p6}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;-><init>(Lcom/google/glass/home/timeline/database/ImageItemViewBinder;Lcom/google/googlex/glass/common/proto/Attachment;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "willBindSameItem"

    .prologue
    const/4 v3, 0x0

    .line 131
    sget v2, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 132
    .local v1, loadingTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    if-eqz v1, :cond_0

    .line 133
    invoke-static {v1}, Lcom/google/glass/util/DeferredContentLoader;->cancel(Ljava/util/List;)V

    .line 134
    sget v2, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 138
    :cond_0
    sget v2, Lcom/google/glass/home/R$id;->image:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 139
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-void
.end method

.method public splitBundle(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)V
    .locals 5
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
    .line 144
    .local p2, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    sget-object v3, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->IMAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    invoke-static {p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 148
    sget-object v3, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 150
    .local v2, imageAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Lcom/google/glass/util/Assert;->assertFalse(Z)V

    .line 152
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 153
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 156
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 157
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 161
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder;->adjustBundleItemIndex(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;ILcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 162
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v0           #builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    :cond_0
    return-void
.end method
