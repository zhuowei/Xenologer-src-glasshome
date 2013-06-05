.class public Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;
.super Lcom/google/glass/home/timeline/database/BaseItemViewBinder;
.source "HtmlItemViewBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/home/timeline/database/BaseItemViewBinder;-><init>()V

    return-void
.end method

.method private getFooterRightMargin(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->getTimestampWidth()I

    move-result v1

    sget v2, Lcom/google/glass/home/R$dimen;->glassware_icon_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/google/glass/home/R$dimen;->glassware_icon_left_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/google/glass/home/R$dimen;->generic_card_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/google/glass/home/R$layout;->timeline_item_html:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)Z
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "inBundle"
    .parameter "isReadMore"
    .parameter "view"
    .parameter "bitmapFactory"
    .parameter "textClipListener"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->getFooterRightMargin(Landroid/content/Context;)I

    move-result v0

    .line 36
    .local v0, footerRightMargin:I
    sget v3, Lcom/google/glass/home/R$id;->rendered_html:I

    invoke-virtual {p5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 37
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/google/glass/html/HtmlRenderer;->obtain()Lcom/google/glass/html/HtmlRenderer;

    move-result-object v2

    .line 38
    .local v2, renderer:Lcom/google/glass/html/HtmlRenderer;
    new-instance v3, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;

    invoke-direct {v3, p0, p5, v1}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;-><init>(Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v2, p2, v0, v3}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;ILcom/google/glass/html/HtmlRenderer$OnRenderListener;)V

    .line 48
    sget v3, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p5, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 49
    sget v3, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p5, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 50
    sget v3, Lcom/google/glass/home/R$id;->tag_html_item_footer_right_margin:I

    invoke-virtual {p5, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 51
    sget v3, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p5, v3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 52
    sget v3, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p5, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 53
    sget v3, Lcom/google/glass/home/R$id;->tag_html_item_footer_right_margin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p5, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 56
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlPageCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "willBindSameItem"

    .prologue
    const/4 v3, 0x0

    .line 80
    if-nez p2, :cond_0

    .line 81
    sget v2, Lcom/google/glass/home/R$id;->rendered_html:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    sget v2, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/html/HtmlRenderer;

    .line 87
    .local v1, renderer:Lcom/google/glass/html/HtmlRenderer;
    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v1}, Lcom/google/glass/html/HtmlRenderer;->release()V

    .line 92
    :cond_1
    sget v2, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 93
    sget v2, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 94
    sget v2, Lcom/google/glass/home/R$id;->tag_html_item_footer_right_margin:I

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method protected shouldShowTimestamp(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->getBundleItemIndex(Lcom/google/googlex/glass/common/proto/TimelineItem;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public splitBundle(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)V
    .locals 4
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
    .line 99
    .local p2, split:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    sget-object v2, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->HTML:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    invoke-static {p1}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 102
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlPageCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 105
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    return-void

    .line 107
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 108
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 111
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearHtml()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 112
    invoke-virtual {p1, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getHtmlPage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 117
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->adjustBundleItemIndex(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;ILcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 118
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
