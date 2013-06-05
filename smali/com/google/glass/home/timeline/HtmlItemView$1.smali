.class Lcom/google/glass/home/timeline/HtmlItemView$1;
.super Ljava/lang/Object;
.source "HtmlItemView.java"

# interfaces
.implements Lcom/google/glass/html/HtmlRenderer$OnRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/HtmlItemView;->onLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/HtmlItemView;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/HtmlItemView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/glass/home/timeline/HtmlItemView$1;->this$0:Lcom/google/glass/home/timeline/HtmlItemView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/HtmlItemView$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Lcom/google/glass/html/HtmlRenderer;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "renderer"
    .parameter "bitmap"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/home/timeline/HtmlItemView$1;->this$0:Lcom/google/glass/home/timeline/HtmlItemView;

    sget v1, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/glass/home/timeline/HtmlItemView$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    :cond_0
    return-void
.end method
