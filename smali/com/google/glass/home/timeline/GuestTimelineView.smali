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

.method private createDatabaseAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLjava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .locals 9
    .parameter "activity"
    .parameter "bitmapFactory"
    .parameter "pinned"
    .parameter "descDisplayTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "ZZ",
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
    .local p5, loaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/Loader<Landroid/database/Cursor;>;>;"
    const/4 v4, 0x0

    .line 118
    new-instance v1, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/SettingsHelper;->getGuestModeToggleTime()J

    move-result-wide v7

    .line 121
    .local v7, guestModeToggleTime:J
    invoke-static {p1, p3, p4, v7, v8}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForGuestTimeline(Landroid/content/Context;ZZJ)Landroid/content/CursorLoader;

    move-result-object v6

    .line 123
    .local v6, cursorLoader:Landroid/content/CursorLoader;
    invoke-interface {p5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v3, Lcom/google/glass/home/timeline/GuestTimelineView$4;

    invoke-direct {v3, p0, p4}, Lcom/google/glass/home/timeline/GuestTimelineView$4;-><init>(Lcom/google/glass/home/timeline/GuestTimelineView;Z)V

    .line 141
    .local v3, cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;
    sget-object v1, Lcom/google/glass/home/timeline/GuestTimelineView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v6, v1, v3}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 144
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/timeline/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/TimelineItemLoader;ZZ)V

    .line 148
    .local v0, adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;
    new-instance v1, Lcom/google/glass/home/timeline/GuestTimelineView$5;

    invoke-direct {v1, p0, v0, p3, v3}, Lcom/google/glass/home/timeline/GuestTimelineView$5;-><init>(Lcom/google/glass/home/timeline/GuestTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;ZLcom/google/glass/home/timeline/database/TimelineCursorManager;)V

    return-object v1
.end method


# virtual methods
.method protected createActiveItemAdapter(Landroid/app/Activity;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .locals 3
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/active/ActiveItemAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/google/glass/home/timeline/GuestTimelineView$2;

    new-instance v1, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;-><init>(Landroid/app/Activity;Z)V

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

.method protected createTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLjava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .locals 3
    .parameter "activity"
    .parameter "bitmapFactory"
    .parameter "pinned"
    .parameter "descDisplayTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "ZZ",
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
    .line 84
    .local p5, loaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/Loader<Landroid/database/Cursor;>;>;"
    new-instance v1, Lcom/google/glass/home/timeline/GuestTimelineView$3;

    new-instance v2, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Z)V

    invoke-direct {v1, p0, v2}, Lcom/google/glass/home/timeline/GuestTimelineView$3;-><init>(Lcom/google/glass/home/timeline/GuestTimelineView;Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;)V

    .line 99
    .local v1, guestItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;>;"
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/home/timeline/GuestTimelineView;->createDatabaseAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLjava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    move-result-object v0

    .line 104
    .local v0, databaseAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;,"Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper<*>;"
    if-eqz p3, :cond_0

    .line 105
    new-instance v2, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;

    invoke-direct {v2, v1, v0}, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;-><init>(Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V

    .line 107
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;

    invoke-direct {v2, v0, v1}, Lcom/google/glass/home/timeline/TimelineView$CompositeAdapterWrapper;-><init>(Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V

    goto :goto_0
.end method
