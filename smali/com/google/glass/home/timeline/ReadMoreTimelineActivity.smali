.class public Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;
.super Lcom/google/glass/home/timeline/TimelineActivity;
.source "ReadMoreTimelineActivity.java"


# instance fields
.field private onResumeTask:Landroid/content/Intent;

.field private timelineView:Lcom/google/glass/home/timeline/ReadMoreTimelineView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineActivity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    if-eqz p1, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->onResumeTask:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected getTimelineView()Lcom/google/glass/home/timeline/TimelineView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    return-object v0
.end method

.method protected bridge synthetic getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lcom/google/glass/home/R$id;->timeline:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    .line 30
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 57
    iget-object v6, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 58
    .local v6, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 60
    const-string v0, "item_id"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/google/glass/timeline/TimelineItemId;

    .line 64
    .local v5, itemId:Lcom/google/glass/timeline/TimelineItemId;
    sget v0, Lcom/google/glass/home/R$id;->slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/SliderView;

    .line 67
    .local v2, sliderView:Lcom/google/glass/widget/SliderView;
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    invoke-virtual {v2, v0}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 70
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->getNotificationState()Lcom/google/glass/home/timeline/NotificationState;

    move-result-object v3

    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/home/timeline/NotificationState;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 73
    .end local v2           #sliderView:Lcom/google/glass/widget/SliderView;
    .end local v5           #itemId:Lcom/google/glass/timeline/TimelineItemId;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/google/glass/home/R$layout;->read_more_activity:I

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public shouldStopSpeakingOnUserAction()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
