.class public Lcom/google/glass/home/timeline/TimelineNotificationService;
.super Landroid/app/IntentService;
.source "TimelineNotificationService.java"


# static fields
.field public static final EXTRA_NOTIFY_TIME:Ljava/lang/String; = "NOTIFY_TIME"

.field public static final FUTURE_NOTIFICATION_TIME_MS:J = 0x2710L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/home/timeline/TimelineNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/TimelineNotificationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/glass/home/timeline/TimelineNotificationService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static isFuture(J)Z
    .locals 4
    .parameter "timeMs"

    .prologue
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleNext(J)V
    .locals 9
    .parameter "nextNotifyTime"

    .prologue
    .line 50
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/glass/home/timeline/TimelineNotificationService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "NOTIFY_TIME"

    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 57
    .local v2, pending:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/TimelineNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 60
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 62
    sget-object v3, Lcom/google/glass/home/timeline/TimelineNotificationService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schedule notification checking in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, p1, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 70
    const-string v8, "NOTIFY_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 71
    .local v5, minDeliveryTime:J
    sget-object v8, Lcom/google/glass/home/timeline/TimelineNotificationService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Running with minDeliveryTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 75
    .local v4, itemToNotify:Lcom/google/googlex/glass/common/proto/TimelineItem;
    const/4 v7, 0x0

    .line 77
    .local v7, nextItemToCheck:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :try_start_0
    invoke-static {p0, v5, v6}, Lcom/google/glass/timeline/TimelineHelper;->queryItemsByDeliveryTime(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v1

    .line 78
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v7, :cond_1

    .line 80
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 81
    .local v0, current:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v2

    .line 82
    .local v2, deliverTime:J
    invoke-static {v2, v3}, Lcom/google/glass/home/timeline/TimelineNotificationService;->isFuture(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 83
    move-object v4, v0

    goto :goto_0

    .line 85
    :cond_0
    move-object v7, v0

    goto :goto_0

    .line 89
    .end local v0           #current:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v2           #deliverTime:J
    :cond_1
    if-eqz v1, :cond_2

    .line 90
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_2
    if-eqz v4, :cond_3

    .line 95
    const/4 v8, 0x1

    invoke-static {p0, v4, v8}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;I)V

    .line 97
    :cond_3
    if-eqz v7, :cond_4

    .line 98
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/google/glass/home/timeline/TimelineNotificationService;->scheduleNext(J)V

    .line 100
    :cond_4
    return-void

    .line 89
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_5

    .line 90
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v8
.end method
