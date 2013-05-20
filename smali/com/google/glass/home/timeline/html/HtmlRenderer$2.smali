.class Lcom/google/glass/home/timeline/html/HtmlRenderer$2;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"

# interfaces
.implements Lcom/google/glass/home/timeline/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;


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

.field final synthetic val$footerMarginRight:I

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field final synthetic val$listener:Lcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/html/HtmlRenderer;Lcom/google/googlex/glass/common/proto/TimelineItem;ILcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$2;->this$0:Lcom/google/glass/home/timeline/html/HtmlRenderer;

    iput-object p2, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput p3, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$2;->val$footerMarginRight:I

    iput-object p4, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$2;->val$listener:Lcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceLoaded()V
    .locals 5

    .prologue
    .line 253
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 256
    iget-object v0, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$2;->this$0:Lcom/google/glass/home/timeline/html/HtmlRenderer;

    #getter for: Lcom/google/glass/home/timeline/html/HtmlRenderer;->isAllocated:Z
    invoke-static {v0}, Lcom/google/glass/home/timeline/html/HtmlRenderer;->access$700(Lcom/google/glass/home/timeline/html/HtmlRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$2;->this$0:Lcom/google/glass/home/timeline/html/HtmlRenderer;

    #getter for: Lcom/google/glass/home/timeline/html/HtmlRenderer;->itemId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/timeline/html/HtmlRenderer;->access$800(Lcom/google/glass/home/timeline/html/HtmlRenderer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$2;->this$0:Lcom/google/glass/home/timeline/html/HtmlRenderer;

    iget-object v1, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iget v2, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$2;->val$footerMarginRight:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/home/timeline/html/HtmlRenderer$2;->val$listener:Lcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;

    #calls: Lcom/google/glass/home/timeline/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZLcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/home/timeline/html/HtmlRenderer;->access$900(Lcom/google/glass/home/timeline/html/HtmlRenderer;Lcom/google/googlex/glass/common/proto/TimelineItem;IZLcom/google/glass/home/timeline/html/HtmlRenderer$OnRenderListener;)V

    .line 259
    :cond_0
    return-void
.end method
