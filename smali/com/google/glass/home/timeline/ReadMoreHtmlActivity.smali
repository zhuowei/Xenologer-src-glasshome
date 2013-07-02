.class public Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "ReadMoreHtmlActivity.java"


# instance fields
.field private htmlPagesView:Lcom/google/glass/home/timeline/ReadMoreHtmlView;

.field private item:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private onResumeTask:Landroid/content/Intent;

.field private renderer:Lcom/google/glass/html/HtmlRenderer;

.field private sliderView:Lcom/google/glass/widget/SliderView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/glass/home/timeline/ReadMoreHtmlView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->htmlPagesView:Lcom/google/glass/home/timeline/ReadMoreHtmlView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->renderItem()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->onResumeTask:Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private renderItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->renderer:Lcom/google/glass/html/HtmlRenderer;

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    new-instance v2, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$1;

    invoke-direct {v2, p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$1;-><init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)V

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->htmlPagesView:Lcom/google/glass/home/timeline/ReadMoreHtmlView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlView;->onConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lcom/google/glass/home/R$id;->html_pages:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/ReadMoreHtmlView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->htmlPagesView:Lcom/google/glass/home/timeline/ReadMoreHtmlView;

    .line 39
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->handleIntent(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->htmlPagesView:Lcom/google/glass/home/timeline/ReadMoreHtmlView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/timeline/ReadMoreHtmlView;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->handleIntent(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->htmlPagesView:Lcom/google/glass/home/timeline/ReadMoreHtmlView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlView;->deactivate()V

    .line 122
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->renderer:Lcom/google/glass/html/HtmlRenderer;

    invoke-virtual {v0}, Lcom/google/glass/html/HtmlRenderer;->release()V

    .line 123
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 124
    return-void
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->htmlPagesView:Lcom/google/glass/home/timeline/ReadMoreHtmlView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/home/timeline/ReadMoreHtmlView;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 80
    invoke-static {}, Lcom/google/glass/html/HtmlRenderer;->obtain()Lcom/google/glass/html/HtmlRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->renderer:Lcom/google/glass/html/HtmlRenderer;

    .line 81
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->htmlPagesView:Lcom/google/glass/home/timeline/ReadMoreHtmlView;

    new-instance v1, Lcom/google/glass/home/timeline/ReadMoreHtmlAdapter;

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->renderer:Lcom/google/glass/html/HtmlRenderer;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/home/timeline/ReadMoreHtmlAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/html/HtmlRenderer;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/ReadMoreHtmlView;->setAdapter(Landroid/widget/Adapter;)V

    .line 82
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->htmlPagesView:Lcom/google/glass/home/timeline/ReadMoreHtmlView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlView;->activate()V

    .line 84
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->onResumeTask:Landroid/content/Intent;

    .line 88
    sget v0, Lcom/google/glass/home/R$id;->slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 91
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->htmlPagesView:Lcom/google/glass/home/timeline/ReadMoreHtmlView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 94
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;-><init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->renderItem()V

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lcom/google/glass/home/R$layout;->read_more_html_activity:I

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method
