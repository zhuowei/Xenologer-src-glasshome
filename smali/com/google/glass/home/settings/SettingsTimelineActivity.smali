.class public Lcom/google/glass/home/settings/SettingsTimelineActivity;
.super Lcom/google/glass/home/timeline/TimelineActivity;
.source "SettingsTimelineActivity.java"


# instance fields
.field private adapter:Lcom/google/glass/home/settings/SettingsAdapter;

.field private timeline:Lcom/google/glass/home/settings/SettingsTimelineView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTimelineView()Lcom/google/glass/home/settings/SettingsTimelineView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/home/settings/SettingsTimelineActivity;->timeline:Lcom/google/glass/home/settings/SettingsTimelineView;

    return-object v0
.end method

.method protected bridge synthetic getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/glass/home/settings/SettingsTimelineActivity;->getTimelineView()Lcom/google/glass/home/settings/SettingsTimelineView;

    move-result-object v0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/home/settings/SettingsTimelineActivity;->getTimelineView()Lcom/google/glass/home/settings/SettingsTimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/settings/SettingsTimelineView;->onConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v1, Lcom/google/glass/home/settings/SettingsAdapter;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/SettingsAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/glass/home/settings/SettingsTimelineActivity;->adapter:Lcom/google/glass/home/settings/SettingsAdapter;

    .line 35
    sget v1, Lcom/google/glass/home/R$id;->timeline:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/settings/SettingsTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/settings/SettingsTimelineView;

    iput-object v1, p0, Lcom/google/glass/home/settings/SettingsTimelineActivity;->timeline:Lcom/google/glass/home/settings/SettingsTimelineView;

    .line 36
    iget-object v1, p0, Lcom/google/glass/home/settings/SettingsTimelineActivity;->timeline:Lcom/google/glass/home/settings/SettingsTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/settings/SettingsTimelineActivity;->adapter:Lcom/google/glass/home/settings/SettingsAdapter;

    invoke-virtual {v1, v2}, Lcom/google/glass/home/settings/SettingsTimelineView;->setAdapter(Landroid/widget/Adapter;)V

    .line 38
    sget v1, Lcom/google/glass/home/R$id;->settings_slider:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/settings/SettingsTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    .line 39
    .local v0, sliderView:Lcom/google/glass/widget/SliderView;
    iget-object v1, p0, Lcom/google/glass/home/settings/SettingsTimelineActivity;->timeline:Lcom/google/glass/home/settings/SettingsTimelineView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 40
    iget-object v1, p0, Lcom/google/glass/home/settings/SettingsTimelineActivity;->adapter:Lcom/google/glass/home/settings/SettingsAdapter;

    invoke-virtual {v1}, Lcom/google/glass/home/settings/SettingsAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 43
    invoke-virtual {p0}, Lcom/google/glass/home/settings/SettingsTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/home/settings/SettingsTimelineActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 66
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->goToSettingsCover()V

    .line 67
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 26
    new-instance v1, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v1, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/glass/home/settings/SettingsTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/util/SettingsHelper;->indexFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 27
    .local v0, index:I
    invoke-virtual {p0}, Lcom/google/glass/home/settings/SettingsTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v1, p0, Lcom/google/glass/home/settings/SettingsTimelineActivity;->timeline:Lcom/google/glass/home/settings/SettingsTimelineView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/home/settings/SettingsTimelineView;->setSelection(IZ)V

    .line 29
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/google/glass/home/R$layout;->settings_timeline_activity:I

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
