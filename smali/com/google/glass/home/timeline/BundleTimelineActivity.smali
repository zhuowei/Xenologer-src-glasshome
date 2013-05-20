.class public Lcom/google/glass/home/timeline/BundleTimelineActivity;
.super Lcom/google/glass/home/timeline/TimelineActivity;
.source "BundleTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/BundleTimelineActivity$1;
    }
.end annotation


# instance fields
.field private cursorLoader:Landroid/content/CursorLoader;

.field private isNotification:Z

.field private isReadMore:Z

.field private notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

.field private onResumeTask:Landroid/content/Intent;

.field private timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineActivity;-><init>()V

    .line 180
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {v0}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method

.method protected getTimelineView()Lcom/google/glass/home/timeline/TimelineView;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    return-object v0
.end method

.method protected bridge synthetic getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    iput-boolean v2, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification:Z

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, openBundle:Z
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/home/timeline/TimelineView;->onConfirm(Lcom/google/glass/app/GlassActivity;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x1

    .line 167
    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onConfirm()Z

    move-result v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lcom/google/glass/home/R$id;->timeline:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/BundleTimelineView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    .line 50
    new-instance v0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getTimelineOptionsHelper()Lcom/google/glass/timeline/TimelineOptionsHelper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/timeline/TimelineOptionsHelper;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onDestroy()V

    .line 125
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 129
    :cond_0
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 10
    .parameter "dismissAction"

    .prologue
    .line 188
    iget-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/BundleTimelineView;->getViewedPositions()Ljava/util/Set;

    move-result-object v3

    .line 189
    .local v3, viewedPositions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 190
    iget-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/BundleTimelineView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 191
    .local v0, n:I
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    .line 193
    .local v2, v:I
    new-instance v1, Lcom/google/glass/logging/UserEventHelper;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 194
    .local v1, userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    sget-object v4, Lcom/google/glass/logging/UserEventAction;->VIEWED_BUNDLE:Lcom/google/glass/logging/UserEventAction;

    const-string v5, "n"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "v"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 199
    .end local v0           #n:I
    .end local v1           #userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    .end local v2           #v:I
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v4

    return v4
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->stopLoading()V

    .line 118
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 79
    iget-object v6, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 80
    .local v6, intent:Landroid/content/Intent;
    iput-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 85
    iput-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 88
    :cond_0
    const-string v0, "item_id"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/google/glass/timeline/TimelineItemId;

    .line 90
    .local v4, itemId:Lcom/google/glass/timeline/TimelineItemId;
    const-string v0, "read_more"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isReadMore:Z

    .line 91
    const-string v0, "is_notification"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification:Z

    .line 94
    sget v0, Lcom/google/glass/home/R$id;->slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/SliderView;

    .line 97
    .local v2, sliderView:Lcom/google/glass/widget/SliderView;
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v2, v0}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 100
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v3

    iget-boolean v5, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isReadMore:Z

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/home/timeline/BundleTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Z)Landroid/content/CursorLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 105
    .end local v2           #sliderView:Lcom/google/glass/widget/SliderView;
    .end local v4           #itemId:Lcom/google/glass/timeline/TimelineItemId;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 108
    :cond_2
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 172
    sget-object v0, Lcom/google/glass/home/timeline/BundleTimelineActivity$1;->$SwitchMap$com$google$glass$input$SwipeDirection:[I

    invoke-virtual {p2}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/timeline/TimelineActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    return v0

    .line 175
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification:Z

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 2
    .parameter "command"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v0

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 149
    sget v0, Lcom/google/glass/home/R$layout;->bundle_activity:I

    return v0
.end method

.method public shouldStopSpeakingOnUserAction()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isReadMore:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
