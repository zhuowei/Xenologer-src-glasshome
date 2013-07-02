.class public Lcom/google/glass/home/timeline/HtmlItemView;
.super Lcom/google/glass/horizontalscroll/FrameLayoutCard;
.source "HtmlItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/home/timeline/HtmlItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/HtmlItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/HtmlItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/HtmlItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 39
    .local v0, display:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 40
    .local v2, width:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 43
    .local v1, height:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/home/timeline/HtmlItemView;->bitmap:Landroid/graphics/Bitmap;

    .line 44
    return-void
.end method


# virtual methods
.method public clearBitmap()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/home/timeline/HtmlItemView;->bitmap:Landroid/graphics/Bitmap;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 106
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/home/timeline/HtmlItemView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;->onFinishInflate()V

    .line 51
    sget v0, Lcom/google/glass/home/R$id;->rendered_html:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/HtmlItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/HtmlItemView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    return-void
.end method

.method public onLoad()V
    .locals 7

    .prologue
    .line 56
    sget v4, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/html/HtmlRenderer;

    .line 59
    .local v3, renderer:Lcom/google/glass/html/HtmlRenderer;
    if-nez v3, :cond_0

    .line 60
    sget-object v4, Lcom/google/glass/home/timeline/HtmlItemView;->TAG:Ljava/lang/String;

    const-string v5, "Loading HTML view, obtaining new renderer."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/google/glass/html/HtmlRenderer;->obtain()Lcom/google/glass/html/HtmlRenderer;

    move-result-object v3

    .line 62
    sget v4, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p0, v4, v3}, Lcom/google/glass/home/timeline/HtmlItemView;->setTag(ILjava/lang/Object;)V

    .line 65
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 66
    .local v2, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget v4, Lcom/google/glass/home/R$id;->tag_html_item_footer_right_margin:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 67
    .local v0, footerRightMargin:Ljava/lang/Integer;
    sget v4, Lcom/google/glass/home/R$id;->rendered_html:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/HtmlItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 70
    .local v1, imageView:Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/HtmlItemView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Lcom/google/glass/home/timeline/HtmlItemView$1;

    invoke-direct {v6, p0, v1}, Lcom/google/glass/home/timeline/HtmlItemView$1;-><init>(Lcom/google/glass/home/timeline/HtmlItemView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/glass/html/HtmlRenderer;->registerListenerForPage(ILandroid/graphics/Bitmap;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    new-instance v6, Lcom/google/glass/home/timeline/HtmlItemView$2;

    invoke-direct {v6, p0}, Lcom/google/glass/home/timeline/HtmlItemView$2;-><init>(Lcom/google/glass/home/timeline/HtmlItemView;)V

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V

    .line 86
    .end local v0           #footerRightMargin:Ljava/lang/Integer;
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v2           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_0
    return-void
.end method

.method public onUnload()V
    .locals 3

    .prologue
    .line 90
    sget v1, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/HtmlRenderer;

    .line 93
    .local v0, renderer:Lcom/google/glass/html/HtmlRenderer;
    if-eqz v0, :cond_0

    .line 94
    sget-object v1, Lcom/google/glass/home/timeline/HtmlItemView;->TAG:Ljava/lang/String;

    const-string v2, "Unloading HTML view, releasing renderer."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v0}, Lcom/google/glass/html/HtmlRenderer;->release()V

    .line 96
    sget v1, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/timeline/HtmlItemView;->setTag(ILjava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method
