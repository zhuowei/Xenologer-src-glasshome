.class public Lcom/google/glass/home/timeline/EntityFilteredTimelineView;
.super Lcom/google/glass/home/timeline/TimelineView;
.source "EntityFilteredTimelineView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final filterEntity:Lcom/google/googlex/glass/common/proto/Entity;

.field private final filterEntityBitmap:Landroid/graphics/Bitmap;

.field private historicalTimelineItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/TimelineItemAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private homeTimelineItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "context"
    .parameter "filterEntity"
    .parameter "filterEntityBitmap"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineView;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/google/glass/util/CustomItemIdGenerator;

    const-string v1, "filteredEntity"

    invoke-direct {v0, v1}, Lcom/google/glass/util/CustomItemIdGenerator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    .line 40
    iput-object p2, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->filterEntity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 41
    iput-object p3, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->filterEntityBitmap:Landroid/graphics/Bitmap;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/EntityFilteredTimelineView;)Lcom/google/glass/util/CustomItemIdGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    return-object v0
.end method


# virtual methods
.method protected createHistoricalTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/NotificationState;Ljava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .locals 9
    .parameter "activity"
    .parameter "bitmapFactory"
    .parameter "notificationState"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/home/timeline/NotificationState;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;>;)",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/TimelineItemAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p4, loaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/Loader<Landroid/database/Cursor;>;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->getMaxItemTimestamp(Z)J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->filterEntity:Lcom/google/googlex/glass/common/proto/Entity;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForTimeline(Landroid/content/Context;JZZLcom/google/googlex/glass/common/proto/Entity;)Landroid/content/CursorLoader;

    move-result-object v7

    .line 62
    .local v7, cursorLoader:Landroid/content/CursorLoader;
    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v8, onLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    new-instance v1, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$1;-><init>(Lcom/google/glass/home/timeline/EntityFilteredTimelineView;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v3, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$2;

    const/4 v1, 0x1

    invoke-direct {v3, p0, v1, v8}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$2;-><init>(Lcom/google/glass/home/timeline/EntityFilteredTimelineView;ZLjava/util/List;)V

    .line 87
    .local v3, cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;
    sget-object v1, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v7, v1, v3}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 90
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/home/timeline/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/TimelineItemLoader;ZZLcom/google/glass/home/timeline/NotificationState;)V

    .line 93
    .local v0, adapter:Lcom/google/glass/home/timeline/TimelineItemAdapter;
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->createRemainingContentListener(Lcom/google/glass/home/timeline/TimelineItemAdapter;)V

    .line 96
    new-instance v1, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$3;

    invoke-direct {v1, p0, v0, v3, v8}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$3;-><init>(Lcom/google/glass/home/timeline/EntityFilteredTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/database/TimelineCursorManager;Ljava/util/List;)V

    return-object v1
.end method

.method protected createHomeAdapter(Landroid/app/Activity;Lcom/google/googlex/glass/common/proto/Entity;Landroid/graphics/Bitmap;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
    .locals 3
    .parameter "activity"
    .parameter "entity"
    .parameter "existingImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
            "<",
            "Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$4;

    new-instance v1, Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;

    iget-object v2, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;-><init>(Landroid/app/Activity;Lcom/google/glass/util/CustomItemIdGenerator;Lcom/google/googlex/glass/common/proto/Entity;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$4;-><init>(Lcom/google/glass/home/timeline/EntityFilteredTimelineView;Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;)V

    return-object v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/NotificationState;)Ljava/util/List;
    .locals 4
    .parameter "activity"
    .parameter "bitmapFactory"
    .parameter "notificationState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/home/timeline/NotificationState;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/TimelineView;->init(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/NotificationState;)Ljava/util/List;

    move-result-object v0

    .line 49
    .local v0, loaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/Loader<Landroid/database/Cursor;>;>;"
    iget-object v1, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->filterEntity:Lcom/google/googlex/glass/common/proto/Entity;

    iget-object v2, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->filterEntityBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->createHomeAdapter(Landroid/app/Activity;Lcom/google/googlex/glass/common/proto/Entity;Landroid/graphics/Bitmap;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->homeTimelineItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 50
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->createHistoricalTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/NotificationState;Ljava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->historicalTimelineItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    .line 52
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->homeTimelineItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->historicalTimelineItemAdapter:Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->setAdapters([Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;)V

    .line 53
    return-object v0
.end method
