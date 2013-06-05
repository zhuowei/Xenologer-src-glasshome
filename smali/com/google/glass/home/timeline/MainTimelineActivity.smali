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

.field private isFromScreenOffNotification:Z

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
    .line 44
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->isFromScreenOffNotification:Z

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    .line 82
    new-instance v0, Lcom/google/glass/home/timeline/MainTimelineActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$1;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 102
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
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->initTimelineView(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/MainTimelineView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isFromScreenOffNotification()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/UiPerformanceLog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/logging/UserEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cancelOnTimelineLoadRunnable()V
    .locals 3

    .prologue
    .line 553
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    if-eqz v1, :cond_1

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, mayInterruptIfRunning:Z
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Execution of post-load task has been canceled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    .line 560
    .end local v0           #mayInterruptIfRunning:Z
    :cond_1
    return-void
.end method

.method private goToTimeline(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 388
    if-eqz p1, :cond_5

    const-string v5, "item_id"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 392
    if-eqz p1, :cond_1

    const-string v5, "bundle_item_id"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 393
    const-string v5, "bundle_item_id"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/TimelineItemId;

    .line 400
    .local v1, bundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    :goto_0
    if-nez v1, :cond_2

    .line 401
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    .line 407
    :goto_1
    const-string v5, "item_id"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/google/glass/timeline/TimelineItemId;

    .line 409
    .local v4, itemId:Lcom/google/glass/timeline/TimelineItemId;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Will try to start at notification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, animate:Z
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v5, v4, v8}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(Ljava/lang/Object;Z)Z

    move-result v2

    .line 412
    .local v2, foundItem:Z
    if-eqz v2, :cond_3

    .line 413
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Found the target item."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opening bundle for item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isFromScreenOffNotification()Z

    move-result v5

    invoke-static {p0, v1, v5}, Lcom/google/glass/timeline/TimelineHelper;->goToBundle(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 508
    .end local v0           #animate:Z
    .end local v1           #bundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    .end local v2           #foundItem:Z
    .end local v4           #itemId:Lcom/google/glass/timeline/TimelineItemId;
    :cond_0
    :goto_2
    return-void

    .line 396
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #bundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    goto :goto_0

    .line 403
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    goto :goto_1

    .line 421
    .restart local v0       #animate:Z
    .restart local v2       #foundItem:Z
    .restart local v4       #itemId:Lcom/google/glass/timeline/TimelineItemId;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item not yet loaded; will wait for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-nez v1, :cond_4

    .line 425
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    .line 429
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->cancelOnTimelineLoadRunnable()V

    .line 430
    new-instance v5, Ljava/util/concurrent/FutureTask;

    new-instance v6, Lcom/google/glass/home/timeline/MainTimelineActivity$4;

    invoke-direct {v6, p0, v1, v4}, Lcom/google/glass/home/timeline/MainTimelineActivity$4;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;)V

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    .line 459
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v5, v4, v6}, Lcom/google/glass/home/timeline/MainTimelineView;->waitForLoad(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 464
    .end local v0           #animate:Z
    .end local v1           #bundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    .end local v2           #foundItem:Z
    .end local v4           #itemId:Lcom/google/glass/timeline/TimelineItemId;
    :cond_5
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    .line 467
    const/4 v3, 0x0

    .line 468
    .local v3, gesture:Lcom/google/glass/util/ScreenOffGesture;
    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/google/glass/util/ScreenOffGesture;->hasScreenOffGesture(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 469
    invoke-static {p1}, Lcom/google/glass/util/ScreenOffGesture;->fromIntent(Landroid/content/Intent;)Lcom/google/glass/util/ScreenOffGesture;

    move-result-object v3

    .line 470
    invoke-static {p1}, Lcom/google/glass/util/ScreenOffGesture;->clearScreenOffGesture(Landroid/content/Intent;)V

    .line 473
    :cond_6
    sget-object v5, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-static {v5}, Lcom/google/glass/ongoing/OngoingActivityService;->isActivityOngoing(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 474
    sget-object v5, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_LEFT:Lcom/google/glass/util/ScreenOffGesture;

    if-ne v3, v5, :cond_7

    .line 475
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logScreenOnViaSwipe()V

    .line 476
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Showing first future item after screen-off swipe left during nav."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v6}, Lcom/google/glass/home/timeline/MainTimelineView;->getFirstFutureItemPosition()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    goto :goto_2

    .line 478
    :cond_7
    sget-object v5, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_RIGHT:Lcom/google/glass/util/ScreenOffGesture;

    if-ne v3, v5, :cond_8

    .line 479
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logScreenOnViaSwipe()V

    .line 480
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Showing home screen after screen-off swipe right during nav."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v6}, Lcom/google/glass/home/timeline/MainTimelineView;->getHomePosition()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    goto/16 :goto_2

    .line 483
    :cond_8
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Showing navigation after wake during nav."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {p0}, Lcom/google/glass/maps/NavigationLauncher;->bringNavigationToForeground(Landroid/content/Context;)V

    .line 487
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    goto/16 :goto_2

    .line 491
    :cond_9
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/home/HomeApplication;->isSpeaking()Z

    move-result v5

    if-nez v5, :cond_0

    .line 494
    sget-object v5, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_LEFT:Lcom/google/glass/util/ScreenOffGesture;

    if-ne v3, v5, :cond_a

    .line 495
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logScreenOnViaSwipe()V

    .line 496
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Showing first future item after screen-off swipe left."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v6}, Lcom/google/glass/home/timeline/MainTimelineView;->getFirstFutureItemPosition()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    goto/16 :goto_2

    .line 498
    :cond_a
    sget-object v5, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_RIGHT:Lcom/google/glass/util/ScreenOffGesture;

    if-ne v3, v5, :cond_b

    .line 499
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logScreenOnViaSwipe()V

    .line 500
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Showing first history item after screen-off swipe right."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v6}, Lcom/google/glass/home/timeline/MainTimelineView;->getFirstHistoryItemPosition()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    goto/16 :goto_2

    .line 503
    :cond_b
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Showing most relevant active item after wake."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v6}, Lcom/google/glass/home/timeline/MainTimelineView;->getMostRelevantActiveItemPosition()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    goto/16 :goto_2
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Saved intent is not null, what the what?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    return-void

    .line 302
    :cond_0
    if-nez p1, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Incoming intent was null, what the what?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 311
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->cancelOnTimelineLoadRunnable()V

    goto :goto_0
.end method

.method private hideTimeline()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineView;->setVisibility(I)V

    .line 722
    return-void
.end method

.method private initTimelineView(Z)V
    .locals 7
    .parameter "isGuestModeEnabled"

    .prologue
    const/4 v5, 0x0

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

    .line 288
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

    if-eqz v4, :cond_3

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

    invoke-virtual {v4, v5}, Lcom/google/glass/home/timeline/MainTimelineView;->setUiPerformanceLog(Lcom/google/glass/home/timeline/UiPerformanceLog;)V

    .line 174
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v4, v5}, Lcom/google/glass/home/timeline/MainTimelineView;->setPositionListener(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V

    .line 175
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/MainTimelineView;->clear()V

    .line 176
    iput-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    .line 177
    iput-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 182
    .local v0, contentFrameLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 185
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->stopTimelineLoaders()V

    .line 188
    if-eqz p1, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Showing guest timeline."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v4, Lcom/google/glass/home/timeline/GuestTimelineView;

    invoke-direct {v4, p0}, Lcom/google/glass/home/timeline/GuestTimelineView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    .line 195
    :goto_1
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 198
    new-instance v4, Lcom/google/glass/home/timeline/TimelineOverlayView;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-direct {v4, v5, v6}, Lcom/google/glass/home/timeline/TimelineOverlayView;-><init>(Landroid/content/Context;Lcom/google/glass/home/timeline/TimelineView;)V

    iput-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

    .line 199
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 202
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/home/HomeApplication;->getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/google/glass/home/timeline/MainTimelineView;->init(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    .line 205
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-virtual {v4, v5}, Lcom/google/glass/home/timeline/MainTimelineView;->setUiPerformanceLog(Lcom/google/glass/home/timeline/UiPerformanceLog;)V

    .line 208
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    new-instance v5, Lcom/google/glass/home/timeline/MainTimelineActivity$3;

    invoke-direct {v5, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$3;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/home/timeline/MainTimelineView;->setPositionListener(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V

    .line 277
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

    .line 278
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Loader;

    .line 279
    .local v3, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {v3}, Landroid/content/Loader;->startLoading()V

    goto :goto_2

    .line 192
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Showing user timeline."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v4, Lcom/google/glass/home/timeline/UserTimelineView;

    invoke-direct {v4, p0}, Lcom/google/glass/home/timeline/UserTimelineView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    goto/16 :goto_1

    .line 283
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5
    if-eqz v2, :cond_0

    .line 284
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/MainTimelineView;->activate()V

    .line 285
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v5}, Lcom/google/glass/home/timeline/MainTimelineView;->getHomePosition()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(IZ)V

    .line 286
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    goto/16 :goto_0
.end method

.method private isFromScreenOffNotification()Z
    .locals 1

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->isFromScreenOffNotification:Z

    return v0
.end method

.method private isLoadingTimeline()Z
    .locals 1

    .prologue
    .line 548
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
    .line 514
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method private logWakeUpDelay(J)V
    .locals 6
    .parameter "showTimeMillis"

    .prologue
    const-wide/16 v4, -0x1

    .line 618
    iget-wide v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 619
    iget-wide v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    sub-long v0, p1, v2

    .line 620
    .local v0, delay:J
    sget-object v2, Lcom/google/glass/logging/UserEventAction;->WAKE_UP_DELAY:Lcom/google/glass/logging/UserEventAction;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 621
    iput-wide v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    .line 625
    .end local v0           #delay:J
    :goto_0
    return-void

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No wake up time known."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFromScreenOffNotification(Z)V
    .locals 3
    .parameter "isFromScreenOffNotification"

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting isFromScreenOffNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->isFromScreenOffNotification:Z

    .line 601
    return-void
.end method

.method private setWakeUpTime(J)V
    .locals 0
    .parameter "wakeUpTimeMillis"

    .prologue
    .line 608
    iput-wide p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    .line 609
    return-void
.end method

.method private showTimeline()V
    .locals 3

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineView;->setAlpha(F)V

    .line 713
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineView;->setVisibility(I)V

    .line 714
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

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logWakeUpDelay(J)V

    .line 717
    return-void
.end method

.method private stopTimelineLoaders()V
    .locals 3

    .prologue
    .line 581
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 582
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

    .line 583
    .local v1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {v1}, Landroid/content/Loader;->reset()V

    goto :goto_0

    .line 585
    .end local v1           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    .line 587
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 2

    .prologue
    .line 639
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->OK_GLASS_EVERYWHERE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 647
    :goto_0
    return-object v0

    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isFromScreenOffNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {v0}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getting config from timelineView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineView;->getCurrentVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method protected getTimelineView()Lcom/google/glass/home/timeline/TimelineView;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    return-object v0
.end method

.method protected bridge synthetic getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setFromScreenOffNotification(Z)V

    .line 657
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

    .line 659
    :cond_0
    const/4 v0, 0x1

    .line 662
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

    .line 132
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->power:Lcom/google/glass/util/PowerHelper;

    .line 136
    new-instance v0, Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/UiPerformanceLog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    .line 138
    new-instance v0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineOptionsHelper()Lcom/google/glass/timeline/TimelineOptionsHelper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;-><init>(Lcom/google/glass/app/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineOptionsHelper;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    .line 141
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->initTimelineView(Z)V

    .line 144
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.google.glass.ACTION_GUEST_MODE"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationReceivedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.google.glass.ACTION_NOTIFICATION_RECEIVED"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->stopTimelineLoaders()V

    .line 573
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->guestModeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 574
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationReceivedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 576
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onDestroy()V

    .line 577
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .parameter "dismissAction"

    .prologue
    .line 676
    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    if-ne p1, v0, :cond_0

    .line 677
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->HOME_DISMISSED:Lcom/google/glass/logging/UserEventAction;

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 679
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->onDoubleTap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    const/4 v0, 0x1

    .line 671
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
    .line 292
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 293
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 294
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->stopPerformanceMeasure()V

    .line 522
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/UiPerformanceLog;->stopPerformanceLogging()V

    .line 524
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onPause()V

    .line 525
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    .line 327
    new-instance v3, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v3, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/glass/home/timeline/MainTimelineActivity;->initTimelineView(Z)V

    .line 330
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onResume()V

    .line 333
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/MainTimelineView;->updateQueryParameters()V

    .line 336
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 338
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 342
    .local v0, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 345
    const-string v3, "from_screen_off_notification"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setFromScreenOffNotification(Z)V

    .line 347
    const-string v3, "wake_up_time"

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setWakeUpTime(J)V

    .line 351
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isLoadingTimeline()Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No pending intent, going to the timeline."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->goToTimeline(Landroid/content/Intent;)V

    .line 358
    :cond_0
    if-eqz v0, :cond_2

    const-string v3, "screen_turned_on"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 360
    .local v1, unblockScreen:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Now turning the screen on."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {p0, v2}, Lcom/google/glass/hidden/HiddenPowerManager;->preventScreenOn(Landroid/content/Context;Z)V

    .line 363
    const-string v2, "screen_turned_on"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 379
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #unblockScreen:Z
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->uiPerformanceLog:Lcom/google/glass/home/timeline/UiPerformanceLog;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/UiPerformanceLog;->startPerformanceLogging()V

    .line 380
    return-void

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    move v1, v2

    .line 358
    goto :goto_0

    .line 366
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "There is no pending task, checking for pending runnable."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0, v5, v6}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setWakeUpTime(J)V

    .line 371
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isLoadingTimeline()Z

    move-result v3

    if-nez v3, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No pending intent, showing the timeline."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    .line 374
    invoke-direct {p0, v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setFromScreenOffNotification(Z)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->cancelOnTimelineLoadRunnable()V

    .line 539
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    .line 540
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->onStop()V

    .line 541
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 684
    sget-object v0, Lcom/google/glass/home/timeline/MainTimelineActivity$5;->$SwitchMap$com$google$glass$input$SwipeDirection:[I

    invoke-virtual {p2}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 694
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/timeline/TimelineActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    return v0

    .line 687
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setFromScreenOffNotification(Z)V

    goto :goto_0

    .line 684
    nop

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
    .line 699
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->power:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 700
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isFromScreenOffNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationVoiceHelper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/home/timeline/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    .line 703
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
    .line 316
    sget v0, Lcom/google/glass/home/R$layout;->timeline_activity:I

    return v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method
