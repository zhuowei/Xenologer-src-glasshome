.class public Lcom/google/glass/home/ScreenOffService;
.super Landroid/app/Service;
.source "ScreenOffService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/ScreenOffService$6;
    }
.end annotation


# static fields
.field private static final MSG_END_NOTIFICATION_WINDOW_DETECTOR:I = 0x0

.field private static final NOTIFYING_SOUND_THRESHOLD_MS:J = 0x7d0L

.field private static final STANDARD_NOTIFICATION_WINDOW_MS:J = 0x1388L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final donStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private isInNotificationWindow:Z

.field private isRegisteredForRLU:Z

.field private isStarted:Z

.field private lastNotifyingSoundTime:J

.field private final notificationWindowHandler:Landroid/os/Handler;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private final screenOffInputReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private soundManager:Lcom/google/glass/sound/SoundManager;

.field timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

.field private timelineItemNotifyTime:J

.field private timelineNotificationBundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;

.field private timelineNotificationItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;

.field private final timelineUpdatedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private ttsHelper:Lcom/google/glass/util/TtsHelper;

.field private voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

.field private final voiceListener:Lcom/google/glass/input/VoiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/glass/home/ScreenOffService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    iput-wide v1, p0, Lcom/google/glass/home/ScreenOffService;->timelineItemNotifyTime:J

    .line 68
    iput-wide v1, p0, Lcom/google/glass/home/ScreenOffService;->lastNotifyingSoundTime:J

    .line 77
    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 80
    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 98
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 101
    new-instance v0, Lcom/google/glass/home/ScreenOffService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/ScreenOffService$1;-><init>(Lcom/google/glass/home/ScreenOffService;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->notificationWindowHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/google/glass/home/ScreenOffService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/ScreenOffService$2;-><init>(Lcom/google/glass/home/ScreenOffService;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->screenOffInputReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 208
    new-instance v0, Lcom/google/glass/home/ScreenOffService$3;

    invoke-direct {v0, p0}, Lcom/google/glass/home/ScreenOffService$3;-><init>(Lcom/google/glass/home/ScreenOffService;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->donStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 249
    new-instance v0, Lcom/google/glass/home/ScreenOffService$4;

    invoke-direct {v0, p0}, Lcom/google/glass/home/ScreenOffService$4;-><init>(Lcom/google/glass/home/ScreenOffService;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineUpdatedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 310
    new-instance v0, Lcom/google/glass/home/ScreenOffService$5;

    invoke-direct {v0, p0}, Lcom/google/glass/home/ScreenOffService$5;-><init>(Lcom/google/glass/home/ScreenOffService;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceListener:Lcom/google/glass/input/VoiceListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/ScreenOffService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/glass/home/ScreenOffService;->closeNotificationWindow(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/glass/home/ScreenOffService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/google/glass/home/ScreenOffService;->timelineItemNotifyTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/glass/home/ScreenOffService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/home/ScreenOffService;->triggerOkGlass()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/glass/home/ScreenOffService;->logScreenOn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/ScreenOffService;->showNotificationIfNeeded(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/ScreenOffService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/glass/home/ScreenOffService;->isInNotificationWindow:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/util/TtsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/home/ScreenOffService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/google/glass/home/ScreenOffService;->lastNotifyingSoundTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/google/glass/home/ScreenOffService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/google/glass/home/ScreenOffService;->lastNotifyingSoundTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/util/PowerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/home/ScreenOffService;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/home/ScreenOffService;->openNotificationWindow(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;)V

    return-void
.end method

.method private closeNotificationWindow(Z)V
    .locals 3
    .parameter "resetVoiceConfig"

    .prologue
    const/4 v2, 0x0

    .line 416
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "Closing notification window."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput-boolean v2, p0, Lcom/google/glass/home/ScreenOffService;->isInNotificationWindow:Z

    .line 418
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->notificationWindowHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    invoke-direct {p0, v2}, Lcom/google/glass/home/ScreenOffService;->setRelativeLookUp(Z)V

    .line 420
    invoke-direct {p0, p1}, Lcom/google/glass/home/ScreenOffService;->stopListeningForVoiceCommand(Z)V

    .line 421
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 568
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "Initializing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/home/ScreenOffService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 570
    return-void
.end method

.method private isMicrophoneAvailable()Z
    .locals 1

    .prologue
    .line 407
    invoke-static {p0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logScreenOn(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private logVoiceCommand(Ljava/lang/String;)V
    .locals 2
    .parameter "commandId"

    .prologue
    .line 302
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private openNotificationWindow(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 4
    .parameter "item"
    .parameter "bundleItem"
    .parameter "itemId"
    .parameter "bundleItemId"

    .prologue
    const/4 v3, 0x1

    .line 378
    iget-boolean v1, p0, Lcom/google/glass/home/ScreenOffService;->isInNotificationWindow:Z

    if-nez v1, :cond_0

    .line 379
    sget-object v1, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v2, "We are not in an existing notification window, openning a new one"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v0, 0x1

    .line 386
    .local v0, resetVoiceConfig:Z
    :goto_0
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 387
    iput-object p2, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 388
    iput-object p3, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 389
    iput-object p4, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/home/ScreenOffService;->timelineItemNotifyTime:J

    .line 391
    invoke-direct {p0, v3}, Lcom/google/glass/home/ScreenOffService;->setRelativeLookUp(Z)V

    .line 393
    invoke-direct {p0}, Lcom/google/glass/home/ScreenOffService;->isMicrophoneAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    invoke-direct {p0, v0}, Lcom/google/glass/home/ScreenOffService;->startListeningForVoiceCommand(Z)V

    .line 401
    :goto_1
    const-wide/16 v1, 0x1388

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/ScreenOffService;->scheduleWindowClose(J)V

    .line 402
    iput-boolean v3, p0, Lcom/google/glass/home/ScreenOffService;->isInNotificationWindow:Z

    .line 403
    return-void

    .line 382
    .end local v0           #resetVoiceConfig:Z
    :cond_0
    sget-object v1, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v2, "We are in an existing notification window, extending the current one"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x0

    .restart local v0       #resetVoiceConfig:Z
    goto :goto_0

    .line 396
    :cond_1
    sget-object v1, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v2, "Opening notification window without voice input because the mic is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private scheduleWindowClose(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    const/4 v1, 0x0

    .line 579
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->notificationWindowHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->notificationWindowHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 582
    return-void
.end method

.method private setRelativeLookUp(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/google/glass/home/ScreenOffService;->isRegisteredForRLU:Z

    if-ne p1, v0, :cond_1

    .line 237
    sget-object v1, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RLU is already "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", not sending request to platform"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_1
    return-void

    .line 237
    :cond_0
    const-string v0, "disabled"

    goto :goto_0

    .line 241
    :cond_1
    iput-boolean p1, p0, Lcom/google/glass/home/ScreenOffService;->isRegisteredForRLU:Z

    .line 242
    sget-object v0, Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;->RELATIVE_LOOK_UP:Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;

    invoke-virtual {v0}, Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/glass/util/HiddenApiHelper;->enableHeadGesture(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private shouldNotify()Z
    .locals 5

    .prologue
    .line 451
    iget-object v1, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/glass/home/ScreenOffService;->timelineItemNotifyTime:J

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 453
    .local v0, notify:Z
    :goto_0
    sget-object v1, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should Notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v0

    .line 451
    .end local v0           #notify:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showNotificationIfNeeded(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "userEventAction"
    .parameter "showVoiceMenu"

    .prologue
    const/4 v4, 0x1

    .line 466
    const/4 v1, 0x0

    .line 469
    .local v1, shown:Z
    invoke-direct {p0}, Lcom/google/glass/home/ScreenOffService;->shouldNotify()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    sget-object v2, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v3, "Starting TimelineActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v1, 0x1

    .line 473
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 475
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "item"

    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 476
    const-string v2, "item_id"

    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 477
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v2, :cond_0

    .line 478
    const-string v2, "bundle_item"

    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 480
    const-string v2, "bundle_item_id"

    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 484
    :cond_0
    const-string v2, "is_notification"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 485
    if-eqz p2, :cond_1

    .line 486
    const-string v2, "show_voice_menu"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 489
    :cond_1
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 493
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/glass/home/ScreenOffService;->closeNotificationWindow(Z)V

    .line 494
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/logging/UserEventAction;->HOME_ACTIVATED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v2, v3, p1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 499
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 500
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/glass/home/ScreenOffService;->timelineItemNotifyTime:J

    .line 502
    return v1
.end method

.method private startListeningForVoiceCommand(Z)V
    .locals 3
    .parameter "resetConfig"

    .prologue
    .line 425
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting to listen for voice command, resetting config? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->reattachListener()V

    .line 428
    if-eqz p1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    sget-object v1, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "VoiceServiceBinder was null, cannot start listening for voice commands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopListeningForVoiceCommand(Z)V
    .locals 3
    .parameter "resetConfig"

    .prologue
    .line 438
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping listening for voice command, resetting config? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    if-eqz v0, :cond_1

    .line 440
    if-eqz p1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    sget-object v1, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    .line 442
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->detachListener()V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "VoiceServiceBinder was null, cannot stop listening for voice commands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private triggerOkGlass()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 347
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 348
    const-string v1, "1"

    invoke-direct {p0, v1}, Lcom/google/glass/home/ScreenOffService;->logVoiceCommand(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    if-eqz v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 357
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :goto_0
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->getSupportedContextualVoiceCommands(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 364
    :goto_1
    return-void

    .line 354
    .end local v0           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .restart local v0       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    goto :goto_0

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 361
    iget-object v1, p0, Lcom/google/glass/home/ScreenOffService;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    sget-object v2, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V

    .line 362
    const-string v1, "12"

    invoke-direct {p0, v1, v3}, Lcom/google/glass/home/ScreenOffService;->showNotificationIfNeeded(Ljava/lang/String;Z)Z

    goto :goto_1
.end method


# virtual methods
.method protected isTtsSpeaking()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 547
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 552
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 553
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/home/ScreenOffService;->voiceListener:Lcom/google/glass/input/VoiceListener;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/input/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 554
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 558
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy called, this should only happen if the system is coming down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineUpdatedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 560
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->screenOffInputReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 561
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->donStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 562
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->unbindVoiceService()V

    .line 563
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 564
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 507
    iget-boolean v0, p0, Lcom/google/glass/home/ScreenOffService;->isStarted:Z

    if-nez v0, :cond_0

    .line 508
    iput-boolean v4, p0, Lcom/google/glass/home/ScreenOffService;->isStarted:Z

    .line 509
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "Starting up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/ScreenOffService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 511
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 512
    new-instance v0, Lcom/google/glass/util/TtsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/TtsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    .line 515
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->screenOffInputReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.google.glass.LOG_HEAD_GESTURE"

    aput-object v2, v1, v5

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "com.google.glass.action.TOUCH_GESTURE"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineUpdatedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->donStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.google.glass.action.DON_STATE"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()V

    .line 533
    :goto_0
    return v4

    .line 530
    :cond_0
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "Already started, ignoring onStartCommand call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 538
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 539
    invoke-super {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    .line 541
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->wakeUp()V

    .line 542
    return-void
.end method
