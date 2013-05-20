.class public Lcom/google/glass/home/timeline/TimelineNotificationManager;
.super Ljava/lang/Object;
.source "TimelineNotificationManager.java"


# static fields
.field private static notificationManager:Lcom/google/glass/home/timeline/TimelineNotificationManager;


# instance fields
.field private final application:Lcom/google/glass/home/HomeApplication;

.field private final filter:Lcom/google/glass/home/timeline/TimelineNotificationFilter;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineNotificationManager;->application:Lcom/google/glass/home/HomeApplication;

    .line 33
    new-instance v0, Lcom/google/glass/home/timeline/TimelineNotificationFilter;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/TimelineNotificationFilter;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationManager;->filter:Lcom/google/glass/home/timeline/TimelineNotificationFilter;

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/google/glass/home/timeline/TimelineNotificationManager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/home/timeline/TimelineNotificationManager;->notificationManager:Lcom/google/glass/home/timeline/TimelineNotificationManager;

    return-object v0
.end method

.method public static initialize(Lcom/google/glass/home/HomeApplication;)V
    .locals 2
    .parameter "application"

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/home/timeline/TimelineNotificationManager;->notificationManager:Lcom/google/glass/home/timeline/TimelineNotificationManager;

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a NotificationManager created!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    new-instance v0, Lcom/google/glass/home/timeline/TimelineNotificationManager;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/TimelineNotificationManager;-><init>(Lcom/google/glass/home/HomeApplication;)V

    sput-object v0, Lcom/google/glass/home/timeline/TimelineNotificationManager;->notificationManager:Lcom/google/glass/home/timeline/TimelineNotificationManager;

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/home/timeline/TimelineNotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/home/HomeApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    return-void
.end method

.method private loadAttachments(Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 82
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineNotificationManager;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/glass/util/CachedBitmapFactory;->decodeAttachment(Lcom/google/googlex/glass/common/proto/Attachment;Z)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 84
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_0
    return-void
.end method


# virtual methods
.method public processNotifications(Ljava/util/List;J)V
    .locals 6
    .parameter
    .parameter "batchTimeMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineItem;>;"
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineNotificationManager;->filter:Lcom/google/glass/home/timeline/TimelineNotificationFilter;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/glass/home/timeline/TimelineNotificationFilter;->filter(Ljava/util/List;J)Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;

    move-result-object v1

    .line 62
    .local v1, result:Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;
    invoke-virtual {v1}, Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;->getItemToNotify()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 63
    .local v0, itemToNotify:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 65
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineNotificationManager;->loadAttachments(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineNotificationManager;->application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;->getNumNotifications()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;I)V

    .line 70
    :cond_1
    invoke-virtual {v1}, Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;->hasFutureNotification()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineNotificationManager;->application:Lcom/google/glass/home/HomeApplication;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineNotificationManager;->application:Lcom/google/glass/home/HomeApplication;

    const-class v5, Lcom/google/glass/home/timeline/TimelineNotificationService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/home/HomeApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    :cond_2
    return-void
.end method
