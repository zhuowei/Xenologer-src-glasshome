.class public Lcom/google/glass/home/timeline/HtmlItemView;
.super Lcom/google/glass/horizontalscroll/FrameLayoutCard;
.source "HtmlItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/glass/home/timeline/HtmlItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/HtmlItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public onLoad()V
    .locals 6

    .prologue
    .line 34
    sget v4, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/html/HtmlRenderer;

    .line 37
    .local v3, renderer:Lcom/google/glass/html/HtmlRenderer;
    if-nez v3, :cond_0

    .line 38
    sget-object v4, Lcom/google/glass/home/timeline/HtmlItemView;->TAG:Ljava/lang/String;

    const-string v5, "Loading HTML view, obtaining new renderer."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/google/glass/html/HtmlRenderer;->obtain()Lcom/google/glass/html/HtmlRenderer;

    move-result-object v3

    .line 40
    sget v4, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p0, v4, v3}, Lcom/google/glass/home/timeline/HtmlItemView;->setTag(ILjava/lang/Object;)V

    .line 43
    sget v4, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 44
    .local v2, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget v4, Lcom/google/glass/home/R$id;->tag_html_item_footer_right_margin:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 45
    .local v0, footerRightMargin:Ljava/lang/Integer;
    sget v4, Lcom/google/glass/home/R$id;->rendered_html:I

    invoke-virtual {p0, v4}, Lcom/google/glass/home/timeline/HtmlItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 46
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Lcom/google/glass/home/timeline/HtmlItemView$1;

    invoke-direct {v5, p0, v1}, Lcom/google/glass/home/timeline/HtmlItemView$1;-><init>(Lcom/google/glass/home/timeline/HtmlItemView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;ILcom/google/glass/html/HtmlRenderer$OnRenderListener;)V

    .line 55
    .end local v0           #footerRightMargin:Ljava/lang/Integer;
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v2           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_0
    return-void
.end method

.method public onUnload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    sget v2, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/html/HtmlRenderer;

    .line 62
    .local v1, renderer:Lcom/google/glass/html/HtmlRenderer;
    if-eqz v1, :cond_0

    .line 63
    sget-object v2, Lcom/google/glass/home/timeline/HtmlItemView;->TAG:Ljava/lang/String;

    const-string v3, "Unloading HTML view, releasing renderer."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v1}, Lcom/google/glass/html/HtmlRenderer;->release()V

    .line 65
    sget v2, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {p0, v2, v4}, Lcom/google/glass/home/timeline/HtmlItemView;->setTag(ILjava/lang/Object;)V

    .line 70
    :cond_0
    sget v2, Lcom/google/glass/home/R$id;->rendered_html:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/HtmlItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    return-void
.end method
