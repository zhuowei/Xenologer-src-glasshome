.class public Lcom/google/glass/home/timeline/UserTimelineView;
.super Lcom/google/glass/home/timeline/MainTimelineView;
.source "UserTimelineView.java"


# static fields
.field private static final MIN_QUERY_PARAM_TIME_DELTA:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/home/timeline/UserTimelineView;->MIN_QUERY_PARAM_TIME_DELTA:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/timeline/UserTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/UserTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/MainTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcom/google/glass/home/timeline/UserTimelineView;->MIN_QUERY_PARAM_TIME_DELTA:J

    return-wide v0
.end method


# virtual methods
.method protected createActiveItemAdapter(Landroid/app/Activity;Lcom/google/glass/home/timeline/NotificationState;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .locals 3
    .parameter "activity"
    .parameter "notificationState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/glass/home/timeline/NotificationState;",
            ")",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/active/ActiveItemAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/google/glass/home/timeline/UserTimelineView$2;

    new-instance v1, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;-><init>(Landroid/app/Activity;ZLcom/google/glass/home/timeline/NotificationState;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/UserTimelineView$2;-><init>(Lcom/google/glass/home/timeline/UserTimelineView;Lcom/google/glass/home/timeline/active/ActiveItemAdapter;)V

    return-object v0
.end method

.method protected createSettingsAdapter(Landroid/app/Activity;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .locals 2
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/google/glass/home/timeline/UserTimelineView$1;

    new-instance v1, Lcom/google/glass/home/timeline/active/SettingsItemAdapter;

    invoke-direct {v1, p1}, Lcom/google/glass/home/timeline/active/SettingsItemAdapter;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/home/timeline/UserTimelineView$1;-><init>(Lcom/google/glass/home/timeline/UserTimelineView;Lcom/google/glass/home/timeline/active/SettingsItemAdapter;Landroid/app/Activity;)V

    return-object v0
.end method

.method protected createTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLcom/google/glass/home/timeline/NotificationState;Ljava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .locals 12
    .parameter "activity"
    .parameter "bitmapFactory"
    .parameter "pinned"
    .parameter "descDisplayTime"
    .parameter "notificationState"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "ZZ",
            "Lcom/google/glass/home/timeline/NotificationState;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;>;)",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p6, loaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/Loader<Landroid/database/Cursor;>;>;"
    invoke-static {p3}, Lcom/google/glass/home/timeline/UserTimelineView;->getMaxItemTimestamp(Z)J

    move-result-wide v2

    const/4 v6, 0x0

    move-object v1, p1

    move v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForTimeline(Landroid/content/Context;JZZLcom/google/googlex/glass/common/proto/Entity;)Landroid/content/CursorLoader;

    move-result-object v10

    .line 93
    .local v10, cursorLoader:Landroid/content/CursorLoader;
    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v11, onLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    new-instance v4, Lcom/google/glass/home/timeline/UserTimelineView$3;

    move/from16 v0, p4

    invoke-direct {v4, p0, v0, v11}, Lcom/google/glass/home/timeline/UserTimelineView$3;-><init>(Lcom/google/glass/home/timeline/UserTimelineView;ZLjava/util/List;)V

    .line 120
    .local v4, cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;
    sget-object v2, Lcom/google/glass/home/timeline/UserTimelineView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v10, v2, v4}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 123
    new-instance v1, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/home/timeline/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/TimelineItemLoader;ZZLcom/google/glass/home/timeline/NotificationState;)V

    .line 126
    .local v1, adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;
    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/UserTimelineView;->createRemainingContentListener(Lcom/google/glass/home/timeline/TimelineItemAdapter;)V

    .line 129
    new-instance v5, Lcom/google/glass/home/timeline/UserTimelineView$4;

    move-object v6, p0

    move-object v7, v1

    move v8, p3

    move-object v9, v4

    invoke-direct/range {v5 .. v11}, Lcom/google/glass/home/timeline/UserTimelineView$4;-><init>(Lcom/google/glass/home/timeline/UserTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;ZLcom/google/glass/home/timeline/database/TimelineCursorManager;Landroid/content/CursorLoader;Ljava/util/List;)V

    return-object v5
.end method
