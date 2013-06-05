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

.field private notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

.field private onResumeTask:Landroid/content/Intent;

.field private timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineActivity;-><init>()V

    .line 181
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    if-eqz p1, :cond_0

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {v0}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method protected getTimelineView()Lcom/google/glass/home/timeline/TimelineView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    return-object v0
.end method

.method protected bridge synthetic getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification:Z

    .line 164
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->onConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Lcom/google/glass/home/R$id;->timeline:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/BundleTimelineView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    .line 48
    new-instance v0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getTimelineOptionsHelper()Lcom/google/glass/timeline/TimelineOptionsHelper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;-><init>(Lcom/google/glass/app/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineOptionsHelper;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    .line 50
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onDestroy()V

    .line 122
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 126
    :cond_0
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 10
    .parameter "dismissAction"

    .prologue
    .line 189
    iget-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/BundleTimelineView;->getViewedPositions()Ljava/util/Set;

    move-result-object v3

    .line 190
    .local v3, viewedPositions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 191
    iget-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/BundleTimelineView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 192
    .local v0, n:I
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    .line 194
    .local v2, v:I
    new-instance v1, Lcom/google/glass/logging/UserEventHelper;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 195
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

    .line 200
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
    .line 55
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->stopLoading()V

    .line 115
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onResume()V

    .line 76
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 77
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 78
    .local v0, intent:Landroid/content/Intent;
    iput-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 81
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v3}, Landroid/content/CursorLoader;->reset()V

    .line 83
    iput-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 86
    :cond_0
    const-string v3, "item_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/TimelineItemId;

    .line 88
    .local v1, itemId:Lcom/google/glass/timeline/TimelineItemId;
    const-string v3, "is_notification"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification:Z

    .line 91
    sget v3, Lcom/google/glass/home/R$id;->slider:I

    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/SliderView;

    .line 94
    .local v2, sliderView:Lcom/google/glass/widget/SliderView;
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 97
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/home/HomeApplication;->getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v4

    invoke-virtual {v3, p0, v2, v4, v1}, Lcom/google/glass/home/timeline/BundleTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 102
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #itemId:Lcom/google/glass/timeline/TimelineItemId;
    .end local v2           #sliderView:Lcom/google/glass/widget/SliderView;
    :cond_1
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v3}, Landroid/content/CursorLoader;->startLoading()V

    .line 105
    :cond_2
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 173
    sget-object v0, Lcom/google/glass/home/timeline/BundleTimelineActivity$1;->$SwitchMap$com$google$glass$input$SwipeDirection:[I

    invoke-virtual {p2}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/timeline/TimelineActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    return v0

    .line 176
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification:Z

    goto :goto_0

    .line 173
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
    .line 143
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    .line 146
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
    .line 151
    sget v0, Lcom/google/glass/home/R$layout;->bundle_activity:I

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method
