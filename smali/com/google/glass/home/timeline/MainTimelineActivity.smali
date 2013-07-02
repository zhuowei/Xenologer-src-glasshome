.class public Lcom/google/glass/home/timeline/MainTimelineActivity;
.super Lcom/google/glass/home/timeline/TimelineActivity;
.source "MainTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/MainTimelineActivity$5;
    }
.end annotation


# static fields
.field private static final NO_WAKE_UP_TIME:J = -0x1L


# instance fields
.field private final guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private isGuestModeEnabled:Z

.field private final notificationReceivedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

.field private onResumeTask:Landroid/content/Intent;

.field private onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

.field private power:Lcom/google/glass/util/PowerHelper;

.field private timelineLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;>;"
        }
    .end annotation
.end field

.field private timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

.field private timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

.field private uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

.field private wakeUpTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineActivity;-><init>()V

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    .line 83
    new-instance v0, Lcom/google/glass/home/timeline/MainTimelineActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$1;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 103
    new-instance v0, Lcom/google/glass/home/timeline/MainTimelineActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$2;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationReceivedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/MainTimelineActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->initTimelineView(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/MainTimelineView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/UiPerformanceLog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/logging/UserEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/voice/NotificationVoiceCommandHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    return-object v0
.end method

.method private cancelOnTimelineLoadRunnable()V
    .locals 3

    .prologue
    .line 573
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    if-eqz v1, :cond_1

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, mayInterruptIfRunning:Z
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Execution of post-load task has been canceled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    .line 580
    .end local v0           #mayInterruptIfRunning:Z
    :cond_1
    return-void
.end method

.method private goToTimeline(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 380
    if-eqz p1, :cond_8

    const-string v6, "item_id"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 383
    if-eqz p1, :cond_1

    const-string v6, "bundle_item"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 384
    const-string v6, "bundle_item"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 391
    .local v1, bundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :goto_0
    if-eqz p1, :cond_2

    const-string v6, "bundle_item_id"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 392
    const-string v6, "bundle_item_id"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/glass/timeline/TimelineItemId;

    .line 399
    .local v2, bundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    :goto_1
    if-nez v2, :cond_3

    .line 400
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    .line 406
    :goto_2
    const-string v6, "item_id"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/google/glass/timeline/TimelineItemId;

    .line 408
    .local v5, itemId:Lcom/google/glass/timeline/TimelineItemId;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Will try to start at notification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, animate:Z
    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v6, v5, v9}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(Ljava/lang/Object;Z)Z

    move-result v3

    .line 411
    .local v3, foundItem:Z
    if-eqz v3, :cond_6

    .line 412
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Found the target item."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-eqz v2, :cond_4

    .line 417
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Opening bundle for item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isNotification()Z

    move-result v6

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->shouldShowVoiceMenuImmediately()Z

    move-result v7

    invoke-static {p0, v1, v2, v6, v7}, Lcom/google/glass/timeline/TimelineHelper;->goToBundle(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineItemId;ZZ)V

    .line 425
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "is_notification"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setIntent(Landroid/content/Intent;)V

    .line 530
    .end local v0           #animate:Z
    .end local v1           #bundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v2           #bundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    .end local v3           #foundItem:Z
    .end local v5           #itemId:Lcom/google/glass/timeline/TimelineItemId;
    :cond_0
    :goto_3
    return-void

    .line 387
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #bundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    goto/16 :goto_0

    .line 395
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #bundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    goto :goto_1

    .line 402
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    goto :goto_2

    .line 426
    .restart local v0       #animate:Z
    .restart local v3       #foundItem:Z
    .restart local v5       #itemId:Lcom/google/glass/timeline/TimelineItemId;
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->shouldShowVoiceMenuImmediately()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 427
    const-string v6, "item"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 428
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Can\'t show notification voice menu without a timeline item."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_5
    iget-object v7, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    const-string v6, "item"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->triggerOkGlass(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z

    .line 432
    invoke-virtual {p0, v9}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setShouldShowVoiceMenuImmediately(Z)V

    goto :goto_3

    .line 435
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Item not yet loaded; will wait for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-nez v2, :cond_7

    .line 439
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    .line 443
    :cond_7
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->cancelOnTimelineLoadRunnable()V

    .line 444
    new-instance v6, Ljava/util/concurrent/FutureTask;

    new-instance v7, Lcom/google/glass/home/timeline/MainTimelineActivity$4;

    invoke-direct {v7, p0, v2, v5, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity$4;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    .line 482
    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v7, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v6, v5, v7}, Lcom/google/glass/home/timeline/MainTimelineView;->waitForLoad(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 486
    .end local v0           #animate:Z
    .end local v1           #bundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v2           #bundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    .end local v3           #foundItem:Z
    .end local v5           #itemId:Lcom/google/glass/timeline/TimelineItemId;
    :cond_8
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    .line 489
    const/4 v4, 0x0

    .line 490
    .local v4, gesture:Lcom/google/glass/util/ScreenOffGesture;
    if-eqz p1, :cond_9

    invoke-static {p1}, Lcom/google/glass/util/ScreenOffGesture;->hasScreenOffGesture(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 491
    invoke-static {p1}, Lcom/google/glass/util/ScreenOffGesture;->fromIntent(Landroid/content/Intent;)Lcom/google/glass/util/ScreenOffGesture;

    move-result-object v4

    .line 492
    invoke-static {p1}, Lcom/google/glass/util/ScreenOffGesture;->clearScreenOffGesture(Landroid/content/Intent;)V

    .line 495
    :cond_9
    sget-object v6, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-static {v6}, Lcom/google/glass/ongoing/OngoingActivityService;->isActivityOngoing(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 496
    sget-object v6, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_LEFT:Lcom/google/glass/util/ScreenOffGesture;

    if-ne v4, v6, :cond_a

    .line 497
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logScreenOnViaSwipe()V

    .line 498
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Showing first future item after screen-off swipe left during nav."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v7, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v7}, Lcom/google/glass/home/timeline/MainTimelineView;->getFirstFutureItemPosition()I

    move-result v7

    invoke-virtual {v6, v7, v9}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    goto/16 :goto_3

    .line 500
    :cond_a
    sget-object v6, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_RIGHT:Lcom/google/glass/util/ScreenOffGesture;

    if-ne v4, v6, :cond_b

    .line 501
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logScreenOnViaSwipe()V

    .line 502
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Showing home screen after screen-off swipe right during nav."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v7, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v7}, Lcom/google/glass/home/timeline/MainTimelineView;->getHomePosition()I

    move-result v7

    invoke-virtual {v6, v7, v9}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    goto/16 :goto_3

    .line 505
    :cond_b
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Showing navigation after wake during nav."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {p0}, Lcom/google/glass/maps/NavigationLauncher;->bringNavigationToForeground(Landroid/content/Context;)V

    .line 509
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    goto/16 :goto_3

    .line 513
    :cond_c
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/home/HomeApplication;->isSpeaking()Z

    move-result v6

    if-nez v6, :cond_0

    .line 516
    sget-object v6, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_LEFT:Lcom/google/glass/util/ScreenOffGesture;

    if-ne v4, v6, :cond_d

    .line 517
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logScreenOnViaSwipe()V

    .line 518
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Showing first future item after screen-off swipe left."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v7, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v7}, Lcom/google/glass/home/timeline/MainTimelineView;->getFirstFutureItemPosition()I

    move-result v7

    invoke-virtual {v6, v7, v9}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    goto/16 :goto_3

    .line 520
    :cond_d
    sget-object v6, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_RIGHT:Lcom/google/glass/util/ScreenOffGesture;

    if-ne v4, v6, :cond_e

    .line 521
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logScreenOnViaSwipe()V

    .line 522
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Showing first history item after screen-off swipe right."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v7, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v7}, Lcom/google/glass/home/timeline/MainTimelineView;->getFirstHistoryItemPosition()I

    move-result v7

    invoke-virtual {v6, v7, v9}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    goto/16 :goto_3

    .line 525
    :cond_e
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Showing most relevant active item after wake."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v7, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v7}, Lcom/google/glass/home/timeline/MainTimelineView;->getMostRelevantActiveItemPosition()I

    move-result v7

    invoke-virtual {v6, v7, v9}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    goto/16 :goto_3
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Saved intent is not null, what the what?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    return-void

    .line 300
    :cond_0
    if-nez p1, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Incoming intent was null, what the what?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 309
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->cancelOnTimelineLoadRunnable()V

    goto :goto_0
.end method

.method private hideTimeline()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineView;->setVisibility(I)V

    .line 758
    return-void
.end method

.method private initTimelineView(Z)V
    .locals 7
    .parameter "isGuestModeEnabled"

    .prologue
    const/4 v6, 0x0

    .line 160
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->isGuestModeEnabled:Z

    if-ne v4, p1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Already in guest mode state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->isGuestModeEnabled:Z

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, isActivated:Z
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    if-eqz v4, :cond_4

    .line 169
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/MainTimelineView;->isActivated()Z

    move-result v2

    .line 170
    if-eqz v2, :cond_2

    .line 171
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/MainTimelineView;->deactivate()V

    .line 173
    :cond_2
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v4, v6}, Lcom/google/glass/home/timeline/MainTimelineView;->setUiPerformanceLog(Lcom/google/glass/home/timeline/UiPerformanceLog;)V

    .line 174
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    if-eqz v4, :cond_3

    .line 175
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    invoke-virtual {v4, v5}, Lcom/google/glass/home/timeline/MainTimelineView;->removePositionListener(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V

    .line 176
    iput-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    .line 178
    :cond_3
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/MainTimelineView;->clear()V

    .line 179
    iput-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    .line 180
    iput-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 185
    .local v0, contentFrameLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 188
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->stopTimelineLoaders()V

    .line 191
    if-eqz p1, :cond_5

    .line 192
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Showing guest timeline."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v4, Lcom/google/glass/home/timeline/GuestTimelineView;

    invoke-direct {v4, p0}, Lcom/google/glass/home/timeline/GuestTimelineView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    .line 198
    :goto_1
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 201
    new-instance v4, Lcom/google/glass/home/timeline/TimelineOverlayView;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/home/timeline/TimelineOverlayView;-><init>(Landroid/content/Context;Lcom/google/glass/home/timeline/TimelineView;)V

    iput-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

    .line 202
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 205
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/home/HomeApplication;->getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getNotificationState()Lcom/google/glass/home/timeline/NotificationState;

    move-result-object v6

    invoke-virtual {v4, p0, v5, v6}, Lcom/google/glass/home/timeline/MainTimelineView;->init(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/NotificationState;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    .line 209
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-virtual {v4, v5}, Lcom/google/glass/home/timeline/MainTimelineView;->setUiPerformanceLog(Lcom/google/glass/home/timeline/UiPerformanceLog;)V

    .line 212
    new-instance v4, Lcom/google/glass/home/timeline/MainTimelineActivity$3;

    invoke-direct {v4, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$3;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    iput-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    .line 272
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    invoke-virtual {v4, v5}, Lcom/google/glass/home/timeline/MainTimelineView;->addPositionListener(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V

    .line 275
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timeline loaders."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Loader;

    .line 277
    .local v3, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {v3}, Landroid/content/Loader;->startLoading()V

    goto :goto_2

    .line 195
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Showing user timeline."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v4, Lcom/google/glass/home/timeline/UserTimelineView;

    invoke-direct {v4, p0}, Lcom/google/glass/home/timeline/UserTimelineView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    goto/16 :goto_1

    .line 281
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6
    if-eqz v2, :cond_0

    .line 282
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/MainTimelineView;->activate()V

    .line 283
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v5}, Lcom/google/glass/home/timeline/MainTimelineView;->getHomePosition()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    .line 284
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    goto/16 :goto_0
.end method

.method private isLoadingTimeline()Z
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logScreenOnViaSwipe()V
    .locals 2

    .prologue
    .line 536
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method private logWakeUpDelay(J)V
    .locals 6
    .parameter "showTimeMillis"

    .prologue
    const-wide/16 v4, -0x1

    .line 623
    iget-wide v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 624
    iget-wide v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    sub-long v0, p1, v2

    .line 625
    .local v0, delay:J
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->WAKE_UP_DELAY:Lcom/google/glass/logging/UserEventAction;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 626
    iput-wide v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    .line 630
    .end local v0           #delay:J
    :goto_0
    return-void

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No wake up time known."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setWakeUpTime(J)V
    .locals 0
    .parameter "wakeUpTimeMillis"

    .prologue
    .line 613
    iput-wide p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    .line 614
    return-void
.end method

.method private showTimeline()V
    .locals 3

    .prologue
    .line 748
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineView;->setAlpha(F)V

    .line 749
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineView;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$integer;->show_timeline_fade_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 752
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logWakeUpDelay(J)V

    .line 753
    return-void
.end method

.method private stopTimelineLoaders()V
    .locals 3

    .prologue
    .line 600
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 601
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Loader;

    .line 602
    .local v1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {v1}, Landroid/content/Loader;->reset()V

    goto :goto_0

    .line 604
    .end local v1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    .line 606
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private transferScreenOffExtras(Landroid/content/Intent;)V
    .locals 4
    .parameter "outgoing"

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 736
    .local v0, incoming:Landroid/content/Intent;
    const-string v1, "screen_turned_on"

    const-string v2, "screen_turned_on"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 739
    invoke-static {v0, p1}, Lcom/google/glass/util/ScreenOffGesture;->copyScreenOffGesture(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 740
    invoke-static {v0}, Lcom/google/glass/util/ScreenOffGesture;->clearScreenOffGesture(Landroid/content/Intent;)V

    .line 741
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 2

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->shouldShowVoiceMenuImmediately()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 653
    :goto_0
    return-object v0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {v0}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    goto :goto_0

    .line 652
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getting config from timelineView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineView;->getCurrentVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method protected getTimelineView()Lcom/google/glass/home/timeline/TimelineView;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    return-object v0
.end method

.method protected bridge synthetic getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setIsNotification(Z)V

    .line 663
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->onConfirm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->shouldSuppressSingleTapSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    :cond_0
    const/4 v0, 0x1

    .line 668
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->power:Lcom/google/glass/util/PowerHelper;

    .line 137
    new-instance v0, Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/UiPerformanceLog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    .line 139
    new-instance v0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineOptionsHelper()Lcom/google/glass/timeline/TimelineOptionsHelper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;-><init>(Lcom/google/glass/app/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineOptionsHelper;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    .line 142
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->initTimelineView(Z)V

    .line 145
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.google.glass.ACTION_GUEST_MODE"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationReceivedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.google.glass.ACTION_NOTIFICATION_RECEIVED"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 151
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->stopTimelineLoaders()V

    .line 592
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 593
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationReceivedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 595
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onDestroy()V

    .line 596
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .parameter "dismissAction"

    .prologue
    .line 682
    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    if-ne p1, v0, :cond_0

    .line 683
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->HOME_DISMISSED:Lcom/google/glass/logging/UserEventAction;

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 686
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setIsNotification(Z)V

    .line 688
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->onDoubleTap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    const/4 v0, 0x1

    .line 677
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onDoubleTap()Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 290
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 292
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->stopPerformanceMeasure()V

    .line 543
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->stopPerformanceLogging()V

    .line 545
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onPause()V

    .line 546
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    .line 325
    new-instance v3, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v3, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/glass/home/timeline/MainTimelineActivity;->initTimelineView(Z)V

    .line 328
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onResume()V

    .line 331
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/MainTimelineView;->updateQueryParameters()V

    .line 334
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 336
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 340
    .local v0, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 342
    const-string v3, "wake_up_time"

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setWakeUpTime(J)V

    .line 346
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isLoadingTimeline()Z

    move-result v3

    if-nez v3, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No pending intent, going to the timeline."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->goToTimeline(Landroid/content/Intent;)V

    .line 353
    :cond_0
    if-eqz v0, :cond_2

    const-string v3, "screen_turned_on"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 355
    .local v1, unblockScreen:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Now turning the screen on."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {p0, v2}, Lcom/google/glass/hidden/HiddenPowerManager;->preventScreenOn(Landroid/content/Context;Z)V

    .line 358
    const-string v2, "screen_turned_on"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 374
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #unblockScreen:Z
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/UiPerformanceLog;->startPerformanceLogging()V

    .line 375
    return-void

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    move v1, v2

    .line 353
    goto :goto_0

    .line 361
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "There is no pending task, checking for pending runnable."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-direct {p0, v5, v6}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setWakeUpTime(J)V

    .line 366
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isLoadingTimeline()Z

    move-result v3

    if-nez v3, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No pending intent, showing the timeline."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    .line 369
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_notification"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setIsNotification(Z)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->cancelOnTimelineLoadRunnable()V

    .line 559
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    .line 560
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onStop()V

    .line 561
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 693
    sget-object v0, Lcom/google/glass/home/timeline/MainTimelineActivity$5;->$SwitchMap$com$google$glass$input$SwipeDirection:[I

    invoke-virtual {p2}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 703
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/timeline/TimelineActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    return v0

    .line 696
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setIsNotification(Z)V

    goto :goto_0

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 3
    .parameter "command"

    .prologue
    .line 708
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->power:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 709
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/TimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v2, p1, v1}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    .line 730
    :goto_0
    return v1

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/TimelineView;->getHomePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/TimelineView;->getSelectedItemPosition()I

    move-result v2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p1, v1}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    sget-object v1, Lcom/google/glass/voice/VoiceConfigDescriptor;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 718
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 719
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/logging/UserEventAction;

    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 725
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/home/voice/VoiceMainMenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 726
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->transferScreenOffExtras(Landroid/content/Intent;)V

    .line 727
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->startActivity(Landroid/content/Intent;)V

    .line 728
    const/4 v1, 0x1

    goto :goto_0

    .line 730
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v1

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 314
    sget v0, Lcom/google/glass/home/R$layout;->timeline_activity:I

    return v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method
