.class Lcom/google/glass/home/timeline/HtmlItemPageView$1;
.super Ljava/lang/Object;
.source "HtmlItemPageView.java"

# interfaces
.implements Lcom/google/glass/html/HtmlRenderer$OnRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/HtmlItemPageView;->onLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/HtmlItemPageView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/HtmlItemPageView;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/glass/home/timeline/HtmlItemPageView$1;->this$0:Lcom/google/glass/home/timeline/HtmlItemPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 2
    .parameter "renderer"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/home/timeline/HtmlItemPageView$1;->this$0:Lcom/google/glass/home/timeline/HtmlItemPageView;

    sget v1, Lcom/google/glass/home/R$id;->rendered_html:I

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/HtmlItemPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 61
    return-void
.end method
