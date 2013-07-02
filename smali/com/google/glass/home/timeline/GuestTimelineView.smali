.class public Lcom/google/glass/home/timeline/GuestTimelineView;
.super Lcom/google/glass/home/timeline/MainTimelineView;
.source "GuestTimelineView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/timeline/GuestTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/GuestTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/MainTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method private createDatabaseAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLcom/google/glass/home/timeline/NotificationState;Ljava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .locals 11
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
    .line 119
    .local p6, loaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/Loader<Landroid/database/Cursor;>;>;"
    new-instance v2, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v2, p1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/glass/util/SettingsHelper;->getGuestModeToggleTime()J

    move-result-wide v9

    .line 122
    .local v9, guestModeToggleTime:J
    invoke-static {p1, p3, p4, v9, v10}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForGuestTimeline(Landroid/content/Context;ZZJ)Landroid/content/CursorLoader;

    move-result-object v8

    .line 124
    .local v8, cursorLoader:Landroid/content/CursorLoader;
    move-object/from16 v0, p6

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v4, Lcom/google/glass/home/timeline/GuestTimelineView$4;

    invoke-direct {v4, p0, p4}, Lcom/google/glass/home/timeline/GuestTimelineView$4;-><init>(Lcom/google/glass/home/timeline/GuestTimelineView;Z)V

    .line 142
    .local v4, cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;
    sget-object v2, Lcom/google/glass/home/timeline/GuestTimelineView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v8, v2, v4}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 145
    new-instance v1, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/home/timeline/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/TimelineItemLoader;ZZLcom/google/glass/home/timeline/NotificationState;)V

    .line 149
    .local v1, adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;
    new-instance v2, Lcom/google/glass/home/timeline/GuestTimelineView$5;

    invoke-direct {v2, p0, v1, p3, v4}, Lcom/google/glass/home/timeline/GuestTimelineView$5;-><init>(Lcom/google/glass/home/timeline/GuestTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;ZLcom/google/glass/home/timeline/database/TimelineCursorManager;)V

    return-object v2
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
    .line 66
    new-instance v0, Lcom/google/glass/home/timeline/GuestTimelineView$2;

    new-instance v1, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, p2}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;-><init>(Landroid/app/Activity;ZLcom/google/glass/home/timeline/NotificationState;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/GuestTimelineView$2;-><init>(Lcom/google/glass/home/timeline/GuestTimelineView;Lcom/google/glass/home/timeline/active/ActiveItemAdapter;)V

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
    .line 48
    new-instance v0, Lcom/google/glass/home/timeline/GuestTimelineView$1;

    new-instance v1, Lcom/google/glass/home/timeline/active/GuestSettingsItemAdapter;

    invoke-direct {v1, p1}, Lcom/google/glass/home/timeline/active/GuestSettingsItemAdapter;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/home/timeline/GuestTimelineView$1;-><init>(Lcom/google/glass/home/timeline/GuestTimelineView;Landroid/widget/BaseAdapter;Landroid/app/Activity;)V

    return-object v0
.end method

.method protected createTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLcom/google/glass/home/timeline/NotificationState;Ljava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .locals 3
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
    .line 85
    .local p6, loaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/Loader<Landroid/database/Cursor;>;>;"
    new-instance v1, Lcom/google/glass/home/timeline/GuestTimelineView$3;

    new-instance v2, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Z)V

    invoke-direct {v1, p0, v2}, Lcom/google/glass/home/timeline/GuestTimelineView$3;-><init>(Lcom/google/glass/home/timeline/GuestTimelineView;Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;)V

    .line 100
    .local v1, guestItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;>;"
    invoke-direct/range {p0 .. p6}, Lcom/google/glass/home/timeline/GuestTimelineView;->createDatabaseAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLcom/google/glass/home/timeline/NotificationState;Ljava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    move-result-object v0

    .line 105
    .local v0, databaseAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    if-eqz p3, :cond_0

    .line 106
    new-instance v2, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;

    invoke-direct {v2, v1, v0}, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;-><init>(Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V

    .line 108
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;

    invoke-direct {v2, v0, v1}, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;-><init>(Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V

    goto :goto_0
.end method
