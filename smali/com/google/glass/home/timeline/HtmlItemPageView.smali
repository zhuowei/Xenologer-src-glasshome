.class public Lcom/google/glass/home/timeline/HtmlItemPageView;
.super Lcom/google/glass/horizontalscroll/FrameLayoutCard;
.source "HtmlItemPageView.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/HtmlItemPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/HtmlItemPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 36
    .local v0, display:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 37
    .local v2, width:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 40
    .local v1, height:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/home/timeline/HtmlItemPageView;->bitmap:Landroid/graphics/Bitmap;

    .line 41
    return-void
.end method

.method private clearBitmap()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/home/timeline/HtmlItemPageView;->bitmap:Landroid/graphics/Bitmap;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 80
    sget v0, Lcom/google/glass/home/R$id;->rendered_html:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/HtmlItemPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 81
    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/home/timeline/HtmlItemPageView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;->onFinishInflate()V

    .line 48
    sget v0, Lcom/google/glass/home/R$id;->rendered_html:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/HtmlItemPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/HtmlItemPageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 49
    return-void
.end method

.method public onLoad()V
    .locals 4

    .prologue
    .line 53
    sget v2, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/HtmlItemPageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/html/HtmlRenderer;

    .line 54
    .local v1, renderer:Lcom/google/glass/html/HtmlRenderer;
    sget v2, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/HtmlItemPageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 56
    .local v0, pageNumber:I
    invoke-direct {p0}, Lcom/google/glass/home/timeline/HtmlItemPageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/google/glass/home/timeline/HtmlItemPageView$1;

    invoke-direct {v3, p0}, Lcom/google/glass/home/timeline/HtmlItemPageView$1;-><init>(Lcom/google/glass/home/timeline/HtmlItemPageView;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/html/HtmlRenderer;->registerListenerForPage(ILandroid/graphics/Bitmap;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V

    .line 63
    return-void
.end method

.method public onUnload()V
    .locals 3

    .prologue
    .line 67
    sget v2, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/HtmlItemPageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/html/HtmlRenderer;

    .line 68
    .local v1, renderer:Lcom/google/glass/html/HtmlRenderer;
    sget v2, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/HtmlItemPageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 69
    .local v0, pageNumber:I
    invoke-virtual {v1, v0}, Lcom/google/glass/html/HtmlRenderer;->unregisterListenerForPage(I)V

    .line 71
    invoke-direct {p0}, Lcom/google/glass/home/timeline/HtmlItemPageView;->clearBitmap()V

    .line 72
    return-void
.end method
