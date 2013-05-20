.class Lcom/google/glass/home/timeline/TimelineNotificationFilter;
.super Ljava/lang/Object;
.source "TimelineNotificationFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_THRESHOLD:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private latestNotificationTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-class v0, Lcom/google/glass/home/timeline/TimelineNotificationFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/TimelineNotificationFilter;->TAG:Ljava/lang/String;

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/timeline/TimelineNotificationFilter;->NOTIFICATION_THRESHOLD:J

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationFilter;->latestNotificationTime:J

    .line 46
    return-void
.end method


# virtual methods
.method filter(Ljava/util/List;J)Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;
    .locals 15
    .parameter
    .parameter "batchTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;J)",
            "Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    const/4 v7, 0x0

    .line 80
    .local v7, itemToNotify:Lcom/google/googlex/glass/common/proto/TimelineItem;
    const/4 v4, 0x0

    .line 81
    .local v4, hasFutureNotification:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 82
    .local v2, currentTime:J
    const/4 v10, 0x0

    .line 84
    .local v10, numNotifications:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 85
    .local v6, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasNotification()Z

    move-result v11

    if-nez v11, :cond_1

    .line 86
    sget-object v11, Lcom/google/glass/home/timeline/TimelineNotificationFilter;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Item "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has no notification config."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/google/glass/home/timeline/TimelineNotificationService;->isFuture(J)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 90
    sget-object v11, Lcom/google/glass/home/timeline/TimelineNotificationFilter;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Item "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " asks for future notification."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v4, 0x1

    .line 92
    goto :goto_0

    .line 95
    :cond_2
    move-wide/from16 v0, p2

    invoke-virtual {p0, v6, v0, v1}, Lcom/google/glass/home/timeline/TimelineNotificationFilter;->getNotificationTime(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J

    move-result-wide v8

    .line 96
    .local v8, notificationTime:J
    sget-wide v11, Lcom/google/glass/home/timeline/TimelineNotificationFilter;->NOTIFICATION_THRESHOLD:J

    sub-long v11, v2, v11

    cmp-long v11, v8, v11

    if-lez v11, :cond_0

    iget-wide v11, p0, Lcom/google/glass/home/timeline/TimelineNotificationFilter;->latestNotificationTime:J

    cmp-long v11, v8, v11

    if-lez v11, :cond_0

    .line 98
    sget-object v11, Lcom/google/glass/home/timeline/TimelineNotificationFilter;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Item "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is getting notified because its notification time "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > latest notification time "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, p0, Lcom/google/glass/home/timeline/TimelineNotificationFilter;->latestNotificationTime:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    add-int/lit8 v10, v10, 0x1

    .line 101
    iput-wide v8, p0, Lcom/google/glass/home/timeline/TimelineNotificationFilter;->latestNotificationTime:J

    .line 102
    move-object v7, v6

    goto/16 :goto_0

    .line 105
    .end local v6           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v8           #notificationTime:J
    :cond_3
    new-instance v11, Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;

    invoke-direct {v11, v7, v4, v10}, Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;ZI)V

    return-object v11
.end method

.method getNotificationTime(Lcom/google/googlex/glass/common/proto/TimelineItem;J)J
    .locals 4
    .parameter "item"
    .parameter "batchTime"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 110
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v0

    .line 111
    .local v0, notificationTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 112
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineItem;)J

    move-result-wide v0

    .line 113
    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/TimelineNotificationService;->isFuture(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    move-wide v0, p2

    .line 117
    :cond_0
    return-wide v0
.end method
