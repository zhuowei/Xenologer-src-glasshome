.class Lcom/google/glass/home/timeline/html/HtmlRenderer$3;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZLcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/html/HtmlRenderer;

.field final synthetic val$listener:Lcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/html/HtmlRenderer;Lcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$3;->this$0:Lcom/google/glass/home/timeline/html/HtmlRenderer;

    iput-object p2, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$3;->val$listener:Lcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 2
    .parameter "view"
    .parameter "picture"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$3;->this$0:Lcom/google/glass/home/timeline/html/HtmlRenderer;

    #getter for: Lcom/google/glass/home/timeline/html/HtmlRenderer;->isAllocated:Z
    invoke-static {v0}, Lcom/google/glass/home/timeline/html/HtmlRenderer;->access$700(Lcom/google/glass/home/timeline/html/HtmlRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$3;->this$0:Lcom/google/glass/home/timeline/html/HtmlRenderer;

    iget-object v1, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$3;->val$listener:Lcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;

    #calls: Lcom/google/glass/home/timeline/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;Lcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;)V
    invoke-static {v0, p1, v1}, Lcom/google/glass/home/timeline/html/HtmlRenderer;->access$1000(Lcom/google/glass/home/timeline/html/HtmlRenderer;Landroid/webkit/WebView;Lcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;)V

    .line 271
    :cond_0
    return-void
.end method
