.class public Lcom/google/glass/home/timeline/ReadMoreHtmlAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReadMoreHtmlAdapter.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/ViewRecycler;


# instance fields
.field private context:Landroid/content/Context;

.field private renderer:Lcom/google/glass/html/HtmlRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/html/HtmlRenderer;)V
    .locals 0
    .parameter "context"
    .parameter "renderer"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlAdapter;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlAdapter;->renderer:Lcom/google/glass/html/HtmlRenderer;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlAdapter;->renderer:Lcom/google/glass/html/HtmlRenderer;

    invoke-virtual {v0}, Lcom/google/glass/html/HtmlRenderer;->getNumPages()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 42
    if-nez p2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$layout;->timeline_item_html_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    :cond_0
    sget v0, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlAdapter;->renderer:Lcom/google/glass/html/HtmlRenderer;

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 50
    sget v0, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/ReadMoreHtmlAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 53
    sget v0, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 55
    return-object p2
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 61
    return-void
.end method
