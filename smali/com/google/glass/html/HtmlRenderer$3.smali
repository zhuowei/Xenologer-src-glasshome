.class Lcom/google/glass/html/HtmlRenderer$3;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/HtmlRenderer;


# direct methods
.method constructor <init>(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer$3;->this$0:Lcom/google/glass/html/HtmlRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 2
    .parameter "view"
    .parameter "picture"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$3;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z
    invoke-static {v0}, Lcom/google/glass/html/HtmlRenderer;->access$1100(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$3;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z
    invoke-static {v0}, Lcom/google/glass/html/HtmlRenderer;->access$700(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$3;->this$0:Lcom/google/glass/html/HtmlRenderer;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/html/HtmlRenderer;->webviewHasRendered:Z
    invoke-static {v0, v1}, Lcom/google/glass/html/HtmlRenderer;->access$1402(Lcom/google/glass/html/HtmlRenderer;Z)Z

    .line 376
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$3;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #calls: Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;)V
    invoke-static {v0, p1}, Lcom/google/glass/html/HtmlRenderer;->access$1500(Lcom/google/glass/html/HtmlRenderer;Landroid/webkit/WebView;)V

    .line 378
    :cond_0
    return-void
.end method
