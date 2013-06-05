.class Lcom/google/glass/html/HtmlRenderer$3;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZLcom/google/glass/html/HtmlRenderer$OnRenderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/HtmlRenderer;

.field final synthetic val$listener:Lcom/google/glass/html/HtmlRenderer$OnRenderListener;


# direct methods
.method constructor <init>(Lcom/google/glass/html/HtmlRenderer;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer$3;->this$0:Lcom/google/glass/html/HtmlRenderer;

    iput-object p2, p0, Lcom/google/glass/html/HtmlRenderer$3;->val$listener:Lcom/google/glass/html/HtmlRenderer$OnRenderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 2
    .parameter "view"
    .parameter "picture"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$3;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z
    invoke-static {v0}, Lcom/google/glass/html/HtmlRenderer;->access$700(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$3;->this$0:Lcom/google/glass/html/HtmlRenderer;

    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer$3;->val$listener:Lcom/google/glass/html/HtmlRenderer$OnRenderListener;

    #calls: Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V
    invoke-static {v0, p1, v1}, Lcom/google/glass/html/HtmlRenderer;->access$1000(Lcom/google/glass/html/HtmlRenderer;Landroid/webkit/WebView;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V

    .line 291
    :cond_0
    return-void
.end method
