.class Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$1;
.super Ljava/lang/Object;
.source "ReadMoreHtmlActivity.java"

# interfaces
.implements Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->renderItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageCountChange(I)V
    .locals 2
    .parameter "pages"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    #getter for: Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->htmlPagesView:Lcom/google/glass/home/timeline/ReadMoreHtmlView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$000(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/glass/home/timeline/ReadMoreHtmlView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/ReadMoreHtmlView;->updateViews(Z)V

    .line 71
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    #getter for: Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->sliderView:Lcom/google/glass/widget/SliderView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$100(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 72
    return-void
.end method
