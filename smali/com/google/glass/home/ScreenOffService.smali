.class public Lcom/google/glass/home/ScreenOffService;
.super Landroid/app/Service;
.source "ScreenOffService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/ScreenOffService$7;
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

.field private timelineItemNotifyTime:J

.field private timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;

.field private timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;

.field private final timelineUpdatedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

.field private final voiceServiceConnection:Landroid/content/ServiceConnection;

.field private final voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
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

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    iput-wide v1, p0, Lcom/google/glass/home/ScreenOffService;->timelineItemNotifyTime:J

    .line 71
    iput-wide v1, p0, Lcom/google/glass/home/ScreenOffService;->lastNotifyingSoundTime:J

    .line 74
    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 77
    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 97
    new-instance v0, Lcom/google/glass/home/ScreenOffService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/ScreenOffService$1;-><init>(Lcom/google/glass/home/ScreenOffService;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->notificationWindowHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/google/glass/home/ScreenOffService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/ScreenOffService$2;-><init>(Lcom/google/glass/home/ScreenOffService;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->screenOffInputReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 203
    new-instance v0, Lcom/google/glass/home/ScreenOffService$3;

    invoke-direct {v0, p0}, Lcom/google/glass/home/ScreenOffService$3;-><init>(Lcom/google/glass/home/ScreenOffService;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->donStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 239
    new-instance v0, Lcom/google/glass/home/ScreenOffService$4;

    invoke-direct {v0, p0}, Lcom/google/glass/home/ScreenOffService$4;-><init>(Lcom/google/glass/home/ScreenOffService;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineUpdatedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 292
    new-instance v0, Lcom/google/glass/home/ScreenOffService$5;

    invoke-direct {v0, p0}, Lcom/google/glass/home/ScreenOffService$5;-><init>(Lcom/google/glass/home/ScreenOffService;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;

    .line 377
    new-instance v0, Lcom/google/glass/home/ScreenOffService$6;

    invoke-direct {v0, p0}, Lcom/google/glass/home/ScreenOffService$6;-><init>(Lcom/google/glass/home/ScreenOffService;)V

    iput-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/ScreenOffService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/glass/home/ScreenOffService;->closeNotificationWindow(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/home/ScreenOffService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/ScreenOffService;->scheduleWindowClose(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/glass/home/ScreenOffService;Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/glass/home/ScreenOffService;->logVoiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/glass/home/ScreenOffService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->notificationWindowHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/timeline/TimelineItemId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/timeline/TimelineItemId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/voice/VoiceServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/glass/home/ScreenOffService;->logScreenOn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/glass/home/ScreenOffService;->showNotificationIfNeeded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/ScreenOffService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/glass/home/ScreenOffService;->isInNotificationWindow:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/ScreenOffService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/glass/home/ScreenOffService;->lastNotifyingSoundTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/google/glass/home/ScreenOffService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/google/glass/home/ScreenOffService;->lastNotifyingSoundTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/util/PowerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/home/ScreenOffService;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/ScreenOffService;->openNotificationWindow(Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;)V

    return-void
.end method

.method static synthetic access$902(Lcom/google/glass/home/ScreenOffService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/google/glass/home/ScreenOffService;->timelineItemNotifyTime:J

    return-wide p1
.end method

.method private closeNotificationWindow(Z)V
    .locals 3
    .parameter "resetVoiceConfig"

    .prologue
    const/4 v2, 0x0

    .line 427
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "Closing notification window."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iput-boolean v2, p0, Lcom/google/glass/home/ScreenOffService;->isInNotificationWindow:Z

    .line 429
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->notificationWindowHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    invoke-direct {p0, v2}, Lcom/google/glass/home/ScreenOffService;->setRelativeLookUp(Z)V

    .line 431
    invoke-direct {p0, p1}, Lcom/google/glass/home/ScreenOffService;->stopListeningForVoiceCommand(Z)V

    .line 432
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 562
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "Initializing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/home/ScreenOffService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 564
    return-void
.end method

.method private logScreenOn(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method private logVoiceCommand(Ljava/lang/String;)V
    .locals 2
    .parameter "commandId"

    .prologue
    .line 288
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method private openNotificationWindow(Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 4
    .parameter "itemId"
    .parameter "bundleItemId"

    .prologue
    const/4 v3, 0x1

    .line 403
    iget-boolean v1, p0, Lcom/google/glass/home/ScreenOffService;->isInNotificationWindow:Z

    if-nez v1, :cond_0

    .line 404
    sget-object v1, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v2, "We are not in an existing notification window, openning a new one."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x1

    .line 410
    .local v0, resetVoiceConfig:Z
    :goto_0
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 411
    iput-object p2, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/home/ScreenOffService;->timelineItemNotifyTime:J

    .line 413
    invoke-direct {p0, v3}, Lcom/google/glass/home/ScreenOffService;->setRelativeLookUp(Z)V

    .line 414
    invoke-direct {p0, v0}, Lcom/google/glass/home/ScreenOffService;->startListeningForVoiceCommand(Z)V

    .line 417
    const-wide/16 v1, 0x1388

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/ScreenOffService;->scheduleWindowClose(J)V

    .line 418
    iput-boolean v3, p0, Lcom/google/glass/home/ScreenOffService;->isInNotificationWindow:Z

    .line 419
    return-void

    .line 407
    .end local v0           #resetVoiceConfig:Z
    :cond_0
    sget-object v1, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v2, "We are in an existing notification window, extending the current one."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x0

    .restart local v0       #resetVoiceConfig:Z
    goto :goto_0
.end method

.method private scheduleWindowClose(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    const/4 v1, 0x0

    .line 573
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->notificationWindowHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 574
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->notificationWindowHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 576
    return-void
.end method

.method private setRelativeLookUp(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/google/glass/home/ScreenOffService;->isRegisteredForRLU:Z

    if-ne p1, v0, :cond_1

    .line 227
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

    const-string v2, ", not sending request to platform."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_1
    return-void

    .line 227
    :cond_0
    const-string v0, "disabled"

    goto :goto_0

    .line 231
    :cond_1
    iput-boolean p1, p0, Lcom/google/glass/home/ScreenOffService;->isRegisteredForRLU:Z

    .line 232
    sget-object v0, Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;->RELATIVE_LOOK_UP:Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;

    invoke-virtual {v0}, Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/glass/util/HiddenApiHelper;->enableHeadGesture(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private shouldNotify()Z
    .locals 5

    .prologue
    .line 462
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

    .line 464
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

    .line 465
    return v0

    .line 462
    .end local v0           #notify:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showNotificationIfNeeded(Ljava/lang/String;)Z
    .locals 4
    .parameter "userEventAction"

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 478
    .local v1, shown:Z
    invoke-direct {p0}, Lcom/google/glass/home/ScreenOffService;->shouldNotify()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    sget-object v2, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v3, "Starting TimelineActivity."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v1, 0x1

    .line 481
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "item_id"

    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 483
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v2, :cond_0

    .line 484
    const-string v2, "bundle_item_id"

    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 487
    :cond_0
    const-string v2, "from_screen_off_notification"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 492
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/glass/home/ScreenOffService;->closeNotificationWindow(Z)V

    .line 493
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/logging/UserEventAction;->HOME_ACTIVATED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v2, v3, p1}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 498
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/home/ScreenOffService;->timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 499
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/glass/home/ScreenOffService;->timelineItemNotifyTime:J

    .line 501
    return v1
.end method

.method private startListeningForVoiceCommand(Z)V
    .locals 3
    .parameter "resetConfig"

    .prologue
    .line 436
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

    .line 437
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    iget-object v1, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceListener:Lcom/google/glass/voice/VoiceServiceListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setListener(Lcom/google/glass/voice/VoiceServiceListener;)V

    .line 439
    if-eqz p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfig;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setConfig(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "VoiceServiceBinder was null, cannot start listening for voice commands."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopListeningForVoiceCommand(Z)V
    .locals 3
    .parameter "resetConfig"

    .prologue
    .line 449
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

    .line 450
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    if-eqz v0, :cond_1

    .line 451
    if-eqz p1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setConfig(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setListener(Lcom/google/glass/voice/VoiceServiceListener;)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_1
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "VoiceServiceBinder was null, cannot stop listening for voice commands."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 547
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 552
    sget-object v0, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy called, this should only happen if the system is coming down."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->timelineUpdatedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 554
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->screenOffInputReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 555
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->donStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 556
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/ScreenOffService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 557
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 558
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 506
    iget-boolean v1, p0, Lcom/google/glass/home/ScreenOffService;->isStarted:Z

    if-nez v1, :cond_0

    .line 507
    iput-boolean v5, p0, Lcom/google/glass/home/ScreenOffService;->isStarted:Z

    .line 508
    sget-object v1, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v2, "Starting up."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v1, Lcom/google/glass/util/PowerHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/ScreenOffService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/home/ScreenOffService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 510
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 513
    iget-object v1, p0, Lcom/google/glass/home/ScreenOffService;->screenOffInputReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.google.glass.LOG_HEAD_GESTURE"

    aput-object v3, v2, v6

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "com.google.glass.action.TOUCH_GESTURE"

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    iget-object v1, p0, Lcom/google/glass/home/ScreenOffService;->timelineUpdatedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

    aput-object v3, v2, v6

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    iget-object v1, p0, Lcom/google/glass/home/ScreenOffService;->donStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.google.glass.action.DON_STATE"

    aput-object v3, v2, v6

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/voice/VoiceService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .local v0, voiceService:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/glass/home/ScreenOffService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 528
    iget-object v1, p0, Lcom/google/glass/home/ScreenOffService;->voiceServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v5}, Lcom/google/glass/home/ScreenOffService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 533
    .end local v0           #voiceService:Landroid/content/Intent;
    :goto_0
    return v5

    .line 530
    :cond_0
    sget-object v1, Lcom/google/glass/home/ScreenOffService;->TAG:Ljava/lang/String;

    const-string v2, "Already started, ignoring onStartCommand call."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
