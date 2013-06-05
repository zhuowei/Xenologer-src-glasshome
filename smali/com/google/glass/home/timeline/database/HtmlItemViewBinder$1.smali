.class Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;
.super Ljava/lang/Object;
.source "HtmlItemViewBinder.java"

# interfaces
.implements Lcom/google/glass/html/HtmlRenderer$OnRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;->this$0:Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;

    iput-object p2, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Lcom/google/glass/html/HtmlRenderer;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "renderer"
    .parameter "bitmap"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;->val$view:Landroid/view/View;

    sget v1, Lcom/google/glass/home/R$id;->tag_html_item_renderer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    :cond_0
    return-void
.end method
