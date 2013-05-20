.class public Lcom/google/glass/timeline/TimelineNotificationHelper;
.super Ljava/lang/Object;
.source "TimelineNotificationHelper.java"


# static fields
.field public static final ACTION_NOTIFY_TIMELINE_ITEM:Ljava/lang/String; = "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

.field public static final EXTRA_BUNDLE_ITEM_ID:Ljava/lang/String; = "bundle_item_id"

.field public static final EXTRA_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final EXTRA_NUM_NOTIFICATIONS:Ljava/lang/String; = "numNotifications"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;I)V
    .locals 2
    .parameter "context"
    .parameter "item"
    .parameter "numNotifications"

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineNotificationHelper$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/google/glass/timeline/TimelineNotificationHelper$1;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method
