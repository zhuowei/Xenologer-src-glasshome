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
    .line 29
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/google/glass/home/R$layout;->timeline_item_image:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;)Z
    .locals 12
    .parameter "context"
    .parameter "item"
    .parameter "inBundle"
    .parameter "isReadMore"
    .parameter "view"
    .parameter "bitmapFactory"
    .parameter "textClipListener"
    .parameter "contentSizedListener"

    .prologue
    .line 94
    sget v1, Lcom/google/glass/home/R$id;->text:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 95
    .local v11, textView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    sget v1, Lcom/google/glass/home/R$id;->overlay:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 99
    .local v10, overlayView:Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    sget v1, Lcom/google/glass/home/R$drawable;->overlay_large:I

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :goto_0
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 108
    .local v8, imageAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/util/Assert;->assertFalse(Z)V

    .line 110
    sget v1, Lcom/google/glass/home/R$id;->image:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 114
    .local v5, imageView:Landroid/widget/ImageView;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v9, loadingTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 116
    const/4 v1, 0x1

    if-lt v7, v1, :cond_2

    .line 124
    :cond_0
    sget v1, Lcom/google/glass/home/R$id;->tag_loading_task:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 127
    move-object/from16 v0, p5

    invoke-static {v0, v9}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Ljava/util/List;)V

    .line 130
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_2
    return v1

    .line 102
    .end local v5           #imageView:Landroid/widget/ImageView;
    .end local v7           #i:I
    .end local v8           #imageAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    .end local v9           #loadingTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    :cond_1
    sget v1, Lcom/google/glass/home/R$drawable;->overlay_small:I

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 119
    .restart local v5       #imageView:Landroid/widget/ImageView;
    .restart local v7       #i:I
    .restart local v8       #imageAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    .restart local v9       #loadingTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    :cond_2
    new-instance v1, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/Attachment;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder$ImageAttachmentLoadingTask;-><init>(Lcom/google/glass/home/timeline/database/ImageItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Attachment;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 130
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "willBindSameItem"

    .prologue
    const/4 v3, 0x0

    .line 138
    sget v2, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 139
    .local v1, loadingTasks:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;>;"
    if-eqz v1, :cond_0

    .line 140
    invoke-static {v1}, Lcom/google/glass/util/DeferredContentLoader;->cancel(Ljava/util/List;)V

    .line 141
    sget v2, Lcom/google/glass/home/R$id;->tag_loading_task:I

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 145
    :cond_0
    sget v2, Lcom/google/glass/home/R$id;->image:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 146
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
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
    .line 151
    .local p2, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    sget-object v3, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->IMAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    invoke-static {p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 155
    sget-object v3, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 157
    .local v2, imageAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Lcom/google/glass/util/Assert;->assertFalse(Z)V

    .line 159
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 160
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 163
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearAttachment()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 164
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 168
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/glass/home/timeline/database/ImageItemViewBinder;->adjustBundleItemIndex(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;ILcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 169
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0           #builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    :cond_0
    return-void
.end method
